/*
Pede lista de portas
Pede para conectar em COM4
pede dados
COM4 é desconectada
COM4 é reconectada
Precisa pedir de novo para conectar
*/

use crate::{
    conexao::Conexao, csv_helper, dado_papete::DadoPapete, movimento::Movimento,
    previsor::Previsor,
};

use std::{
    borrow::Cow,
    io,
    sync::{
        mpsc::{self, Receiver, Sender, TryRecvError},
        Arc, Mutex,
    },
    thread,
    time::{Duration, SystemTime, UNIX_EPOCH},
    todo,
};

pub struct Papete {
    dados: Arc<Mutex<(Option<DadoPapete>, Option<DadoPapete>)>>,
    offsets: (Option<DadoPapete>, Option<DadoPapete>),
    transmissores_fim: Arc<Mutex<Vec<(Conexao, Option<Sender<()>>)>>>,
    transmissor_buscador_portas: Option<Sender<()>>,
    previsor: Option<Box<dyn Previsor>>,
    pub registrados: Vec<DadoPapete>,
    sessao: Option<u32>,
}

impl Papete {
    pub fn new() -> Papete {
        Papete {
            dados: Arc::new(Mutex::new((None, None))),
            offsets: (None, None),
            transmissores_fim: Arc::new(Mutex::new(Vec::with_capacity(2))),
            transmissor_buscador_portas: None,
            previsor: None,
            registrados: Vec::new(),
            sessao: None,
        }
    }

    pub fn com_previsor(previsor: Box<dyn Previsor>)->Papete{
        Papete {
            dados: Arc::new(Mutex::new((None, None))),
            offsets: (None, None),
            transmissores_fim: Arc::new(Mutex::new(Vec::with_capacity(2))),
            transmissor_buscador_portas: None,
            previsor: Some(previsor),
            registrados: Vec::new(),
            sessao: None,
        }
    }

    pub fn obter_movimento(&mut self) -> Movimento {
        let dados = self.dados.lock().unwrap();
        if let Some(mut dado) = dados.0 {
            if let Some(offset) = self.offsets.0 {
                dado -= offset;
                return self.previsor.as_mut().unwrap().prever(dado);
            } else {
                self.offsets.0 = Some(dado);
            }
        }
        if let Some(mut dado) = dados.1 {
            if let Some(offset) = self.offsets.1 {
                dado -= offset;
                return self.previsor.as_mut().unwrap().prever(dado);
            } else {
                self.offsets.1 = Some(dado);
            }
        }

        Movimento::Repouso
    }

    pub fn obter_conexoes(&self) -> Vec<Conexao> {
        (*self.transmissores_fim.lock().unwrap())
            .iter()
            .map(|x| x.0.clone())
            .collect()
    }

    pub fn obter_dados(&self) -> (Option<DadoPapete>, Option<DadoPapete>) {
        self.dados.lock().unwrap().clone()
    }

    pub fn obter_dados_qqr(&self) -> Option<DadoPapete> {
        let dados = self.dados.lock().unwrap();
        if let Some(d) = dados.0 {
            return Some(d.clone());
        } else if let Some(d) = dados.1 {
            return Some(d.clone());
        }
        None
    }

    pub fn listar_conexoes_disponiveis() -> Vec<Conexao> {
        let portas_diponiveis: Vec<Conexao> = serialport::available_ports()
            .expect("erro ao ler portas")
            .iter()
            .map(|x| Conexao::USB(x.port_name.clone()))
            .collect();
        return portas_diponiveis;
    }

    pub fn iniciar_sessao(&mut self, qtd_esperada: usize) {
        self.registrados = Vec::with_capacity(qtd_esperada);
        self.offsets = self.obter_dados();
        //self.offsets = (Some(DadoPapete::basico(0.0, 0.0, true)),Some(DadoPapete::basico(0.0, 0.0, false)));
        self.sessao = Some(
            SystemTime::now()
                .duration_since(UNIX_EPOCH)
                .unwrap()
                .as_millis() as u32,
        );
    }
    pub fn registrar(&mut self, movimento: Movimento) -> bool {
        let dados = self.obter_dados();
        let mut res = false;
        for lado in [(dados.0, self.offsets.0), (dados.1, self.offsets.1)] {
            if let Some(mut x) = lado.0 {
                if let Some(offset) = lado.1 {
                    x.movimento = Some(movimento);
                    x.sessao = Some(self.sessao.unwrap());
                    x -= offset;
                    self.registrados.push(x);
                    res = true;
                }
            }
        }
        res
    }
    pub fn deregistrar(&mut self) {
        self.registrados.pop();
    }
    pub fn salvar(&mut self, destino: &str) -> std::io::Result<()> {
        csv_helper::salvar_dados(destino, &self.registrados)
    }

    fn usb_listener(
        mut porta: Box<dyn serialport::SerialPort>,
        receptor_fim: Receiver<()>,
        dados: Arc<Mutex<(Option<DadoPapete>, Option<DadoPapete>)>>,
        transmissores_fim: Arc<Mutex<Vec<(Conexao, Option<Sender<()>>)>>>,
    ) {
        let mut serial_buf: Vec<u8> = vec![0; 10000];
        loop {
            match porta.read(serial_buf.as_mut_slice()) {
                Ok(t) => {
                    if let Ok(s) = std::str::from_utf8(&serial_buf[..t]) {
                        if let Ok(dado) = DadoPapete::try_from(s.trim()) {
                            if dado.lado_esq {
                                dados.lock().unwrap().0 = Some(dado);
                            } else {
                                dados.lock().unwrap().1 = Some(dado);
                            }
                        }
                    }
                }
                Err(ref e) if e.kind() == io::ErrorKind::TimedOut => (),
                Err(e) => {
                    println!("Desconectado por erro {}", e);
                    //nula ambos os valores, como não sabe qual é
                    *dados.lock().unwrap() = (None, None);

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

            match receptor_fim.try_recv() {
                Ok(_) | Err(TryRecvError::Disconnected) => {
                    break;
                }
                Err(TryRecvError::Empty) => {}
            }
        }
    }

    pub fn conectar(&mut self, entrada: Conexao) -> bool {
        let ref_a_lista = Arc::clone(&self.transmissores_fim);
        let ref_a_dados = Arc::clone(&self.dados);
        Papete::conectar_com_ref_parcial(ref_a_lista, ref_a_dados, entrada)
    }

    fn conectar_com_ref_parcial(
        transmissores_fim: Arc<Mutex<Vec<(Conexao, Option<Sender<()>>)>>>,
        dados: Arc<Mutex<(Option<DadoPapete>, Option<DadoPapete>)>>,
        entrada: Conexao,
    ) -> bool {
        match entrada {
            Conexao::USB(nome_porta) => {
                match serialport::new(Cow::from(&nome_porta), 9600)
                    .timeout(Duration::from_millis(60))
                    .open()
                {
                    Ok(porta_conectada) => {
                        let (tx, rx) = mpsc::channel();
                        transmissores_fim
                            .lock()
                            .unwrap()
                            .push((Conexao::USB(nome_porta.clone()), Some(tx)));

                        let ref_a_lista = Arc::clone(&transmissores_fim);
                        let ref_a_dados = Arc::clone(&dados);

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

    /*Enquanto não receber msg de fim:
    verifica se esta conectado.
    se não estiver, procura porta livre
    */
    fn buscador_portas(
        receptor_fim: Receiver<()>,
        dados: Arc<Mutex<(Option<DadoPapete>, Option<DadoPapete>)>>,
        transmissores_fim: Arc<Mutex<Vec<(Conexao, Option<Sender<()>>)>>>,
        max_conexoes: usize,
    ) {
        loop {
            match receptor_fim.try_recv() {
                Ok(_) | Err(TryRecvError::Disconnected) => {
                    break;
                }
                Err(TryRecvError::Empty) => {}
            }
            if transmissores_fim.lock().unwrap().len() < 2 {
                let disponiveis = Papete::listar_conexoes_disponiveis();
                let qtd_conexoes_atuais = transmissores_fim.lock().unwrap().len();
                if qtd_conexoes_atuais < max_conexoes && disponiveis.len() != qtd_conexoes_atuais {
                    for porta in &disponiveis {
                        let ref_a_lista = Arc::clone(&transmissores_fim);
                        let ref_a_dados = Arc::clone(&dados);
                        Papete::conectar_com_ref_parcial(ref_a_lista, ref_a_dados, porta.clone());
                    }
                }
            }
        }
    }
    pub fn ativar_modo_conexao_imediata(&mut self, max_conexoes: usize) {
        let (tx, rx) = mpsc::channel();
        self.transmissor_buscador_portas = Some(tx);
        let ref_a_lista = Arc::clone(&self.transmissores_fim);
        let ref_a_dados = Arc::clone(&self.dados);
        thread::spawn(move || Papete::buscador_portas(rx, ref_a_dados, ref_a_lista, max_conexoes));
    }
    pub fn desativar_modo_conexao_imediata(&mut self) {
        let retirado = std::mem::replace(&mut self.transmissor_buscador_portas, None);
        if let Some(tx) = retirado {
            tx.send(()).unwrap();
        }
    }
}

//parar threads que possam estar executando
impl Drop for Papete {
    fn drop(&mut self) {
        for (_, t) in self.transmissores_fim.lock().unwrap().iter() {
            if let Some(tx) = t {
                tx.send(()).unwrap();
            }
        }
        if let Some(tx) = &self.transmissor_buscador_portas {
            tx.send(()).unwrap();
        }
    }
}
