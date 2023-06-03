use std::{fmt, str::FromStr};

#[derive(Copy, Clone, Debug, PartialEq, Eq)]
pub enum Movimento {
    Dorsiflexao,
    Flexao,
    Repouso,
    Eversao,
    Inversao,
}

impl Movimento {
    pub fn str_simplificada(&self) -> &str {
        match self {
            Self::Dorsiflexao => "Dorsiflexao",
            Self::Flexao => "Flexao",
            Self::Repouso => "Repouso",
            Self::Eversao => "Eversao",
            Self::Inversao => "Inversao",
        }
    }

    pub fn str_completa(&self) -> &str {
        match self {
            Self::Dorsiflexao => "Dorsiflexão",
            Self::Flexao => "Flexão plantar",
            Self::Repouso => "Repouso",
            Self::Eversao => "Eversão",
            Self::Inversao => "Inversão",
        }
    }

    #[allow(dead_code)]
    pub fn como_entrada_nn(&self) -> &[f32] {
        match self {
            Self::Dorsiflexao => &[1.0, 0.0, 0.0, 0.0, 0.0],
            Self::Flexao => &[0.0, 1.0, 0.0, 0.0, 0.0],
            Self::Repouso => &[0.0, 0.0, 1.0, 0.0, 0.0],
            Self::Eversao => &[0.0, 0.0, 0.0, 1.0, 0.0],
            Self::Inversao => &[0.0, 0.0, 0.0, 0.0, 1.0],
        }
    }
}

#[derive(Debug, PartialEq, Eq)]
pub struct ParseMovimentoError;

impl FromStr for Movimento {
    type Err = ParseMovimentoError;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        for variante in [
            Self::Dorsiflexao,
            Self::Flexao,
            Self::Repouso,
            Self::Eversao,
        ] {
            if variante.str_simplificada() == s || variante.str_completa() == s {
                return Ok(variante);
            }
        }
        if let Ok(numero) = s.parse::<i32>() {
            return Movimento::try_from(numero);
        }
        Err(ParseMovimentoError)
    }
}

impl TryFrom<i32> for Movimento {
    type Error = ParseMovimentoError;

    fn try_from(value: i32) -> Result<Self, Self::Error> {
        match value {
            0 => Ok(Movimento::Dorsiflexao),
            1 => Ok(Movimento::Flexao),
            2 => Ok(Movimento::Repouso),
            3 => Ok(Movimento::Eversao),
            4 => Ok(Movimento::Inversao),
            _ => Err(ParseMovimentoError),
        }
    }
}

impl fmt::Display for Movimento {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}", self.str_completa())
    }
}

#[cfg(test)]
mod tests {
    use crate::movimento::Movimento;

    #[test]
    fn it_works() {
        assert_eq!(Movimento::try_from(0).unwrap(), Movimento::Dorsiflexao);
        assert_eq!("Flexao".parse::<Movimento>().unwrap(), Movimento::Flexao);
        assert_eq!(
            "Flexão plantar".parse::<Movimento>().unwrap(),
            Movimento::Flexao
        );
        assert_ne!("Eversão".parse::<Movimento>().unwrap(), Movimento::Inversao);

        let m_a = Movimento::Eversao;
        let m_b = m_a;
        assert_eq!(format!("{}", m_a), format!("{}", m_b));
    }
}
