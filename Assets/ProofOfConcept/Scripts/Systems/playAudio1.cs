//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using UnityEngine.Audio;

//public class playAudio1 : MonoBehaviour
//{

//    public AudioClip[] clips, switchedClips, secondClips;
//    public bool clipsSwitched = false;
//    public bool playedAudio = false;
//	public static bool growingSize = false;
//    AudioSource audio;
//    public int timeScale = 0;

//    public AudioMixerGroup silentMix;
//    public AudioMixerGroup regularMix;


//    public float timer = 1;
//    float timerStartVal = 1;

//    public bool sprVisisble = false;

//    //PlantLife plantlife;

//    //Revise this script so that all AudioClips are taken from Species
//    //In order to do this^ must create dictionaries for each stage of PlantLife

//    private void Awake()
//    {
//        timerStartVal = timer;

//        //plantlife = GetComponent<PlantLife>();

//        SimpleClock.ThirtySecond += OnThirtySecond;
//        //audio.clip = clips [Random.Range (0, 1)];
//    }

//    private void OnDestroy()
//    {
//        SimpleClock.ThirtySecond -= OnThirtySecond;
//    }



//    void OnThirtySecond(BeatArgs e)
//    {
//        if (e.TickMask[TickValue.Eighth])
//        {
//            //	audio.clip = clips [Random.Range (0, 1)];
//            //audio.Play ();
//        }


//    }

//    // Use this for initialization
//    void Start()
//    {
//        audio = GetComponent<AudioSource>();
//        audio.clip = clips[Random.Range(0, 7)];
//        timeScale = Random.Range(1, 5);
//    }

//    // Update is called once per frame
//    void Update()
//    {

//		if (audio.isPlaying && audio.outputAudioMixerGroup == regularMix)
//        {
//			growingSize = true;
//			Debug.Log ("PLAYING");
//            timer -= Time.deltaTime;

//            if (timer > 0)
//            {
				
//                sprVisisble = true;
//            }
//            else
//            {
				
//                sprVisisble = false;
//            }
//        }
//        else
//        {
//			growingSize = false;
//			Debug.Log ("NOT");
//            timer = timerStartVal;
//        }

//        //switch (plantlife.ageCounter)
//        {
//            case 0:

//                if (!clipsSwitched)
//                {
//                    audio.clip = clips[Random.Range(0, 7)];
//                    clipsSwitched = true;
//                }

//                AudioCycler();
//                break;

//            case 1:
//                if (!clipsSwitched)
//                {
//                    audio.clip = switchedClips[Random.Range(0, 3)];
//                    clipsSwitched = true;
//                }

//                AudioCycler();

//                break;

//            case 2:
//                if (!clipsSwitched)
//                {
//                    audio.clip = secondClips[Random.Range(0, 4)];
//                    clipsSwitched = true;
//                }


//                AudioCycler();

//                break;
//            case 3:
//                if (!clipsSwitched)
//                {
//                    audio.clip = secondClips[Random.Range(0, 4)];
//                    clipsSwitched = true;
//                }

//                AudioCycler();

//                break;
//            case 4:
//                audio.Stop();
//                break;


//        }
//    }

//        void AudioCycler()
//        {
//            if (!playedAudio)
//            {
//                timeScale = Random.Range (0, 4);

//                if (timeScale == 1)
//                {
//                    audio.PlayScheduled(SimpleClock.AtNextEighth());
//                    //audio.SetScheduledEndTime (SimpleClock.AtNextSixteenthTriplet () + SimpleClock.AtNextHalf ());
//                    playedAudio = true;
//                }
//                else if (timeScale == 2)
//                {
//                    audio.PlayScheduled(SimpleClock.AtNextEighthTriplet());
//                    //audio.SetScheduledEndTime (SimpleClock.AtNextEighth() + SimpleClock.AtNextHalf ());
//                    playedAudio = true;
//                }
//                else if (timeScale == 3)
//                {
//                    audio.PlayScheduled(SimpleClock.AtNextSixteenth());
//                    //audio.SetScheduledEndTime (SimpleClock.AtNextHalf () + SimpleClock.AtNextSixteenth());
//                    playedAudio = true;
//                }
//                else if (timeScale == 0)
//                {
//                    audio.PlayScheduled(SimpleClock.AtNextQuarterTriplet());
//                    //audio.SetScheduledEndTime (SimpleClock.AtNextQuarter() + SimpleClock.AtNextBeat());
//                    playedAudio = true;
//                }
//            }
//            else
//            {
//                if (!audio.isPlaying && audio.outputAudioMixerGroup == regularMix)
//                {
//                    audio.outputAudioMixerGroup = silentMix;
//                    //lastClip = audio.clip;

//                    //audio.clip = null;

//                    if (timeScale == 1)
//                    {
//                        audio.PlayScheduled(SimpleClock.AtNextEighth());
//                        //audio.SetScheduledEndTime (SimpleClock.AtNextSixteenthTriplet () + SimpleClock.AtNextHalf ());
//                        //playedAudio = true;
//                    }
//                    else if (timeScale == 2)
//                    {
//                        audio.PlayScheduled(SimpleClock.AtNextEighthTriplet());
//                        //audio.SetScheduledEndTime (SimpleClock.AtNextEighth() + SimpleClock.AtNextHalf ());
//                        //playedAudio = true;
//                    }
//                    else if (timeScale == 3)
//                    {
//                        audio.PlayScheduled(SimpleClock.AtNextSixteenth());
//                        //audio.SetScheduledEndTime (SimpleClock.AtNextHalf () + SimpleClock.AtNextSixteenth());
//                        //playedAudio = true;
//                    }
//                    else if (timeScale == 0)
//                    {
//                        audio.PlayScheduled(SimpleClock.AtNextQuarterTriplet());
//                        //audio.SetScheduledEndTime (SimpleClock.AtNextQuarter() + SimpleClock.AtNextBeat());
//                        //playedAudio = true;
//                    }

//                    //playedAudio = false;

//                }
//                else if (!audio.isPlaying && audio.outputAudioMixerGroup == silentMix)
//                {
//                    audio.outputAudioMixerGroup = regularMix;
//                    playedAudio = false;
//                }
//            }
//    }
//}
