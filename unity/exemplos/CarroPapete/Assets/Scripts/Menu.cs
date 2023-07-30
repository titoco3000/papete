using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;
using System.IO;
using System;

public class Menu : MonoBehaviour
{
    public TMP_Text placa_carro;
    public void MouseEntrouNaPlacaDoCarro()
    {
        placa_carro.fontStyle = FontStyles.Bold;
    }
    public void MouseSaiuDaPlacaDoCarro()
    {
        placa_carro.fontStyle = FontStyles.Normal;
    }
    public void MouseClicouNaPlacaDoCarro()
    {
        NucleoJogo nucleo = FindObjectOfType<NucleoJogo>();
        if (nucleo.papete.ListarConexoesAtuais().Count>0) {
            nucleo.AcionarColetaPadrao(CalibracaoFinalizada, NucleoJogo.TipoDeVerificacao.Vertical);
        }
        //Papete papete = FindObjectOfType<Papete>();
        //if (papete.ObterDadosArduino().conexao != Papete.TipoDeConexao.Iniciando && papete.ObterDadosArduino().conexao != Papete.TipoDeConexao.Desconectado)
        //    FindObjectOfType<Papete>().AcionarColetaPadrao(CalibracaoFinalizada, Papete.TipoDeVerificacao.Vertical);
    }
    private void CalibracaoFinalizada(int resultado)
    {
        print("Calibrado com " + resultado);
        if (resultado > 0)
        {
            FindObjectOfType<NucleoJogo>().IniciarExercicio(File.ReadAllText(Application.streamingAssetsPath + "\\Niveis\\vai_e_volta.txt"));
            SceneManager.LoadScene(1);
        }
    }
    
}
