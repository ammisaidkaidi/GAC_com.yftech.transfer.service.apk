package com.tencent.wecarspeech.sdk.util;

import android.support.annotation.Keep;
import android.util.Log;
import java.io.FileWriter;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtils {
    public static final String GLOBAL_LOG_TAG = "_TAS_SPEECH_";
    private static final String TAG = "_TAS_SPEECH_";
    public static boolean enableTraceLog = false;
    private static FileWriter mFileWriter = null;
    private static boolean sOpenLog = true;
    private static final boolean sOpenLogToFile = false;

    private static String build(String str, StackTraceElement stackTraceElement) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (stackTraceElement.isNativeMethod()) {
            str2 = "(Native Method)";
        } else {
            String fileName = stackTraceElement.getFileName();
            if (fileName == null) {
                str2 = "(Unknown Source)";
            } else {
                int lineNumber = stackTraceElement.getLineNumber();
                sb.append('(');
                sb.append(fileName);
                if (lineNumber >= 0) {
                    sb.append(':');
                    sb.append(lineNumber);
                }
                str2 = "):";
            }
        }
        sb.append(str2);
        sb.append(str);
        return sb.toString();
    }

    private static String build(String str, String str2, StackTraceElement stackTraceElement) {
        return "[" + str + "]" + build(str2, stackTraceElement);
    }

    private static String build(String str, String str2, StackTraceElement stackTraceElement, Throwable th) {
        return "[" + str + "]" + stackTraceElement.toString() + ":" + str2 + "\r\ne:" + th.getMessage();
    }

    public static void d(String str, String str2) {
        if (sOpenLog) {
            Log.d("_TAS_SPEECH_", "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void e(String str, String str2) {
        if (sOpenLog) {
            Log.e("_TAS_SPEECH_", build(str, str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (sOpenLog) {
            Log.e("_TAS_SPEECH_", build(str, str2, new Throwable().getStackTrace()[1]), th);
        }
    }

    public static void i(String str, String str2) {
        if (sOpenLog) {
            Log.i("_TAS_SPEECH_", "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void setOpenLog(boolean z) {
        sOpenLog = z;
    }

    public static void t(String str, String str2) {
        if (enableTraceLog) {
            Log.d("_TAS_SPEECH_", "[Trace][" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void v(String str, String str2) {
        if (sOpenLog) {
            Log.v("_TAS_SPEECH_", "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void w(String str, String str2) {
        if (sOpenLog) {
            Log.w("_TAS_SPEECH_", build(str, str2, new Throwable().getStackTrace()[1]));
        }
    }

    private static void writeToFile(String str) {
    }
}
