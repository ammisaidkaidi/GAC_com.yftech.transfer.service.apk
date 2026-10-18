package com.yftech.transfer.txznet.access;

import android.content.Intent;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class AbsBaseAdapter {
    public static final int SYS_KEY_TYPE_APP = 1000;
    public static final int SYS_KEY_TYPE_BLUETOOTH = 1040;
    public static final int SYS_KEY_TYPE_DVR = 1070;
    public static final int SYS_KEY_TYPE_MEDIA = 1060;
    public static final int SYS_KEY_TYPE_RADIO = 1050;
    public static final int SYS_KEY_TYPE_SCREEN = 1020;
    public static final int SYS_KEY_TYPE_SYS = 1010;
    public static final int SYS_KEY_TYPE_VEHICLE = 1080;
    public static final int SYS_KEY_TYPE_VOLUME = 1030;
    public static final int TXZ_KEY_TYPE_AC = 2080;
    public static final int TXZ_KEY_TYPE_ACCESS = 2400;
    public static final int TXZ_KEY_TYPE_APP = 2000;
    public static final int TXZ_KEY_TYPE_BLUETOOTH = 2040;
    public static final int TXZ_KEY_TYPE_DVR = 2070;
    public static final int TXZ_KEY_TYPE_MEDIA = 2060;
    public static final int TXZ_KEY_TYPE_RADIO = 2050;
    public static final int TXZ_KEY_TYPE_SCREEN = 2020;
    public static final int TXZ_KEY_TYPE_SYS = 2010;
    public static final int TXZ_KEY_TYPE_VOLUME = 2030;

    public abstract String dispatch(Intent intent);
}
