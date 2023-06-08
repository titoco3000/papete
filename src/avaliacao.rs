use crate::{csv_helper, dado_papete::DadoPapete, movimento::Movimento, previsor::Previsor};
use rand::prelude::SliceRandom;

pub struct MatrizConfusao([[usize;5];5]);
impl MatrizConfusao {
    pub fn new(esperado:impl Iterator<Item = Movimento>,obtido:impl Iterator<Item = Movimento>)->MatrizConfusao{
        let mut matriz = [[0;5];5];
        for (esperado, obtido) in esperado.zip(obtido){
            matriz[esperado.as_usize()][obtido.as_usize()]+=1;
        }
        MatrizConfusao(matriz)
    }
}
impl std::fmt::Display for MatrizConfusao {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "e\\o")?;
        for m in Movimento::todos() {
            write!(f, "  {}  ",m.str_simplificada().chars().nth(0).unwrap())?;
        }
        write!(f, "\n")?;
        for i in 0..5{
            write!(f, "{}  ",Movimento::try_from(i as i32).unwrap().str_simplificada().chars().nth(0).unwrap())?;
            for j in 0..5{
                write!(f, " {:^4}",self.0[i][j])?;
            }
            write!(f, "\n")?;
        }
        write!(f, "\n")
    }
}


pub fn teste_10_pastas<T:Previsor>(){
    //teste 10pastas
    let mut dados = csv_helper::carregar_dados("papete.csv").unwrap();
    dados.shuffle(&mut rand::thread_rng());

    let mut obtido = Vec::with_capacity(dados.len());
    let tamanho_pasta = dados.len()/10;
    let mut acertos = 0;
    for k in 0..10 {
        println!("{}/10",k+1);
        let index_inicial = k*tamanho_pasta;
        let index_final = (k+1)*tamanho_pasta;
        
        let dados_treino:Vec<DadoPapete> = dados.iter().enumerate().filter(|(index,_)|{ index<&index_inicial || index>=&index_final}).map(|(_,x)|x.clone()).collect();
        let dados_teste = &dados[index_inicial..index_final];

        println!("treinando com {} testando com {}",dados_treino.len(),dados_teste.len());
        let arv = T::calcular_de_dataset(&dados_treino);
        for (i,resposta) in arv.prever_batch(dados_teste).iter().enumerate(){
            obtido.push((*resposta).clone());
            if &dados_teste[i].movimento.unwrap() == resposta{
                acertos+=1;
            }
            else {
                println!("{} != {}",&dados_teste[i].movimento.unwrap(), resposta);
            }
        }
    }
    println!("acertos: {}\n{}",acertos,MatrizConfusao::new(dados.iter().map(|x|x.movimento.unwrap()), obtido.into_iter()));
    
}