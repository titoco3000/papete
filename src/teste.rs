use tch::{nn, nn::Module, nn::OptimizerConfig, Tensor};

use crate::csv_helper;

#[derive(Debug)]
struct Neural {
    layers: [nn::Linear;4]
}

impl Neural {
    fn new(vs: &nn::Path) -> Self {
        let layers = [
            nn::linear(vs, 3, 30, Default::default()),
            nn::linear(vs, 30, 30, Default::default()),
            nn::linear(vs, 30, 30, Default::default()),
            nn::linear(vs, 30, 5, Default::default()),
        ];
        
        Self { layers }
    }
}

impl Module for Neural {
    fn forward(&self, xs: &Tensor) -> Tensor {
        let mut x = xs.apply(&self.layers[0]).sigmoid();
        x = x.apply(&self.layers[1]).sigmoid();
        x = x.apply(&self.layers[2]).sigmoid();
        x.apply(&self.layers[3]).sigmoid()
    }
}

pub fn teste(){
    let vs = nn::VarStore::new(tch::Device::Cpu);
    let net = Neural::new(&vs.root());

    let dataset = csv_helper::carregar_dados("papete.csv").expect("Não pode abrir arquivo");
    let train_input: Vec<_> = dataset
            .iter()
            .map(|x| Vec::from(x.array_normalizado()))
            .flatten()
            .collect();
    let train_output:Vec<f32> = dataset
        .iter()
        .map(|x| Vec::from(x.movimento.unwrap().como_entrada_nn()))
        .flatten()
        .collect();

    let target = Tensor::of_slice(&train_output).reshape(&[dataset.len() as i64, 5]);
    let input = Tensor::of_slice(&train_input)
        .reshape(&[dataset.len() as i64, 3])
        .to_kind(tch::Kind::Float);

    let mut opt = nn::Adam::default().build(&vs, 1e-3).unwrap();

    println!("Treinando...");
    for _ in 0..10000 {
        let loss = net
            .forward(&input)
            .mse_loss(&target, tch::Reduction::Mean);
        
        opt.backward_step(&loss);
    }

    let output = net.forward(&input);
    let predicted = output.round();
    predicted.print();
}