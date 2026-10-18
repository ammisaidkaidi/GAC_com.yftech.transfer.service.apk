package com.tencent.wecarbase.common;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class JNIGeoIF {
    public static native String geo(String str);

    static {
        try {
            System.loadLibrary("geo");
        } catch (Exception e) {
            Log.e("JNIGeoIF", Log.getStackTraceString(e));
        }
    }

    public static String getGeo(String str) {
        return geo(str);
    }
}
