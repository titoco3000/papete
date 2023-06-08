use crate::movimento::Movimento;

use std::fmt;

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
            }
        }
        Err(ParseDadoPapeteError)
    }
}

impl fmt::Display for DadoPapete {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(
            f,
            "pitch: {:.6}\troll: {:.6}",
            self.pitch, self.roll
        )
    }
}
