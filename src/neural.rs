use crate::dado_papete::DadoPapete;
use crate::movimento::Movimento;
use crate::previsor::Previsor;

use tch::{
    nn,
    nn::OptimizerConfig,
    nn::{Module, VarStore},
    Tensor,
};

#[derive(Debug)]
pub struct Neural {
    vs: VarStore,
    layers: [nn::Linear; 4],
}

impl Neural {
    pub fn new() -> Self {
        let vs = nn::VarStore::new(tch::Device::Cpu);
        let r = &vs.root();
        let layers = [
            nn::linear(r, 3, 30, Default::default()),
            nn::linear(r, 30, 30, Default::default()),
            nn::linear(r, 30, 30, Default::default()),
            nn::linear(r, 30, 5, Default::default()),
        ];

        Self { vs, layers }
    }

    pub fn treinar_de_dataset(&mut self, dataset: &[DadoPapete]) {
        let entradas: Vec<_> = dataset
            .iter()
            .map(|x| Vec::from(x.array_normalizado()))
            .flatten()
            .collect();
        let saidas_esperadas: Vec<f32> = dataset
            .iter()
            .map(|x| Vec::from(x.movimento.unwrap().como_entrada_nn()))
            .flatten()
            .collect();

        let entradas = Tensor::of_slice(&entradas)
            .reshape(&[dataset.len() as i64, 3])
            .to_kind(tch::Kind::Float);
        let saidas_esperadas =
            Tensor::of_slice(&saidas_esperadas).reshape(&[dataset.len() as i64, 5]);

        let mut opt = nn::Adam::default().build(&self.vs, 1e-3).unwrap();

        println!("Treinando...");
        for _ in 0..8000 {
            let loss = self
                .forward(&entradas)
                .mse_loss(&saidas_esperadas, tch::Reduction::Mean);

            opt.backward_step(&loss);
        }
    }

    pub fn obter_saida(&mut self, input_tensor: &[f32; 3]) -> [f32; 5] {
        let input = Tensor::of_slice(input_tensor)
            .reshape(&[1, 3])
            .to_kind(tch::Kind::Float);
        let output = self.forward(&input);
        let output = output.get(0);
        [
            output.double_value(&[0]) as f32,
            output.double_value(&[1]) as f32,
            output.double_value(&[2]) as f32,
            output.double_value(&[3]) as f32,
            output.double_value(&[4]) as f32,
        ]
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

impl Previsor for Neural {
    fn calcular_de_dataset(dataset: &[DadoPapete]) -> Result<Self, Box<dyn std::error::Error>> {
        let mut n = Neural::new();
        n.treinar_de_dataset(dataset);
        Ok(n)
    }
    fn carregar(endereco: &str) -> Result<Self,Box<dyn std::error::Error>> {
        let mut n = Neural::new();
        n.vs.load(endereco)?;
        Ok(n)
    }
    fn salvar(&self, endereco: &str) -> Result<(), Box<dyn std::error::Error>>{
        self.vs.save(endereco)?;
        Ok(())
    }

    fn prever(&mut self, entrada: DadoPapete) -> Movimento {
        let index_max = self
            .obter_saida(&entrada.array_normalizado())
            .iter()
            .enumerate()
            .fold(
                (0, 0.0),
                |max, (ind, &val)| if val > max.1 { (ind, val) } else { max },
            )
            .0;

        Movimento::try_from(index_max as i32).unwrap()
    }
    fn prever_batch(&mut self, entrada: &[DadoPapete]) -> Vec<Movimento> {
        entrada.iter().map(|e| self.prever(*e)).collect()
    }
    fn transferir(&mut self, dataset: &[DadoPapete]) {
        let entradas: Vec<_> = dataset
            .iter()
            .map(|x| Vec::from(x.array_normalizado()))
            .flatten()
            .collect();
        let saidas_esperadas: Vec<f32> = dataset
            .iter()
            .map(|x| Vec::from(x.movimento.unwrap().como_entrada_nn()))
            .flatten()
            .collect();

        let entradas = Tensor::of_slice(&entradas)
            .reshape(&[dataset.len() as i64, 3])
            .to_kind(tch::Kind::Float);
        let saidas_esperadas =
            Tensor::of_slice(&saidas_esperadas).reshape(&[dataset.len() as i64, 5]);

        let mut opt = nn::Adam::default().build(&self.vs, 1e-3).unwrap();

        let c0 = (self.layers[0].ws.copy(),self.layers[0].bs.copy());
        let c1 = (self.layers[1].ws.copy(),self.layers[1].bs.copy());

        println!("Transferindo...");
        for _ in 0..5000 {
            let loss = self
                .forward(&entradas)
                .mse_loss(&saidas_esperadas, tch::Reduction::Mean);

            opt.backward_step(&loss);
            
            //volta ao q era antes
            self.layers[0].ws = c0.0.copy();
            self.layers[0].bs = c0.1.copy();
            
            self.layers[1].ws = c1.0.copy();
            self.layers[1].bs = c1.1.copy();
        }

    }
}
