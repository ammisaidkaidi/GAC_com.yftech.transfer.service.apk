package com.iflytek.autofly.custom.audio.util;

/* loaded from: /home/user/work/dex/classes.dex */
public final class AudioServiceCons {
    public static final String SERVICE_ACTION = "com.iflytek.autofly.customaudioservice";

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AidlStatus {
        public static final int SERVICE_AIDL_BINDING = 2;
        public static final int SERVICE_AIDL_BOUND = 3;
        public static final int SERVICE_AIDL_DISCONNECTED = 4;
        public static final int SERVICE_AIDL_NOT_BOUND = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AudioChannel {
        public static final int AI = 30;
        public static final int AM = 7;
        public static final int BT_A2DP = 4;
        public static final int BT_TEL = 5;
        public static final int BUILTIN_MUSIC = 26;
        public static final int BUILTIN_PICTURE = 28;
        public static final int BUILTIN_VIDEO = 27;
        public static final int FM = 8;
        public static final int GAME = 29;
        public static final int MEDIA = 1;
        public static final int ONLINE_MUSIC = 14;
        public static final int ONLINE_NEWS = 25;
        public static final int ONLINE_PROGRAM = 10;
        public static final int ONLINE_RADIO = 9;
        public static final int ONLINE_VIDEO = 12;
        public static final int OTHERS = 0;
        public static final int PICTURE = 13;
        public static final int RADIO = 2;
        public static final int TTS = 3;
        public static final int USB0 = 15;
        public static final int USB1 = 16;
        public static final int USB2 = 17;
        public static final int USB3 = 18;
        public static final int USB4 = 19;
        public static final int USB5 = 20;
        public static final int USB6 = 21;
        public static final int USB7 = 22;
        public static final int USB8 = 23;
        public static final int USB9 = 24;
        public static final int VIDEO = 11;
        public static final int VR = 6;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class EQ_MODE {
        public static final int EQ_MODE_BLUES = 6;
        public static final int EQ_MODE_CLASSICAL = 4;
        public static final int EQ_MODE_COUNTRY = 8;
        public static final int EQ_MODE_DANCE = 5;
        public static final int EQ_MODE_DEFAULT = 0;
        public static final int EQ_MODE_ELECTRON = 7;
        public static final int EQ_MODE_FASHION = 1;
        public static final int EQ_MODE_JAZZ = 2;
        public static final int EQ_MODE_ROCK = 3;
        public static final int EQ_MODE_USER = 9;
        public static final int SOUND_MODE_BASS = 12;
        public static final int SOUND_MODE_CLEAR = 11;
        public static final int SOUND_MODE_NATURE = 10;
        public static final int SOUND_MODE_RESET = 13;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ErrorCode {
        public static final int ERROR_AIDL_BINDING = -1004;
        public static final int ERROR_AIDL_NOT_BOUND = -1005;
        public static final int ERROR_AIDL_NO_SERVICE = -1006;
        public static final int ERROR_AIDL_UNBINDING = -1010;
        public static final int ERROR_BASE = -1000;
        public static final int ERROR_COMMON = -1003;
        public static final int ERROR_INVALID_ARG_VALUE = -1008;
        public static final int ERROR_NOT_SUPPORT = -1009;
        public static final int ERROR_OK = 0;
        public static final int ERROR_PARAM_NULL = -1002;
        public static final int ERROR_PARAM_OUTOFBOUND = -1001;
        public static final int ERROR_REBUNDANCE_LISTENER = -1007;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class SoundModeConstants {
        public static final int SOUND_KEY_BASS = 5;
        public static final int SOUND_KEY_DRIVER_EFFECTMODE = 2;
        public static final int SOUND_KEY_EFFECT_MODE = 1;
        public static final int SOUND_KEY_MIDDLE = 4;
        public static final int SOUND_KEY_SOUND_STAGE = 0;
        public static final int SOUND_KEY_TREBLE = 3;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class SoundStage {
        public static final int SOUND_SETTING_ALL_PASSENGER = 2;
        public static final int SOUND_SETTING_DRIVER = 1;
        public static final int SOUND_SETTING_OFF = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class XF6010_BEAM_FORM {
        public static final int ALL = 0;
        public static final int AUTO = 3;
        public static final int LEFT = 1;
        public static final int RIGHT = 2;
        public static final int USE_BEAM_0 = 4;
        public static final int USE_BEAM_1 = 5;
        public static final int USE_BEAM_2 = 6;
        public static final int USE_BEAM_3 = 7;
        public static final int USE_BEAM_OFF = 8;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class XF6010_ENVIRONMENT_MODE {
        public static final int ACTIVE_MIC = 2;
        public static final int DEF = 0;
        public static final int PASSIVE_MIC = 1;
        public static final int PHONE = 3;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class XF6010_FUNC_MODE {
        public static final int AEC_MUSIC = 5;
        public static final int AEC_TEL = 4;
        public static final int NOISECLEAN = 1;
        public static final int PASSBY = 0;
        public static final int PHONE = 2;
        public static final int REC_BEAM = 9;
        public static final int REC_MAE = 10;
        public static final int REC_OFF = 11;
        public static final int WAKEUP = 3;
        public static final int WAKEUP_FOURE = 7;
        public static final int WAKEUP_OFF = 8;
        public static final int WAKEUP_TWO = 6;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class XF6010_SAMPLE_RATE {
        public static final int K16 = 16000;
        public static final int K24 = 24000;
        public static final int K8 = 8000;
    }
}
