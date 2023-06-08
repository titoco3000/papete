use crate::dado_papete::DadoPapete;

use linecount::count_lines;
use std::fs::{File, OpenOptions};
use std::io::{BufRead, BufReader, Write};

pub fn carregar_dados(endereco: &str) -> std::io::Result<Vec<DadoPapete>> {
    let qtd_linhas: usize = count_lines(File::open(endereco)?)?;
    let mut saida = Vec::with_capacity(qtd_linhas - 1);
    for linha in BufReader::new(File::open(endereco)?).lines().skip(1) {
        if let Ok(linha) = DadoPapete::try_from(linha?.as_str()) {
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
