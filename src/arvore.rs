use crate::dado_papete::DadoPapete;
use crate::movimento::Movimento;
use crate::previsor::Previsor;

use rustlearn::multiclass::OneVsRestWrapper;
use rustlearn::prelude::*;
use rustlearn::trees::decision_tree::{DecisionTree, Hyperparameters};

pub struct Arvore(OneVsRestWrapper<DecisionTree>);

impl Previsor for Arvore {
    fn calcular_de_dataset(dataset: &[DadoPapete]) -> Result<Self, Box<dyn std::error::Error>> {
        let mut model = Hyperparameters::new(3)
            .min_samples_split(5)
            .max_depth(40)
            .one_vs_rest();

        let entradas: Vec<Vec<f32>> = dataset
            .iter()
            .map(|x| Vec::from(x.array_normalizado()))
            .collect();
        let entradas = Array::from(&entradas);

        let saidas: Vec<f32> = dataset
            .iter()
            .map(|x| x.movimento.unwrap().as_f32())
            .collect();
        let saidas = Array::from(saidas);

        model.fit(&entradas, &saidas).unwrap();
        Ok(Arvore(model))
    }
    fn carregar(endereco: &str) -> Result<Self, Box<dyn std::error::Error>>
        where
            Self: Sized {
                if let Ok(contents) = std::fs::read_to_string(endereco) {
                    match serde_json::from_str(&contents) {
                        Ok(r) => return Ok(Arvore(r)),
                        Err(_) => simple_error::bail!("Falha ao interpretar JSON"),
                    }
                }
                simple_error::bail!("Falha ao abrir o arquivo")
    }
    fn prever(&mut self, entrada: DadoPapete) -> Movimento {
        let norm = Array::from(&vec![Vec::from(entrada.array_normalizado())]);
        Movimento::try_from(self.0.predict(&norm).unwrap().get(0, 0) as i32).unwrap()
    }
    fn prever_batch(&mut self, entrada: &[DadoPapete]) -> Vec<Movimento> {
        let entrada: Vec<Vec<f32>> = entrada
            .iter()
            .map(|x| Vec::from(x.array_normalizado()))
            .collect();
        let norm = Array::from(&entrada);
        self.0
            .predict(&norm)
            .unwrap()
            .data()
            .iter()
            .map(|x| Movimento::try_from(*x as i32).unwrap())
            .collect()
    }
    fn salvar(&self, endereco: &str) -> Result<(), Box<dyn std::error::Error>> {
        let serialized = serde_json::to_string(&self.0).unwrap();
        std::fs::write(endereco, serialized)?;
        Ok(())
    }
}
