package com.iflytek.autofly.custom.tbox.util;

/* loaded from: /home/user/work/dex/classes.dex */
public class TboxServiceCons {
    public static final String SERVICE_ACTION = "com.iflytek.autofly.customtboxservice";

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
    public static final class TboxSignalStrength {
        public static final int LEVEL_0 = 0;
        public static final int LEVEL_1 = 1;
        public static final int LEVEL_2 = 2;
        public static final int LEVEL_3 = 3;
        public static final int LEVEL_4 = 4;
        public static final int LEVEL_5 = 5;
    }
}
