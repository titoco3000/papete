use crate::dado_papete::DadoPapete;
use crate::movimento::Movimento;
use crate::previsor::Previsor;

use rustlearn::multiclass::OneVsRestWrapper;
use rustlearn::prelude::*;
use rustlearn::trees::decision_tree::{DecisionTree, Hyperparameters};

pub struct Arvore(OneVsRestWrapper<DecisionTree>);

impl Arvore {
    pub fn carregar(endereco: &str) -> Result<Arvore, &str> {
        if let Ok(contents) = std::fs::read_to_string(endereco) {
            match serde_json::from_str(&contents) {
                Ok(r) => return Ok(Arvore(r)),
                Err(_) => return Err("Falha ao interpretar JSON"),
            }
        }
        Err("Falha ao abrir o arquivo")
    }

    pub fn salvar(&self, endereco: &str) -> std::io::Result<()> {
        let serialized = serde_json::to_string(&self.0).unwrap();

        std::fs::write(endereco, serialized)
    }

    // pub fn prever(&self, pitch: f32, roll: f32, pe_esq: bool) -> Movimento {
    //     let norm = Array::from(&vec![Vec::from(DadoPapete::basico(
    //         pitch, roll, pe_esq
    //     ).array_normalizado())]);
    //     Movimento::try_from(self.0.predict(&norm).unwrap().get(0, 0) as i32).unwrap()
    // }
}
impl Previsor for Arvore {
    fn calcular_de_dataset(dataset: &[DadoPapete]) -> Arvore {
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
        Arvore(model)
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
}
