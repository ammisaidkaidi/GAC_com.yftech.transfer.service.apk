package com.iflytek.autofly.custom.bluetooth.util;

/* loaded from: /home/user/work/dex/classes.dex */
public final class BluetoothServiceCons {
    public static final String SERVICE_ACTION = "com.iflytek.autofly.custombluetoothservice";

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class A2dpConnectionStatus {
        public static final int A2DP_CONNECTED = 1;
        public static final int A2DP_DISCONNECTD = 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class AidlStatus {
        public static final int SERVICE_AIDL_BINDING = 2;
        public static final int SERVICE_AIDL_BOUND = 3;
        public static final int SERVICE_AIDL_DISCONNECTED = 4;
        public static final int SERVICE_AIDL_NOT_BOUND = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class BluetoothClientType {
        public static final int CLIENT_TYPE_DEFAULT = 1;
        public static final int CLIENT_TYPE_MUSIC = 2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CallStatus {
        public static final int CALL_ACTIVE = 4;
        public static final int CALL_DISCONNECT = 5;
        public static final int CALL_INCOMING = 1;
        public static final int CALL_NOTHING = 0;
        public static final int CALL_OUTING = 2;
        public static final int CALL_REMOTE_RING = 3;
        public static final int CALL_WAITING = 6;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ConnectionStatus {
        public static final int CONNECTION_CONNECTED = 1;
        public static final int CONNECTION_CONNECTED_SYNC_FAILED = 5;
        public static final int CONNECTION_CONNECTED_SYNC_REJECTED = 7;
        public static final int CONNECTION_CONNECTED_SYNC_TIMEOUT = 6;
        public static final int CONNECTION_CONNECTING = 2;
        public static final int CONNECTION_CONNECT_FAILED = 3;
        public static final int CONNECTION_DISCONNECT = 0;
        public static final int CONNECTION_UNPAIRED = 4;
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
        public static final int ERROR_VCARD_PROCESSING = -1011;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class MusicStatus {
        public static final int MUSIC_PLAYING = 0;
        public static final int MUSIC_STOPPED = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class PhoneBookType {
        public static final int DOWNLOAD_ALLCALL = 4;
        public static final int DOWNLOAD_DIALCALL = 2;
        public static final int DOWNLOAD_MISSCALL = 3;
        public static final int DOWNLOAD_PHONEBOOK = 0;
        public static final int DOWNLOAD_RECVCALL = 1;
    }
}
