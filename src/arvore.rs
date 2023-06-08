use crate::csv_helper;
use crate::movimento::Movimento;

use rustlearn::multiclass::OneVsRestWrapper;
use rustlearn::prelude::*;
use rustlearn::trees::decision_tree::{DecisionTree, Hyperparameters};

pub struct Arvore(OneVsRestWrapper<DecisionTree>);

impl Arvore {
    pub fn read_file(endereco: &str) -> Result<Arvore, &str> {
        if let Ok(contents) = std::fs::read_to_string(endereco) {
            match serde_json::from_str(&contents) {
                Ok(r) => return Ok(Arvore(r)),
                Err(_) => return Err("Falha ao interpretar JSON"),
            }
        }
        Err("Falha ao abrir o arquivo")
    }
    #[allow(unused_variables)]
    pub fn prever(&self, pitch: f32, roll: f32, pe_esq: bool) -> Movimento {
        let norm = Array::from(&vec![Vec::from(csv_helper::normalizar(
            pitch, roll, pe_esq,
        ))]);
        //println!("prevendo com norm: {:#?}",norm);
        Movimento::try_from(self.0.predict(&norm).unwrap().get(0, 0) as i32).unwrap()
    }
}

pub fn calcular_de_dataset(endereco_dataset: &str, endereco_output: &str) {
    let mut model = Hyperparameters::new(3)
        .min_samples_split(5)
        .max_depth(40)
        .one_vs_rest();

    let dados = csv_helper::carregar_dados(endereco_dataset).unwrap();

    let entradas: Vec<Vec<f32>> = dados.iter().map(|x| x.normalizar_entrada()).collect();
    let entradas = Array::from(&entradas);

    let saidas: Vec<f32> = dados.iter().map(|x| x.movimento.as_f32()).collect();
    let saidas = Array::from(saidas);

    model.fit(&entradas, &saidas).unwrap();

    let serialized = serde_json::to_string(&model).unwrap();

    std::fs::write(endereco_output, serialized).expect("Erro ao escrever no arquivo");
    let prediction = model.predict(&entradas).unwrap();
    for i in 0..prediction.rows() {
        if prediction.get(i, 0) != saidas.get(i, 0) {
            println!("Erro {:?}", dados[i]);
        }
    }
}
