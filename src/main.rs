#[allow(dead_code)]
mod arvore;
#[allow(dead_code)]
mod conexao;
#[allow(dead_code)]
mod csv_helper;
#[allow(dead_code)]
mod dado_papete;
#[allow(dead_code)]
mod movimento;
#[allow(dead_code)]
mod papete;

use std::{
    io::{self, Write},
    thread, time,
};

use crate::movimento::Movimento;

fn coleta() {
    let intervalo = time::Duration::from_millis(50);

    let mut papete = papete::Papete::new();
    papete.ativar_modo_conexao_imediata(2);
    println!("Procurando papetes...");
    while papete.obter_conexoes().len() < 2 {
        thread::sleep(intervalo);
    }
    println!("Encontradas!");
    papete.iniciar_sessao(500);

    for rodada in 1..2 {
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
                papete.registrar(movimento);
                print!(".");
                io::stdout().flush().unwrap();
                thread::sleep(intervalo);
            }
            println!("");
        }
    }
    papete.salvar("papete.csv").unwrap();
}

fn main() {
    coleta();

    // let intervalo = time::Duration::from_millis(50);
    // let mut papete = papete::Papete::new();
    // papete.ativar_modo_conexao_imediata(2);
    // println!("Procurando papetes...");
    // while papete.obter_conexoes().len() < 1 {
    //     thread::sleep(intervalo);
    // }
    // println!("Encontradas!");
    // loop {
    //     let dados = papete.obter_dados();
    //     if dados.0.is_some(){
    //         print!("{}\t", dados.0.unwrap());
    //     }
    //     if dados.1.is_some(){
    //         print!("{}", dados.1.unwrap());
    //     }
    //     println!("");
    // }
}
