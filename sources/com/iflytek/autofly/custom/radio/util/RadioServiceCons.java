package com.iflytek.autofly.custom.radio.util;

/* loaded from: /home/user/work/dex/classes.dex */
public class RadioServiceCons {
    public static final String SERVICE_ACTION = "com.iflytek.autofly.customradioservice";

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AidlStatus {
        public static final int SERVICE_AIDL_BINDING = 2;
        public static final int SERVICE_AIDL_BOUND = 3;
        public static final int SERVICE_AIDL_DISCONNECTED = 4;
        public static final int SERVICE_AIDL_NOT_BOUND = 1;
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
    public static final class RadioAudio {
        public static final int AUDIO_CLOSE_BASE = 100;
        public static final int AUDIO_OPRITY = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class RadioBand {
        public static final int AM = 1;
        public static final int FM = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class RadioMode {
        public static final int LOCAL_MODE = 1;
        public static final int REMOTE_MODE = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class RadioSignalStrength {
        public static final int LEVEL_0 = 0;
        public static final int LEVEL_1 = 1;
        public static final int LEVEL_2 = 2;
        public static final int LEVEL_3 = 3;
        public static final int LEVEL_4 = 4;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class RadioState {
        public static final int PLAYING = 1;
        public static final int PLAYSTOP = 2;
        public static final int SCANNING = 4;
        public static final int SCANOVER = 3;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class RadioType {
        public static final String AM = "am";
        public static final String FM = "fm";
    }
}
