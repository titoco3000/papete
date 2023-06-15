use crate::dado_papete::DadoPapete;
use crate::movimento::Movimento;
use crate::previsor::Previsor;

use tensorflow::{Graph, SavedModelBundle, SessionOptions, SessionRunArgs, Tensor};

pub struct Neural {
    graph: Graph,
    bundle: SavedModelBundle,
}

impl Neural {
    pub fn new() -> Neural {
        //Create a graph
        let mut graph = Graph::new();

        //Load save model as graph
        let bundle = SavedModelBundle::load(
            &SessionOptions::new(),
            &["serve"],
            &mut graph,
            &"custom_model",
        )
        .expect("Can't load saved model");

        Neural { graph, bundle }
    }
    pub fn treinar_de_dataset(&mut self, dataset: &[DadoPapete]) {
        //Sigmatures declared when we saved the model
        let train_input_parameter_input_name = "training_input";
        let train_input_parameter_target_name = "training_target";

        //Names of output nodes of the graph, retrieved with the saved_model_cli command
        let train_output_parameter_name = "output_0";

        //Create some tensors to feed to the model for training, one as input and one as the target value
        //Note: All tensors must be declared before args!
        let achatado: Vec<_> = dataset
            .into_iter()
            .map(|x| Vec::from(x.array_normalizado()))
            .flatten()
            .collect();
        let input_tensor: Tensor<f32> = Tensor::new(&[dataset.len() as u64, 3])
            .with_values(&achatado)
            .unwrap();

        let achatado: Vec<_> = dataset
            .into_iter()
            .map(|x| Vec::from(x.movimento.unwrap().como_entrada_nn()))
            .flatten()
            .collect();
        let target_tensor: Tensor<f32> = Tensor::new(&[dataset.len() as u64, 5])
            .with_values(&achatado)
            .unwrap();

        //Initiate a session
        let session = &self.bundle.session;

        //Alternative to saved_model_cli. This will list all signatures in the console when run
        // let sigs = bundle.meta_graph_def().signatures();
        // println!("{:#?}", sigs);

        //Retrieve the train functions signature
        let signature_train = self.bundle.meta_graph_def().get_signature("train").unwrap();

        //Input information
        let input_info_train = signature_train
            .get_input(train_input_parameter_input_name)
            .unwrap();
        let target_info_train = signature_train
            .get_input(train_input_parameter_target_name)
            .unwrap();

        //Output information
        let output_info_train = signature_train
            .get_output(train_output_parameter_name)
            .unwrap();

        //Input operation
        let input_op_train = self
            .graph
            .operation_by_name_required(&input_info_train.name().name)
            .unwrap();
        let target_op_train = self
            .graph
            .operation_by_name_required(&target_info_train.name().name)
            .unwrap();

        //Output operation
        let output_op_train = self
            .graph
            .operation_by_name_required(&output_info_train.name().name)
            .unwrap();

        //The values will be fed to and retrieved from the model with this
        let mut args = SessionRunArgs::new();

        //Feed the tensors into the graph
        args.add_feed(&input_op_train, 0, &input_tensor);
        args.add_feed(&target_op_train, 0, &target_tensor);

        //Fetch result from graph
        let out = args.request_fetch(&output_op_train, 0);

        //Run the session
        session
            .run(&mut args)
            .expect("Error occurred during calculations");

        //Retrieve the result of the operation
        let loss: f32 = args.fetch(out).unwrap()[0];

        println!("Loss: {:?}", loss);
    }

    pub fn obter_saida(&mut self, input_tensor: Tensor<f32>) -> Vec<[f32; 5]> {
        println!("Prevendo para input {:?}", input_tensor);

        let pred_input_parameter_name = "inputs";
        let pred_output_parameter_name = "output_0";

        let session = &self.bundle.session;

        //The values will be fed to and retrieved from the model with this
        let mut args = SessionRunArgs::new();

        //Retrieve the pred functions signature
        let signature_train = self.bundle.meta_graph_def().get_signature("pred").unwrap();

        //
        let input_info_pred = signature_train
            .get_input(pred_input_parameter_name)
            .unwrap();

        //
        let output_info_pred = signature_train
            .get_output(pred_output_parameter_name)
            .unwrap();

        //
        let input_op_pred = self
            .graph
            .operation_by_name_required(&input_info_pred.name().name)
            .unwrap();

        //
        let output_op_pred = self
            .graph
            .operation_by_name_required(&output_info_pred.name().name)
            .unwrap();

        args.add_feed(&input_op_pred, 0, &input_tensor);

        let out = args.request_fetch(&output_op_pred, 0);

        //Run the session
        session
            .run(&mut args)
            .expect("Error occurred during calculations");

        let prediction: &[f32] = &args.fetch(out).unwrap();
        let qtd_previsoes = prediction.len() / 5;
        let mut saida = Vec::with_capacity(qtd_previsoes);
        for i in 0..qtd_previsoes {
            let sum = prediction[i]
                + prediction[i + 1]
                + prediction[i + 2]
                + prediction[i + 3]
                + prediction[i + 4];
            println!("saida raw: {:?}", &prediction[i..i + 5]);
            saida.push([
                prediction[i] / sum,
                prediction[i + 1] / sum,
                prediction[i + 2] / sum,
                prediction[i + 3] / sum,
                prediction[i + 4] / sum,
            ]);
        }
        saida
    }
}

impl Previsor for Neural {
    fn calcular_de_dataset(dataset: &[DadoPapete]) -> Self {
        let mut n = Neural::new();
        n.treinar_de_dataset(dataset);
        n
    }
    fn prever(&mut self, entrada: DadoPapete) -> Movimento {
        self.prever_batch(&[entrada])[0]
    }
    fn prever_batch(&mut self, entrada: &[DadoPapete]) -> Vec<Movimento> {
        let achatado: Vec<_> = entrada
            .into_iter()
            .map(|x| Vec::from(x.array_normalizado()))
            .flatten()
            .collect();
        println!(
            "\nVou criar um tensor a partir com entrada de len {} e {} dados total\n",
            entrada.len(),
            achatado.len()
        );
        let tensor = Tensor::new(&[entrada.len() as u64, 3])
            .with_values(&achatado)
            .unwrap();
        let nn_out = self.obter_saida(tensor);
        nn_out
            .iter()
            .map(|x| {
                Movimento::try_from(
                    x.iter()
                        .enumerate()
                        .fold(
                            (0, 0.0),
                            |max, (ind, &val)| if val > max.1 { (ind, val) } else { max },
                        )
                        .0 as i32,
                )
                .unwrap()
            })
            .collect()
    }
}
