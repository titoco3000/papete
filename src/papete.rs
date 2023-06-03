/*
Pede lista de portas
Pede para conectar em COM4
pede dados
COM4 é desconectada
COM4 é reconectada
Precisa pedir de novo para conectar
*/

use crate::conexao::Conexao;
use crate::dado_papete::DadoPapete;
use crate::movimento::Movimento;

use std::{
    todo,
    borrow::Cow,
    io,
    sync::{
        mpsc::{self, TryRecvError,Receiver, Sender},
        Arc, Mutex,
    },
    thread,
    time::Duration,
};

pub struct Papete {
    dados: Arc<Mutex<(Option<DadoPapete>, Option<DadoPapete>)>>,
    transmissores_fim: Arc<Mutex<Vec<(Conexao, Option<Sender<()>>)>>>,
}

impl Papete {
    pub fn new() -> Papete {
        Papete {
            dados: Arc::new(Mutex::new((None, None))),
            transmissores_fim: Arc::new(Mutex::new(Vec::with_capacity(2))),
        }
    }
    
    #[allow(dead_code)]
    pub fn obter_movimento(&self) -> Movimento {
        todo!()
    }
    
    #[allow(dead_code)]
    pub fn obter_conexoes(&self) -> Vec<Conexao> {
        todo!()
    }

    pub fn listar_conexoes_disponiveis(&self) -> Vec<Conexao> {
        let portas_diponiveis: Vec<Conexao> = serialport::available_ports()
            .expect("erro ao ler portas")
            .iter()
            .map(|x| Conexao::USB(x.port_name.clone()))
            .collect();
        return portas_diponiveis;
    }

    fn usb_listener(
        mut porta: Box<dyn serialport::SerialPort>,
        receptor_fim: Receiver<()>,
        dados: Arc<Mutex<(Option<DadoPapete>, Option<DadoPapete>)>>,
        transmissores_fim: Arc<Mutex<Vec<(Conexao, Option<Sender<()>>)>>>,
    ) {
        loop {
            println!("{}", transmissores_fim.lock().unwrap().len());
            let mut serial_buf: Vec<u8> = vec![0; 1000];
            match porta.read(serial_buf.as_mut_slice()) {
                Ok(t) => {
                    //io::stdout().write_all(&serial_buf[..t]).unwrap()
                    if let Ok(s) = std::str::from_utf8(&serial_buf[..t]){
                        if let Ok(dado) = DadoPapete::try_from(s){
                            if dado.lado_esq{
                                dados.lock().unwrap().0 = Some(dado);
                            }
                            else {
                                dados.lock().unwrap().1 = Some(dado);
                            }
                        }
                    }
                },
                Err(ref e) if e.kind() == io::ErrorKind::TimedOut => (),
                Err(e) => {
                    println!("Desconectado por erro {}", e);
                    //localiza pos dessa conexao na lista
                    let pos = if let Some(index) =
                        transmissores_fim.lock().unwrap().iter().position(|x| {
                            if let Conexao::USB(nome_porta) = &x.0 {
                                nome_porta == &porta.name().unwrap()
                            } else {
                                false
                            }
                        }) {
                        Some(index)
                    } else {
                        None
                    };

                    //se achou
                    if let Some(index) = pos {
                        //retira da lista
                        transmissores_fim.lock().unwrap().swap_remove(index);
                    }
                    break;
                }
            }

            //só durante desenvolvimento, depois pode retirar
            thread::sleep(Duration::from_millis(500));

            match receptor_fim.try_recv() {
                Ok(_) | Err(TryRecvError::Disconnected) => {
                    break;
                }
                Err(TryRecvError::Empty) => {}
            }
        }
    }

    pub fn conectar(&mut self, entrada: Conexao) -> bool {
        match entrada {
            Conexao::USB(nome_porta) => {
                match serialport::new(Cow::from(&nome_porta), 9600)
                    .timeout(Duration::from_millis(10))
                    .open()
                {
                    Ok(porta_conectada) => {
                        let (tx, rx) = mpsc::channel();
                        self.transmissores_fim
                            .lock()
                            .unwrap()
                            .push((Conexao::USB(nome_porta.clone()), Some(tx)));
                        
                        let ref_a_lista = Arc::clone(&self.transmissores_fim);
                        let ref_a_dados = Arc::clone(&self.dados);

                        thread::spawn(move || {
                            Papete::usb_listener(porta_conectada, rx, ref_a_dados, ref_a_lista)
                        });
                        true
                    }
                    Err(_) => false,
                }
            }
            _ => todo!(),
        }
    }
}

//parar threads que possam estar executando
impl Drop for Papete {
    fn drop(&mut self) {
        println!("Parando threads");
        for (_, t) in self.transmissores_fim.lock().unwrap().iter() {
            if let Some(tx) = t {
                tx.send(()).unwrap();
            }
        }
    }
}
