mod arvore;
mod conexao;
mod csv_helper;
mod dado_papete;
mod movimento;
#[allow(dead_code)]
mod papete;
mod previsor;
mod avaliacao;

extern crate rand;
extern crate tensorflow;

fn main() {
    main_holder::main();
}

//para evitar warnings chatos
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

    fn coleta(papetes:usize) {
        let intervalo = time::Duration::from_millis(80);

        let mut papete = Papete::new();
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
            .salvar("arvore.JSON")
            .expect("Erro ao salvar arvore");
        let mut papete = Papete::new();
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

    fn teste_neural(){
        use tensorflow::Code;
        use tensorflow::Graph;
        use tensorflow::DataType;
        use tensorflow::Session;
        use tensorflow::SessionOptions;
        use tensorflow::Status;
        use tensorflow::Tensor;
        use tensorflow::TensorShape;

         // Define the dimensions of the input and output
        let input_dim = 2;
        let output_dim = 1;

        // Create a TensorFlow graph
        let mut graph = Graph::new();

        // Define the input placeholder
        let input = {
            let mut ops = graph.new_operation::<tensorflow::ops::Placeholder>(tensorflow::ops::Placeholder::new().dtype(DataType::Float).shape(&[-1, input_dim as i64]));
            let output = ops.output(0).unwrap();
            ops.finish().unwrap();

            output
        };
    }

    pub fn main() {
        let args: Vec<String> = std::env::args().collect();
        if args.len() == 1 {
            teste_serial();
        } else {
            if args[1] == "coleta"{
                let num = args.get(2).map(String::as_str).unwrap_or("1");
                let num = if num == "1"{1}else{2};
                coleta(num);
            }
            else if args[1] == "teste"{
                let outro_arg = args.get(2).map(String::as_str).unwrap_or("arvore");
                if outro_arg == "arvore"{
                    teste_arvore();
                }
                if outro_arg == "neural"{
                    teste_neural();
                }
                else {
                    println!("argumento não reconhecido");
                }
            }
            else if args[1].starts_with("aval") {
                let outro_arg = args.get(2).map(String::as_str).unwrap_or("arvore");
                if outro_arg == "arvore"{
                    aval_arvore();
                }
                else {
                    println!("argumento não reconhecido");
                }
            }
            else {
                println!("argumento não reconhecido");
            }
        }
    }
}
