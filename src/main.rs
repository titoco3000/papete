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
//extern crate tensorflow;

fn main() {
    main_holder::main();
}

//para evitar warnings chatos
#[allow(dead_code)]
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
        let mut papete = Papete::new(Box::new(Arvore::carregar("papete.JSON").unwrap()));
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

        let mut papete = Papete::new(Box::new(Arvore::carregar("papete.JSON").unwrap()));
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
            .unwrap()
            .salvar("arvore.JSON")
            .expect("Erro ao salvar arvore");
        let mut papete = Papete::new(Box::new(Arvore::carregar("papete.JSON").unwrap()));
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
        let n = Neural::calcular_de_dataset_addr("papete.csv").unwrap();
        n.salvar("papete.pt").unwrap();

        let n = Neural::carregar("papete.pt").unwrap();

        let intervalo = time::Duration::from_millis(50);

        let mut papete = Papete::new(Box::new(n));
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

    fn aval_neural() {
        avaliacao::teste_10_pastas::<Neural>();
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
                } else if outro_arg == "neural" {
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
