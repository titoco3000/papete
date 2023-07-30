using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(MeshRenderer))]
public class Estrada : MonoBehaviour
{
    public float velocidade;
    private MeshRenderer MeshRendererLinhas;
    void Start()
    {
        MeshRendererLinhas = GetComponent<MeshRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        MeshRendererLinhas.material.mainTextureOffset += Vector2.down * Time.deltaTime*velocidade;
    }
}
