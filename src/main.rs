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
mod previsor;
mod avaliacao;

extern crate rand;

fn main() {
    main_holder::main();
}

//para evitar warnings chatos
#[allow(dead_code)]
#[allow(unused_variables)]
mod main_holder {
    use crate::{arvore::Arvore, papete::Papete, previsor::Previsor, movimento::Movimento,avaliacao};
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

    fn coleta() {
        let intervalo = time::Duration::from_millis(50);

        let mut papete = Papete::new();
        papete.ativar_modo_conexao_imediata(2);
        println!("Procurando papetes...");
        while papete.obter_conexoes().len() < 2 {
            thread::sleep(intervalo);
        }
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
                if papete.obter_conexoes().len() < 2 {
                    println!("Papete desconectou");
                    while papete.obter_conexoes().len() < 2 {
                        thread::sleep(intervalo);
                    }
                }
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
        println!("Encontradas!");

        loop {
            println!("{}", papete.obter_movimento());
            thread::sleep(intervalo);
        }
    }

    fn aval_arvore() {
        avaliacao::teste_10_pastas::<Arvore>();
    }

    pub fn main() {
        let args: Vec<String> = std::env::args().collect();
        if args.len() == 1 {
            teste_serial();
        } else if args.len() == 2 {
            if args[1] == "coleta" {
                coleta();
            } else {
                todo!()
            }
        } else if args.len() == 3 {
            if args[1] == "teste" {
                if args[2] == "serial" {
                    teste_serial();
                } else if args[2] == "arvore" {
                    teste_arvore();
                }
            }
            if args[1].starts_with("aval") {
                if args[2] == "arvore" {
                    aval_arvore();
                } else {
                    todo!()
                }
            }
        }
    }
}
