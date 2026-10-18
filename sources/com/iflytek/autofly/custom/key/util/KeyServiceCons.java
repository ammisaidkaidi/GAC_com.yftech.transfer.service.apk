package com.iflytek.autofly.custom.key.util;

/* loaded from: /home/user/work/dex/classes.dex */
public class KeyServiceCons {
    public static final String SERVICE_ACTION = "com.iflytek.autofly.customkeyservice";

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
    public static final class IflyKeyState {
        public static final int DOWN = 101;
        public static final int LONG_EVENT = 103;
        public static final int LONG_UP = 104;
        public static final int UP = 102;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class IflyKeycode {
        public static final int KEYCODE_DOWN_LEFT = 1003;
        public static final int KEYCODE_DOWN_RIGHT = 1004;
        public static final int KEYCODE_MUSIC = 1006;
        public static final int KEYCODE_NAVI = 1008;
        public static final int KEYCODE_PHONE = 1007;
        public static final int KEYCODE_RADIO = 1005;
        public static final int KEYCODE_SRC = 1010;
        public static final int KEYCODE_UP_LEFT = 1001;
        public static final int KEYCODE_UP_RIGHT = 1002;
        public static final int KEYCODE_VOICE = 1009;
    }
}
