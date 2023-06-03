#[derive(Clone, Copy, Debug)]
pub struct DadoPapete {
    pub pitch: f32,
    pub roll: f32,
    pub lado_esq: bool,
}

impl DadoPapete {
    fn new(pitch: f32, roll: f32, lado_esq: bool) -> DadoPapete {
        DadoPapete {
            pitch,
            roll,
            lado_esq,
        }
    }
}

#[derive(Debug, PartialEq, Eq)]
pub struct ParseDadoPapeteError;

impl TryFrom<&str> for DadoPapete {
    type Error = ParseDadoPapeteError;

    fn try_from(value: &str) -> Result<Self, Self::Error> {
        let value = value.trim();
        for mut segm in value.split("D"){
            if segm.len()>1{
                let pe_esq = segm.starts_with("E");
                if pe_esq{
                    segm = &segm[1..];
                }
                let numeros:Vec<&str> = segm.split("\t").collect();
                if numeros.len()==2{
                    let pitch = numeros[0].parse::<f32>();
                    let roll = numeros[1].parse::<f32>();
                    if pitch.is_ok() && roll.is_ok(){
                        return Ok(DadoPapete::new(pitch.unwrap(), roll.unwrap(), pe_esq));  
                    }
                }
            }
        }
        Err(ParseDadoPapeteError)
    }
}
