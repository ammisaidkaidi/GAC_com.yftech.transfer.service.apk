package com.utils;

import android.os.SystemProperties;

/* loaded from: /home/user/work/dex/classes.dex */
public class IphoneLinkUtils {
    public static void startIAP2Test() {
        SystemProperties.set("ctl.start", "iAP2Test");
        LogUtil.i("startIAP2Test()");
    }

    public static void stopIAP2Test() {
        SystemProperties.set("ctl.stop", "iAP2Test");
        LogUtil.i("stopIAP2Test()");
    }

    public static void startIAPD() {
        SystemProperties.set("ctl.start", "iapd");
        LogUtil.i("startIAPD()");
    }

    public static void stopIAPD() {
        SystemProperties.set("ctl.stop", "iapd");
        LogUtil.i("stopIAPD()");
    }

    public static void startmfi_auth() {
        SystemProperties.set("ctl.start", "mfi_auth");
        LogUtil.i("startmfi_auth()");
    }

    public static void stopmfi_auth() {
        SystemProperties.set("ctl.stop", "mfi_auth");
        LogUtil.i("stopmfi_auth()");
    }
}
