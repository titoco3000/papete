mod arvore;
mod avaliacao;
mod conexao;
mod csv_helper;
mod dado_papete;
mod movimento;
mod neural;
#[allow(dead_code)]
mod papete;
mod previsor;

extern crate rand;
extern crate tensorflow;

fn main() {
    main_holder::main();
}

//para evitar warnings chatos
mod main_holder {
    use crate::{
        arvore::Arvore, avaliacao, movimento::Movimento, neural::Neural, papete::Papete,
        previsor::Previsor,
    };
    use std::{
        io::{self, Write},
        thread, time,
    };

    fn teste_serial() {
        let intervalo = time::Duration::from_millis(50);
        let mut papete = Papete::new();
        papete.ativar_modo_conexao_imediata(2);
        println!("Procurando papetes...");
        while papete.obter_conexoes().len() < 1 {
            thread::sleep(intervalo);
        }
        println!("Encontradas!");
        loop {
            let dados = papete.obter_dados();
            if dados.0.is_some() {
                print!("{}\t", dados.0.unwrap());
            }
            if dados.1.is_some() {
                print!("{}", dados.1.unwrap());
            }
            println!("");
        }
    }

    fn coleta(papetes: usize) {
        let intervalo = time::Duration::from_millis(80);

        let mut papete = Papete::new();
        papete.ativar_modo_conexao_imediata(papetes);
        println!("Procurando papetes...");
        while papete.obter_conexoes().len() < papetes {
            thread::sleep(intervalo);
        }
        thread::sleep(time::Duration::from_secs(1));
        println!("Encontradas!");
        papete.iniciar_sessao(500);

        for rodada in 1..6 {
            println!("{}/5", rodada);
            for movimento in [
                Movimento::Repouso,
                Movimento::Dorsiflexao,
                Movimento::Flexao,
                Movimento::Eversao,
                Movimento::Inversao,
            ] {
                println!("{:?}", papete.obter_conexoes());
                println!("{}: {}", movimento.str_completa(), movimento.descricao());
                //aguarda input qqr
                io::stdin().read_line(&mut String::new()).unwrap();
                for _ in 0..10 {
                    if papete.obter_conexoes().len() < papetes {
                        println!("Papete desconectou");
                        while papete.obter_conexoes().len() < papetes {
                            thread::sleep(intervalo);
                        }
                    }
                    papete.registrar(movimento);
                    print!(".");
                    io::stdout().flush().unwrap();
                    thread::sleep(intervalo);
                }
                println!("");
                //println!("{:?}",papete.registrados);
            }
        }
        papete.salvar("papete.csv").unwrap();
    }

    fn teste_arvore() {
        let intervalo = time::Duration::from_millis(50);

        Arvore::calcular_de_dataset_addr("papete.csv")
            .salvar("arvore.JSON")
            .expect("Erro ao salvar arvore");
        let mut papete = Papete::new();
        papete.ativar_modo_conexao_imediata(1);
        print!("Procurando papetes...  ");
        while papete.obter_conexoes().len() < 1 {
            thread::sleep(intervalo);
        }
        thread::sleep(time::Duration::from_secs(1));
        println!("Encontradas!");
        papete.iniciar_sessao(0);

        loop {
            println!("{}", papete.obter_movimento());
            thread::sleep(intervalo);
        }
    }

    fn aval_arvore() {
        avaliacao::teste_10_pastas::<Arvore>();
    }

    fn teste_neural() {
        use tensorflow::{Graph, SavedModelBundle, SessionOptions, SessionRunArgs, Tensor};

        //Sigmatures declared when we saved the model
        let train_input_parameter_input_name = "training_input";
        let train_input_parameter_target_name = "training_target";

        //Names of output nodes of the graph, retrieved with the saved_model_cli command
        let train_output_parameter_name = "output_0";

        //Create some tensors to feed to the model for training, one as input and one as the target value
        //Note: All tensors must be declared before args!
        let input_tensor: Tensor<f32> = Tensor::new(&[2, 3])
            .with_values(&[1.0, 1.0, 0.0, 0.0, 0.0, 0.0])
            .unwrap();
        let target_tensor: Tensor<f32> = Tensor::new(&[2, 5])
            .with_values(&[0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0])
            .unwrap();

        //Path of the saved model
        let save_dir = "custom_model";

        //Create a graph
        let mut graph = Graph::new();

        //Load save model as graph
        let bundle =
            SavedModelBundle::load(&SessionOptions::new(), &["serve"], &mut graph, save_dir)
                .expect("Can't load saved model");

        //Initiate a session
        let session = &bundle.session;

        //Alternative to saved_model_cli. This will list all signatures in the console when run
        // let sigs = bundle.meta_graph_def().signatures();
        // println!("{:#?}", sigs);

        //Retrieve the train functions signature
        let signature_train = bundle.meta_graph_def().get_signature("train").unwrap();

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
        let input_op_train = graph
            .operation_by_name_required(&input_info_train.name().name)
            .unwrap();
        let target_op_train = graph
            .operation_by_name_required(&target_info_train.name().name)
            .unwrap();

        //Output operation
        let output_op_train = graph
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

        println!("Prevendo para input {:?}", input_tensor);

        let pred_input_parameter_name = "inputs";
        let pred_output_parameter_name = "output_0";

        let session = &bundle.session;

        //The values will be fed to and retrieved from the model with this
        let mut args = SessionRunArgs::new();

        //Retrieve the pred functions signature
        let signature_train = bundle.meta_graph_def().get_signature("pred").unwrap();

        //
        let input_info_pred = signature_train
            .get_input(pred_input_parameter_name)
            .unwrap();

        //
        let output_info_pred = signature_train
            .get_output(pred_output_parameter_name)
            .unwrap();

        //
        let input_op_pred = graph
            .operation_by_name_required(&input_info_pred.name().name)
            .unwrap();

        //
        let output_op_pred = graph
            .operation_by_name_required(&output_info_pred.name().name)
            .unwrap();

        args.add_feed(&input_op_pred, 0, &input_tensor);

        let out = args.request_fetch(&output_op_pred, 0);

        //Run the session
        session
            .run(&mut args)
            .expect("Error occurred during calculations");

        let prediction: &[f32] = &args.fetch(out).unwrap();

        println!("Prediction: {:?}\n", prediction);
    }

    fn aval_neural() {
        avaliacao::teste_simples::<Neural>();
    }
    pub fn main() {
        let args: Vec<String> = std::env::args().collect();
        if args.len() == 1 {
            teste_serial();
        } else {
            if args[1] == "coleta" {
                let num = args.get(2).map(String::as_str).unwrap_or("1");
                let num = if num == "1" { 1 } else { 2 };
                coleta(num);
            } else if args[1] == "teste" {
                let outro_arg = args.get(2).map(String::as_str).unwrap_or("arvore");
                if outro_arg == "arvore" {
                    teste_arvore();
                }
                if outro_arg == "neural" {
                    teste_neural();
                } else {
                    println!("argumento não reconhecido");
                }
            } else if args[1].starts_with("aval") {
                let outro_arg = args.get(2).map(String::as_str).unwrap_or("arvore");
                if outro_arg == "arvore" {
                    aval_arvore();
                }
                if outro_arg == "neural" {
                    aval_neural();
                } else {
                    println!("argumento não reconhecido");
                }
            } else {
                println!("argumento não reconhecido");
            }
        }
    }
}
