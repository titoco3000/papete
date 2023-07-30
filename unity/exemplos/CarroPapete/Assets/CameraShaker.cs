using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraShaker : MonoBehaviour
{
    public float frequencia = 0.1f;
    public float amplitude = 0.2f;
    public float tempo = 0.5f;

    private float horaDeParar = 0f;
    private float ultimaMudancaDeDirecao;
    private Vector3 posInicial;
    private Vector3 posEscolhida;
    public bool temp;
    private void Start()
    {
        posInicial = transform.position;
        posEscolhida = posInicial;
    }
    public void Tremer()
    {
        horaDeParar = Time.time + tempo;
    }
    private void Update()
    {
        if(temp)
        {
            Tremer();
            temp = false;
        }
        if(Time.time > horaDeParar)
        {
            transform.position = Vector3.Lerp(transform.position, posInicial, Time.deltaTime / frequencia);
        }
        else
        {
            if(Time.time -ultimaMudancaDeDirecao > frequencia)
            {
                posEscolhida = posInicial + new Vector3(Random.Range(-1f, 1f), Random.Range(-1f, 1f), Random.Range(-1f, 1f)).normalized * amplitude;
                ultimaMudancaDeDirecao = Time.time;
            }

            transform.position = Vector3.Lerp(transform.position, posEscolhida, Time.deltaTime / frequencia);
        }
    }
}
