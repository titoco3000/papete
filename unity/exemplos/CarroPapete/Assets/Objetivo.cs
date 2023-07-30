using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Objetivo : MonoBehaviour
{
    private CameraShaker shaker;
    private void OnCollisionEnter(Collision collision)
    {
        if(shaker == null)
            shaker = FindObjectOfType<CameraShaker>();
        shaker.Tremer();
    }
}
