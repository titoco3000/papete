use crate::movimento::Movimento;

use std::fmt;
use std::ops::SubAssign;

#[derive(Clone, Copy, Debug)]
pub struct DadoPapete {
    pub pitch: f32,
    pub roll: f32,
    pub lado_esq: bool,
    pub movimento: Option<Movimento>,
    pub sessao: Option<u32>,
}

impl DadoPapete {
    pub fn basico(pitch: f32, roll: f32, lado_esq: bool) -> DadoPapete {
        DadoPapete {
            pitch,
            roll,
            lado_esq,
            movimento: None,
            sessao: None,
        }
    }

    pub fn completo(
        pitch: f32,
        roll: f32,
        lado_esq: bool,
        movimento: Movimento,
        sessao: u32,
    ) -> DadoPapete {
        DadoPapete {
            pitch,
            roll,
            lado_esq,
            movimento: Some(movimento),
            sessao: Some(sessao),
        }
    }
    pub fn array_normalizado(&self) -> [f32; 3] {
        [
            self.pitch * 0.5 / std::f32::consts::PI + 0.5,
            self.roll * 0.5 / std::f32::consts::PI + 0.5,
            if self.lado_esq { 1.0 } else { 0.0 },
        ]
    }
}

#[derive(Debug, PartialEq, Eq)]
pub struct ParseDadoPapeteError;

impl TryFrom<&str> for DadoPapete {
    type Error = ParseDadoPapeteError;

    fn try_from(value: &str) -> Result<Self, Self::Error> {
        for linha in value.split("\n") {
            let linha = linha.trim();
            if linha.starts_with("D") || linha.starts_with("E") {
                for mut segm in linha.split("D") {
                    if segm.len() > 1 {
                        let pe_esq = segm.starts_with("E");
                        if pe_esq {
                            segm = &segm[1..];
                        }
                        let partes: Vec<&str> = segm.split("\t").collect();
                        if partes.len() == 2 {
                            let pitch = partes[0].parse::<f32>();
                            let roll = partes[1].parse::<f32>();
                            if pitch.is_ok() && roll.is_ok() {
                                return Ok(DadoPapete::basico(
                                    pitch.unwrap(),
                                    roll.unwrap(),
                                    pe_esq,
                                ));
                            }
                        } else if partes.len() == 4 {
                            //parse tbm o movimento e sessao
                            let pitch = partes[0].parse::<f32>();
                            let roll = partes[1].parse::<f32>();
                            let movimento = partes[2].parse::<Movimento>();
                            let sessao = partes[3].parse::<u32>();
                            if pitch.is_ok() && roll.is_ok() && movimento.is_ok() && sessao.is_ok()
                            {
                                return Ok(DadoPapete::completo(
                                    pitch.unwrap(),
                                    roll.unwrap(),
                                    pe_esq,
                                    movimento.unwrap(),
                                    sessao.unwrap(),
                                ));
                            }
                        }
                    }
                }
            } else {
                let partes: Vec<&str> = value.split(";").collect();
                if partes.len() >= 4 {
                    if let Ok(pitch) = partes[0].parse::<f32>() {
                        if let Ok(roll) = partes[1].parse::<f32>() {
                            let pe_esq = if partes[2].starts_with("E") {
                                true
                            } else if partes[2].starts_with("D") {
                                false
                            } else {
                                return Err(ParseDadoPapeteError);
                            };
                            if let Ok(movimento) = partes[3].parse::<Movimento>() {
                                let sessao = if partes.len() == 5 {
                                    if let Ok(sessao) = partes[4].parse::<u32>() {
                                        sessao
                                    } else {
                                        return Err(ParseDadoPapeteError);
                                    }
                                } else {
                                    0
                                };
                                return Ok(DadoPapete::completo(
                                    pitch, roll, pe_esq, movimento, sessao,
                                ));
                            }
                        }
                    }
                }
            }
        }
        Err(ParseDadoPapeteError)
    }
}

impl fmt::Display for DadoPapete {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "pitch: {:.6}\troll: {:.6}", self.pitch, self.roll)
    }
}

impl SubAssign for DadoPapete {
    fn sub_assign(&mut self, other: Self) {
        if self.lado_esq != other.lado_esq {
            panic!("Tentando subtrair lados diferentes");
        }
        self.pitch -= other.pitch;
        self.roll -= other.roll;
    }
}