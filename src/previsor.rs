use crate::dado_papete::DadoPapete;
use crate::movimento::Movimento;
use crate::csv_helper;
pub trait Previsor {
    fn calcular_de_dataset_addr(endereco_dataset: &str) -> Self 
    where
        Self: Sized,{
        let dados = csv_helper::carregar_dados(endereco_dataset).unwrap();
        Self::calcular_de_dataset(&dados)
    }
    fn calcular_de_dataset(dataset: &[DadoPapete]) -> Self;
    fn prever(&self, entrada: DadoPapete) -> Movimento;
    fn prever_batch(&self, entrada: &[DadoPapete]) -> Vec<Movimento>;
}
