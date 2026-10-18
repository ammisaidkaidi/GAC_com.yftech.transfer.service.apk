package android.hardware.audioadapter.V1_0;

import android.os.IHwBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class DspManager implements IHwBinder.DeathRecipient {
    public static final int CHANNEL_MEDIA = 1;
    public static final int CHANNEL_NAVI = 3;
    public static final int CHANNEL_PHONE = 4;
    public static final int CHANNEL_RADAR = 6;
    public static final int CHANNEL_RADIO = 2;
    public static final int CHANNEL_TBOX = 7;
    public static final int CHANNEL_TTS = 5;
    public static final int DTS_SOUND_POSITION_ALL = 2;
    public static final int DTS_SOUND_POSITION_FRONT = 0;
    public static final int DTS_SOUND_POSITION_REAR = 1;
    public static final int DTS_TYPE_DEFAULT = 0;
    public static final int DTS_TYPE_SOOTHING = 3;
    public static final int DTS_TYPE_STAGE = 4;
    public static final int DTS_TYPE_SUPER_BASS = 2;
    public static final int DTS_TYPE_VOICE = 1;
    public static final int EQ_TYPE_BASS_BOOST = 10;
    public static final int EQ_TYPE_CLASSIC = 8;
    public static final int EQ_TYPE_CUSTOM = 1;
    public static final int EQ_TYPE_DANCE = 7;
    public static final int EQ_TYPE_DEFAULT = 0;
    public static final int EQ_TYPE_FOLK = 3;
    public static final int EQ_TYPE_JAZZ = 5;
    public static final int EQ_TYPE_POP = 6;
    public static final int EQ_TYPE_ROCK = 4;
    public static final int EQ_TYPE_TREBLE_BOOST = 9;
    public static final int EQ_TYPE_VOICE = 2;
    public static final int SCENE_SOUND_EFFECT_KTV = 1;
    public static final int SCENE_SOUND_EFFECT_MOVIE = 0;
    public static final int SCENE_SOUND_EFFECT_NONE = -1;
    private static DspManager SELF = null;
    private static final String TAG = "DspManager";
    public static final int VOICE_SOUND_SPEAKER_FRONT_LEFT = 1;
    public static final int VOICE_SOUND_SPEAKER_FRONT_RIGHT = 2;
    public static final int VOICE_SOUND_SPEAKER_REAR_LEFT = 4;
    public static final int VOICE_SOUND_SPEAKER_REAR_RIGHT = 8;
    private IDspService mService;

    public static DspManager getInstance() {
        if (SELF == null) {
            SELF = new DspManager();
        }
        return SELF;
    }

    private DspManager() {
    }

    private IDspService getService() {
        if (this.mService == null || this.mService.asBinder() == null) {
            try {
                IDspService service = IDspService.getService(false);
                service.asBinder().linkToDeath(this, 1L);
                this.mService = service;
                Log.i(TAG, "get service");
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return this.mService;
    }

    @Override // android.os.IHwBinder.DeathRecipient
    public void serviceDied(long j) {
        Log.i(TAG, "serviceDied:" + j);
        this.mService = null;
    }

    public boolean openChannel(int i) {
        try {
            return getService().openChannel(i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean closeChannel(int i) {
        try {
            return getService().closeChannel(i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setChannelVolume(int i, float f) {
        try {
            return getService().setChannelVolume(i, f);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public float getChannelVolume(int i) {
        try {
            return getService().getChannelVolume(i);
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    public boolean setChannelMute(int i, boolean z) {
        try {
            return getService().setChannelMute(i, z);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isChannelMute(int i) {
        try {
            return getService().isChannelMute(i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setEQEnable(boolean z) {
        try {
            return getService().setEQEnable(z);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setEQType(int i) {
        try {
            return getService().setEQType(i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public float[] getEQTypeBandValues(int i) {
        try {
            ArrayList<Float> eQTypeBandValues = getService().getEQTypeBandValues(i);
            if (eQTypeBandValues != null && eQTypeBandValues.size() != 0) {
                float[] fArr = new float[eQTypeBandValues.size()];
                for (int i2 = 0; i2 < eQTypeBandValues.size(); i2++) {
                    fArr[i2] = eQTypeBandValues.get(i2).floatValue();
                }
                return fArr;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public float[] getBandMaxValue() {
        try {
            ArrayList<Float> bandMaxValue = getService().getBandMaxValue();
            if (bandMaxValue != null && bandMaxValue.size() != 0) {
                float[] fArr = new float[bandMaxValue.size()];
                for (int i = 0; i < bandMaxValue.size(); i++) {
                    fArr[i] = bandMaxValue.get(i).floatValue();
                }
                return fArr;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public float[] getBandMinValue() {
        try {
            ArrayList<Float> bandMinValue = getService().getBandMinValue();
            if (bandMinValue != null && bandMinValue.size() != 0) {
                float[] fArr = new float[bandMinValue.size()];
                for (int i = 0; i < bandMinValue.size(); i++) {
                    fArr[i] = bandMinValue.get(i).floatValue();
                }
                return fArr;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int[] getBands() {
        try {
            ArrayList<Integer> bands = getService().getBands();
            if (bands != null && bands.size() != 0) {
                int[] iArr = new int[bands.size()];
                for (int i = 0; i < bands.size(); i++) {
                    iArr[i] = bands.get(i).intValue();
                }
                return iArr;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean setBandValue(float[] fArr, float[] fArr2) {
        if (fArr == null) {
            return false;
        }
        try {
            ArrayList<Float> arrayList = new ArrayList<>();
            for (float f : fArr) {
                arrayList.add(Float.valueOf(f));
            }
            ArrayList<Float> arrayList2 = new ArrayList<>();
            for (float f2 : fArr2) {
                arrayList2.add(Float.valueOf(f2));
            }
            return getService().setBandValue(arrayList, arrayList2);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public float getDelayMaxValue() {
        try {
            return getService().getDelayMaxValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    public float getDelayMinValue() {
        try {
            return getService().getDelayMinValue();
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    public float getDelayPrecision() {
        try {
            return getService().getDelayPrecision();
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    public boolean setDelayValue(float f, float f2, float f3, float f4) {
        try {
            return getService().setDelayValue(f, f2, f3, f4);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setDtsEnable(boolean z) {
        try {
            return getService().setDtsEnable(z);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setDtsType(int i) {
        try {
            return getService().setDtsType(i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setDtsSoundPosition(int i) {
        try {
            return getService().setDtsSoundPosition(i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public float[] getBandMinQ() {
        try {
            ArrayList<Float> bandMinQ = getService().getBandMinQ();
            if (bandMinQ != null && bandMinQ.size() != 0) {
                float[] fArr = new float[bandMinQ.size()];
                for (int i = 0; i < bandMinQ.size(); i++) {
                    fArr[i] = bandMinQ.get(i).floatValue();
                }
                return fArr;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public float[] getBandMaxQ() {
        try {
            ArrayList<Float> bandMaxQ = getService().getBandMaxQ();
            if (bandMaxQ != null && bandMaxQ.size() != 0) {
                float[] fArr = new float[bandMaxQ.size()];
                for (int i = 0; i < bandMaxQ.size(); i++) {
                    fArr[i] = bandMaxQ.get(i).floatValue();
                }
                return fArr;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public float[] getEQTypeBandQs(int i) {
        try {
            ArrayList<Float> eQTypeBandQs = getService().getEQTypeBandQs(i);
            if (eQTypeBandQs != null && eQTypeBandQs.size() != 0) {
                float[] fArr = new float[eQTypeBandQs.size()];
                for (int i2 = 0; i2 < eQTypeBandQs.size(); i2++) {
                    fArr[i2] = eQTypeBandQs.get(i2).floatValue();
                }
                return fArr;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean setVoiceSoundSpeaker(int i) {
        try {
            return getService().setVoiceSoundSpeaker(i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getVoiceSoundSpeaker() {
        try {
            return getService().getVoiceSoundSpeaker();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean setBalance(float f, float f2, float f3, float f4) {
        try {
            return getService().setBalance(f, f2, f3, f4);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setBalanceXY(float f, float f2) {
        try {
            return getService().setBalanceXY(f, f2);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setSceneSoundEffectType(int i) {
        try {
            return getService().setSceneSoundEffectType(i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
