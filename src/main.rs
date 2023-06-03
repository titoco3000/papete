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
use std::io;
fn main() {
    {
        let mut papete = Papete::new();
        loop {
            let portas_disponiveis = papete.listar_conexoes_disponiveis();
            println!("{:?}", portas_disponiveis);
            if portas_disponiveis.len() > 0 {
                papete.conectar(portas_disponiveis[0].clone());
                break;
            }
        }
        //aguarda input
        let mut user_input = String::new();
        let stdin = io::stdin();
        stdin.read_line(&mut user_input).unwrap();
    }
    println!("drop");
    //aguarda input
    let mut user_input = String::new();
    let stdin = io::stdin();
    stdin.read_line(&mut user_input).unwrap();
}