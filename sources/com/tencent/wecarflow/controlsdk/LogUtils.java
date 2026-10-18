package com.tencent.wecarflow.controlsdk;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
class LogUtils {
    private static final String TAG = "FlowControlSDK";

    LogUtils() {
    }

    public static void d(String str, String str2) {
        Log.d("FlowControlSDK_" + str, str2);
    }

    public static void e(String str, String str2) {
        Log.e("FlowControlSDK_" + str, str2);
    }

    public static void i(String str, String str2) {
        Log.i("FlowControlSDK_" + str, str2);
    }

    public static void v(String str, String str2) {
        Log.v("FlowControlSDK_" + str, str2);
    }

    public static void w(String str, String str2) {
        Log.w("FlowControlSDK_" + str, str2);
    }
}
