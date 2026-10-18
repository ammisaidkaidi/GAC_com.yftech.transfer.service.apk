package com.tencent.wecarflow.contentsdk.utils;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtils {
    private static final String TAG = "FlowContentSDK";

    public static void d(String str, String str2) {
        Log.d("FlowContentSDK_" + str, str2);
    }

    public static void e(String str, String str2) {
        Log.e("FlowContentSDK_" + str, str2);
    }

    public static void i(String str, String str2) {
        Log.i("FlowContentSDK_" + str, str2);
    }

    public static void v(String str, String str2) {
        Log.v("FlowContentSDK_" + str, str2);
    }

    public static void w(String str, String str2) {
        Log.w("FlowContentSDK_" + str, str2);
    }
}
