package com.tencent.taiutils.log;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class DefaultLogger implements ILogger {
    @Override // com.tencent.taiutils.log.ILogger
    public void appenderClose() {
    }

    @Override // com.tencent.taiutils.log.ILogger
    public void appenderFlush(boolean z) {
    }

    @Override // com.tencent.taiutils.log.ILogger
    public void logD(String str, int i, long j, long j2, String str2) {
        Log.d(str, str2);
    }

    @Override // com.tencent.taiutils.log.ILogger
    public void logE(String str, int i, long j, long j2, String str2) {
        Log.e(str, str2);
    }

    @Override // com.tencent.taiutils.log.ILogger
    public void logI(String str, int i, long j, long j2, String str2) {
        Log.i(str, str2);
    }

    @Override // com.tencent.taiutils.log.ILogger
    public void logV(String str, int i, long j, long j2, String str2) {
        Log.v(str, str2);
    }

    @Override // com.tencent.taiutils.log.ILogger
    public void logW(String str, int i, long j, long j2, String str2) {
        Log.w(str, str2);
    }
}
