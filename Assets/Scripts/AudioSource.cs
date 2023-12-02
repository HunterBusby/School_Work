
using UnityEngine;

public class SoundController : MonoBehaviour
{
    public AudioSource audioSource;

    void Start()
    {
        audioSource.Play(); // Play the sound at the start
    }

    public void PlaySound()
    {
        if (!audioSource.isPlaying)
        {
            audioSource.Play();
        }
    }

    public void StopSound()
    {
        audioSource.Stop();
    }
}
