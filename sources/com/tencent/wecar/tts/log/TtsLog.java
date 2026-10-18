package com.tencent.wecar.tts.log;

import android.support.annotation.Keep;
import android.util.Log;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class TtsLog {
    private static ILog sLog = new ILog() { // from class: com.tencent.wecar.tts.log.TtsLog.1
        @Override // com.tencent.wecar.tts.log.ILog
        public void e(String str, String str2, Throwable th) {
            Log.e(str, str2, th);
        }

        @Override // com.tencent.wecar.tts.log.ILog
        public void e(String str, String str2) {
            Log.e(str, str2);
        }

        @Override // com.tencent.wecar.tts.log.ILog
        public void w(String str, String str2) {
            Log.w(str, str2);
        }

        @Override // com.tencent.wecar.tts.log.ILog
        public void i(String str, String str2) {
            Log.i(str, str2);
        }

        @Override // com.tencent.wecar.tts.log.ILog
        public void d(String str, String str2) {
            Log.d(str, str2);
        }

        @Override // com.tencent.wecar.tts.log.ILog
        public void v(String str, String str2) {
            Log.v(str, str2);
        }
    };

    private TtsLog() {
    }

    public static void setLog(ILog iLog) {
        sLog = iLog;
    }

    public static void e(String str, String str2, Throwable th) {
        sLog.e(str, str2, th);
    }

    public static void e(String str, String str2) {
        sLog.e(str, str2);
    }

    public static void e(String str, Throwable th) {
        e(str, "", th);
    }

    public static void w(String str, String str2) {
        sLog.w(str, str2);
    }

    public static void i(String str, String str2) {
        sLog.i(str, str2);
    }

    public static void d(String str, String str2) {
        sLog.d(str, str2);
    }

    public static void v(String str, String str2) {
        sLog.v(str, str2);
    }
}
