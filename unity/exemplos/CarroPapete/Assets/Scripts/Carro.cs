using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;
using UnityEngine.UIElements;

public class Carro : MonoBehaviour
{
    public float velocidade = 8f;
    private float intervaloObjetivos = 2f;

    public TMP_Text labelPontuacao;
    public GameObject objetivoPrefab;

    private float maxPosCarro = 3f;
    private float maxPosObstaculo = 2.8f;

    private Transform holderObjetivos;
    private NucleoJogo nucleo;

    void Start()
    {
        nucleo = FindObjectOfType<NucleoJogo>();

        holderObjetivos = new GameObject("HolderObjetivos").transform;

        Estrada[] estrada = FindObjectsOfType<Estrada>();
        foreach (Estrada e in estrada)
            e.velocidade = velocidade * 3 / e.transform.lossyScale.z;


        Papete.Movimento anterior = Papete.Movimento.Repouso;
        for (float i = 4f; i < nucleo.ObterTempoTotal()*velocidade; i+=intervaloObjetivos)
        {
            float x = i/ (nucleo.ObterTempoTotal()*velocidade);
            print(x+" "+ nucleo.ObterMovimentoDesejadaEm(x));
            Papete.Movimento nova = nucleo.ObterMovimentoDesejadaEm(x);
            if(anterior == nova)
            {
                switch (nova)
                {
                    case Papete.Movimento.Dorsiflexao:
                        Instantiate(objetivoPrefab, new Vector3(maxPosObstaculo, 0f, i), Quaternion.Euler(0f, Random.Range(0f, 360f), 0f), holderObjetivos);
                        Instantiate(objetivoPrefab, new Vector3(0f, 0f, i), Quaternion.Euler(0f, Random.Range(0f, 360f), 0f), holderObjetivos);
                        break;
                    case Papete.Movimento.Flexao:
                        Instantiate(objetivoPrefab, new Vector3(-maxPosObstaculo, 0f, i), Quaternion.Euler(0f, Random.Range(0f, 360f), 0f), holderObjetivos);
                        Instantiate(objetivoPrefab, new Vector3(0f, 0f, i), Quaternion.Euler(0f, Random.Range(0f, 360f), 0f), holderObjetivos);
                        break;
                    default:
                        //Instantiate(objetivoPrefab, new Vector3(maxPosObstaculo, 0f, i), Quaternion.Euler(0f, Random.Range(0f, 360f), 0f), holderObjetivos);
                        //Instantiate(objetivoPrefab, new Vector3(-maxPosObstaculo, 0f, i), Quaternion.Euler(0f, Random.Range(0f, 360f), 0f), holderObjetivos);
                        break;
                }
            }
            anterior = nova;
        }
    }

    public void VoltarAoMenu()
    {
        SceneManager.LoadScene(0);
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = new Vector3(-nucleo.ObterPosVisualJogador().y*maxPosCarro, 0f, 0f);
        holderObjetivos.transform.position += Vector3.back * Time.deltaTime * velocidade;
        labelPontuacao.text = "Pontos: " + System.String.Format("{0:0.00}", nucleo.ObterPontuacaoAtual()) ;
    }
}
