package com.yftech.transfer.service.utils;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class TLog {
    private static final boolean DEBUG = true;
    private static final String TAG = "CarTransferService";

    public static void d(String str) {
        Log.d(TAG, str);
    }

    public static void i(String str) {
        Log.i(TAG, str);
    }

    public static void e(String str) {
        Log.e(TAG, str);
    }
}
