using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DetectorForaDaTela : MonoBehaviour
{
    public Vector3 dir;
    public Action<float> eventoResultado;
    private float passos = 1f;
    public static void Buscar(Vector3 origem, Vector3 direcao, Action<float> eventoResultado)
    {
        GameObject temp = new GameObject("temp", typeof(SpriteRenderer));
        DetectorForaDaTela df = temp.AddComponent<DetectorForaDaTela>();
        df.transform.position = origem;
        df.dir = direcao.normalized;
        df.eventoResultado = eventoResultado;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = dir * (passos++);
    }
    private void OnBecameInvisible()
    {
        eventoResultado.Invoke(passos);
        Destroy(this.gameObject);
    }
}
