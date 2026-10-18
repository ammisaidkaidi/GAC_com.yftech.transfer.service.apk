package com.tencent.tai.pal.network;

import com.tencent.tai.pal.INoProguardInterface;

/* loaded from: /home/user/work/dex/classes.dex */
public interface INetwork extends INoProguardInterface {
    public static final int CONNECTION_STATE_CONNECTED = 1;
    public static final int CONNECTION_STATE_DISCONNECTED = 0;
    public static final int NETWORK_OPERATION_ERROR = -1;
    public static final int NETWORK_OPERATION_MANUAL = 2;
    public static final int NETWORK_OPERATION_NO_NEED = 0;
    public static final int NETWORK_OPERATION_SUCCESS = 1;
    public static final int NETWORK_TYPE_ETHERNET = 9;
    public static final int NETWORK_TYPE_MOBILE = 0;
    public static final int NETWORK_TYPE_UNKNOWN = -1;
    public static final int NETWORK_TYPE_WIFI = 1;
}
