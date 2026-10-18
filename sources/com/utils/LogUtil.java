package com.utils;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtil {
    public static String TAG = "transfer.service1227";
    public static boolean allowD = true;
    public static boolean allowE = true;
    public static boolean allowI = true;
    public static boolean allowV = true;
    public static boolean allowW = true;

    private LogUtil() {
    }

    public static void d(String str) {
        if (allowD) {
            Log.d(TAG, str);
        }
    }

    public static void e(String str) {
        if (allowE) {
            Log.e(TAG, str);
        }
    }

    public static void e(Throwable th) {
        if (allowE) {
            Log.e(TAG, th.getMessage(), th);
        }
    }

    public static void i(String str) {
        if (allowI) {
            Log.i(TAG, str);
        }
    }

    public static void v(String str) {
        if (allowV) {
            Log.v(TAG, str);
        }
    }

    public static void w(String str) {
        if (allowW) {
            Log.w(TAG, str);
        }
    }
}
