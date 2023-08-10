use crate::csv_helper;
use crate::dado_papete::DadoPapete;
use crate::movimento::Movimento;
pub trait Previsor {
    fn calcular_de_dataset_addr(endereco_dataset: &str) -> Result<Self, Box<dyn std::error::Error>>
    where
        Self: Sized,
    {
        let dados = csv_helper::carregar_dados(endereco_dataset).unwrap();
        Self::calcular_de_dataset(&dados)
    }
    fn calcular_de_dataset(dataset: &[DadoPapete]) -> Result<Self, Box<dyn std::error::Error>>
    where
        Self: Sized;

    fn carregar(endereco: &str) -> Result<Self, Box<dyn std::error::Error>>
    where
        Self: Sized;
    fn salvar(&self, endereco: &str) -> Result<(), Box<dyn std::error::Error>>;

    fn prever(&mut self, entrada: DadoPapete) -> Movimento;

    fn prever_batch(&mut self, entrada: &[DadoPapete]) -> Vec<Movimento>;
    fn transferir(&mut self, entrada: &[DadoPapete]);
}
