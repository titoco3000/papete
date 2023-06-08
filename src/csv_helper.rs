use crate::dado_papete::DadoPapete;
use crate::movimento::Movimento;

use linecount::count_lines;
use std::fs::{File,OpenOptions};
use std::{
    io::{BufRead, BufReader, Write},
    str::FromStr,
};
#[derive(Debug)]
pub struct LinhaCSV {
    pub pitch: f32,
    pub roll: f32,
    pub pe_esq: bool,
    pub movimento: Movimento,
    pub sessao: u32,
}

impl LinhaCSV {
    pub fn normalizar_entrada(&self) -> Vec<f32> {
        Vec::from(normalizar(self.pitch, self.roll, self.pe_esq))
    }
}

#[derive(Debug, PartialEq, Eq)]
pub struct ParseLinhaCSVError;

impl FromStr for LinhaCSV {
    type Err = ParseLinhaCSVError;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        let partes: Vec<&str> = s.split(";").collect();
        if partes.len() >= 4 {
            if let Ok(pitch) = partes[0].parse::<f32>() {
                if let Ok(roll) = partes[1].parse::<f32>() {
                    let pe_esq = if partes[2].starts_with("E") {
                        true
                    } else if partes[2].starts_with("D") {
                        false
                    } else {
                        return Err(ParseLinhaCSVError);
                    };
                    if let Ok(movimento) = partes[3].parse::<Movimento>() {
                        let sessao = if partes.len() == 5 {
                            if let Ok(sessao) = partes[4].parse::<u32>() {
                                sessao
                            } else {
                                return Err(ParseLinhaCSVError);
                            }
                        } else {
                            0
                        };
                        return Ok(LinhaCSV {
                            pitch,
                            roll,
                            pe_esq,
                            movimento,
                            sessao,
                        });
                    }
                }
            }
        }
        Err(ParseLinhaCSVError)
    }
}

pub fn carregar_dados(endereco: &str) -> std::io::Result<Vec<LinhaCSV>> {
    let qtd_linhas: usize = count_lines(File::open(endereco)?)?;
    let mut saida = Vec::with_capacity(qtd_linhas - 1);
    for linha in BufReader::new(File::open(endereco)?).lines().skip(1) {
        if let Ok(linha) = linha?.parse::<LinhaCSV>() {
            saida.push(linha);
        }
    }
    Ok(saida)
}

pub fn salvar_dados(destino: &str, dados: &[DadoPapete]) -> std::io::Result<()> {
    let mut arquivo = if let Ok(a) = OpenOptions::new().append(true).open(destino) {
        a
    } else {
        let mut a = File::create(destino)?;
        a.write_all("pitch;roll;lado;movimento;sessao".as_bytes())?;
        a
    };
    for dado in dados {
        write!(
            &mut arquivo,
            "\n{};{};{};{};{}",
            dado.pitch,
            dado.roll,
            if dado.lado_esq { 'E' } else { 'D' },
            dado.movimento.unwrap().str_simplificada(),
            dado.sessao.unwrap()
        )?;
    }

    Ok(())
}

pub fn normalizar(pitch: f32, roll: f32, pe_esq: bool) -> [f32; 3] {
    [
        pitch * 0.5 / std::f32::consts::PI + 0.5,
        roll * 0.5 / std::f32::consts::PI + 0.5,
        if pe_esq { 1.0 } else { 0.0 },
    ]
}
