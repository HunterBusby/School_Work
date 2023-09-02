using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShardCollect : MonoBehaviour
{
    public AudioSource shardSound;
    private void OnTriggerEnter2D(Collider2D collider2D)
    {
        if (collider2D.gameObject.CompareTag("Shard_Pink"))
        {
            shardSound.Play();
            Destroy(collider2D.gameObject);
        }
    }
}
