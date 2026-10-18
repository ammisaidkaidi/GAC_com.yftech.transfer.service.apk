package com.tencent.car.wechatsdk.utils.log;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class DefaultLogger implements ILogger {
    private static int level = 6;
    private final String TAG = "DefaultLogger";
    private Handler handler = new Handler(Looper.getMainLooper());

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void appenderClose() {
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void appenderFlush(boolean z) {
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void setLevel(int i) {
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void logV(String str, String str2, String str3, int i, int i2, long j, long j2, String str4) {
        if (level >= 0) {
            Log.v(str, str4);
        }
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void logI(String str, String str2, String str3, int i, int i2, long j, long j2, String str4) {
        if (level >= 2) {
            Log.i(str, str4);
        }
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void logD(String str, String str2, String str3, int i, int i2, long j, long j2, String str4) {
        if (level >= 1) {
            Log.d(str, str4);
        }
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void logW(String str, String str2, String str3, int i, int i2, long j, long j2, String str4) {
        if (level >= 3) {
            Log.w(str, str4);
        }
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void logE(String str, String str2, String str3, int i, int i2, long j, long j2, String str4) {
        if (level >= 4) {
            Log.e(str, str4);
        }
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public void logF(String str, String str2, String str3, int i, int i2, long j, long j2, String str4) {
        if (level >= 5) {
            Log.e(str, str4);
        }
    }

    @Override // com.tencent.car.wechatsdk.utils.log.ILogger
    public int getLogLevel() {
        return level;
    }
}
