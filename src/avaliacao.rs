use crate::{
    csv_helper::{self, carregar_dados},
    dado_papete::DadoPapete,
    movimento::Movimento,
    previsor::Previsor,
};
use rand::prelude::SliceRandom;
use statistical;

pub struct MatrizConfusao([[usize; 5]; 5]);
impl MatrizConfusao {
    pub fn new(
        esperado: impl Iterator<Item = Movimento>,
        obtido: impl Iterator<Item = Movimento>,
    ) -> MatrizConfusao {
        let mut matriz = [[0; 5]; 5];
        for (esperado, obtido) in esperado.zip(obtido) {
            matriz[esperado.as_usize()][obtido.as_usize()] += 1;
        }
        MatrizConfusao(matriz)
    }
}
impl std::fmt::Display for MatrizConfusao {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        write!(f, "e\\o")?;
        for m in Movimento::todos() {
            write!(f, "  {}  ", m.str_simplificada().chars().nth(0).unwrap())?;
        }
        write!(f, "\n")?;
        for i in 0..5 {
            write!(
                f,
                "{}  ",
                Movimento::try_from(i as i32)
                    .unwrap()
                    .str_simplificada()
                    .chars()
                    .nth(0)
                    .unwrap()
            )?;
            for j in 0..5 {
                write!(f, " {:^4}", self.0[i][j])?;
            }
            write!(f, "\n")?;
        }
        write!(f, "\n")
    }
}

pub fn teste_10_pastas<T: Previsor>() {
    //teste 10pastas
    let mut dados = csv_helper::carregar_dados("papete.csv").unwrap();
    dados.shuffle(&mut rand::thread_rng());

    let mut obtido = Vec::with_capacity(dados.len());
    let tamanho_pasta = dados.len() / 10;
    let mut acertos = vec![0,0,0,0,0,0,0,0,0,0];
    for k in 0..10 {
        println!("{}/10", k + 1);
        let index_inicial = k * tamanho_pasta;
        let index_final = (k + 1) * tamanho_pasta;

        let dados_treino: Vec<DadoPapete> = dados
            .iter()
            .enumerate()
            .filter(|(index, _)| index < &index_inicial || index >= &index_final)
            .map(|(_, x)| x.clone())
            .collect();
        let dados_teste = &dados[index_inicial..index_final];

        let mut arv = T::calcular_de_dataset(&dados_treino).unwrap();
        for (i, resposta) in arv.prever_batch(dados_teste).iter().enumerate() {
            obtido.push((*resposta).clone());
            if &dados_teste[i].movimento.unwrap() == resposta {
                acertos[k] += 1;
            }
        }
    }
    let taxa_acerto:Vec<f32> = acertos.iter().map(|a| *a as f32/tamanho_pasta as f32).collect();
    
    let mean = statistical::mean(&taxa_acerto);
    let std_dev = statistical::standard_deviation(&taxa_acerto, None);
    let min_val = taxa_acerto.clone().into_iter()
        .reduce(f32::min)
        .unwrap();
    let max_val = taxa_acerto.clone().into_iter()
        .reduce(f32::max)
        .unwrap();


    println!(
        "taxas: {:?}\nmédia: {}\ndesvio-padrão: {}\nmín: {}\nmáx: {}\n\n{}\n",
        taxa_acerto,
        mean,
        std_dev,
        min_val,max_val,
        MatrizConfusao::new(
            dados.iter().map(|x| x.movimento.unwrap()),
            obtido.into_iter()
        )
    );
}

#[allow(dead_code)]
pub fn teste_simples<T: Previsor>() {
    let dados = carregar_dados("papete.csv")
        .expect("falha ao carregar dados")
        .into_iter()
        //.filter(|x| x.movimento.unwrap() == Movimento::Repouso)
        .collect::<Vec<DadoPapete>>();
    let mut engine = T::calcular_de_dataset(&dados).unwrap();
    let mut acertos = 0;
    for (obtido, esperado) in engine
        .prever_batch(&dados)
        .iter()
        .zip(dados.iter().map(|x| x.movimento))
    {
        if obtido == &esperado.unwrap() {
            println!("{} == {}", esperado.unwrap(), obtido);
            acertos += 1;
        } else {
            println!("{} != {}", esperado.unwrap(), obtido);
        }
    }
    println!(
        "esperado | previsto\nacertos: {} / {}",
        acertos,
        dados.len()
    );
}
