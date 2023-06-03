/*
Como eu pretendo usar:
Objeto Papete;
papete.listarConexoes
papete.conectar
papete.movimentoAtual

 */

// pub mod movimento;

// use rustlearn::multiclass::OneVsRestWrapper;
// use rustlearn::{datasets::iris, trees::decision_tree::DecisionTree};
// use rustlearn::prelude::*;
// use rustlearn::trees::decision_tree::Hyperparameters;

// fn main() {
//     let (x, y) = iris::load_data();

//     let mut model = Hyperparameters::new(5)
//         .min_samples_split(5)
//         .max_depth(40)
//         .one_vs_rest();

//     model.fit(&x, &y).unwrap();

//     let serialized = serde_json::to_string(&model).unwrap();

//     let _deserialized:OneVsRestWrapper<DecisionTree> = serde_json::from_str(&serialized).unwrap();

//     let _prediction = model.predict(&x).unwrap();

//     println!("{}",serialized);
// }

mod conexao;
pub mod dado_papete;
mod movimento;
mod papete;

use papete::Papete;
use std::thread;
use std::time::Duration;
fn main() {
    let mut papete = Papete::new();
    loop {
        let portas_disponiveis = papete.listar_conexoes_disponiveis();
        if portas_disponiveis.len() > 0 {
            if papete.conectar(portas_disponiveis[0].clone()) {
                println!("Papete conectada em {:?}", portas_disponiveis[0]);
                break;
            }
        }
    }
    loop {
        //só durante desenvolvimento, depois pode retirar
        thread::sleep(Duration::from_millis(500));

        println!("{:?}", papete.obter_dados());
    }
}
