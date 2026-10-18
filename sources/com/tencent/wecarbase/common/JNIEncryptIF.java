package com.tencent.wecarbase.common;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class JNIEncryptIF {
    public static native String decode(String str);

    public static native String encode(String str);

    public static native String encpypt(String str);

    public static native String sig(String str);

    static {
        try {
            System.loadLibrary("wecarbase");
        } catch (Exception e) {
            Log.e("JNIEncryptIF", Log.getStackTraceString(e));
        }
    }

    public static String encrypt(String str) {
        return encpypt(str);
    }
}
