package com.tencent.taiutils.log;

import android.os.Looper;
import android.os.Process;
import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtils {
    public static String TAG = "LogUtils";
    public static ILogger mLogger = new DefaultLogger();
    public static boolean sOpenLog = false;

    public static void appenderClose() {
        mLogger.appenderClose();
    }

    public static void appenderFlush(boolean z) {
        mLogger.appenderFlush(z);
    }

    public static String build(String str, StackTraceElement stackTraceElement) {
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

    public static String build(String str, String str2, StackTraceElement stackTraceElement) {
        return "[" + str + "]" + build(str2, stackTraceElement);
    }

    public static String build(String str, String str2, StackTraceElement stackTraceElement, Throwable th) {
        return "[" + str + "]" + stackTraceElement.toString() + ":" + str2 + "\r\ne:" + th.getMessage();
    }

    public static void d(String str, String str2) {
        if (sOpenLog) {
            mLogger.logD(TAG, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void e(String str, String str2) {
        if (sOpenLog) {
            mLogger.logE(TAG, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), build(str, str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (sOpenLog) {
            mLogger.logE(TAG, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), formatLog(build(str, str2, new Throwable().getStackTrace()[1]), th));
        }
    }

    public static String formatLog(String str, Object... objArr) {
        if (objArr != null) {
            str = String.format(str, objArr);
        }
        return str == null ? "" : str;
    }

    public static void i(String str, String str2) {
        if (sOpenLog) {
            String build = build(str, str2, new Throwable().getStackTrace()[1]);
            mLogger.logI(TAG, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), "[" + str + "]" + build);
        }
    }

    public static void initXlog(String str, String str2, String str3) {
        TAG = str3;
        Log.d(str3, "initXlog logPath = " + str + " filePrefix = " + str2);
    }

    public static void setDebug(boolean z) {
        sOpenLog = z;
    }

    public static void setLogger(ILogger iLogger) {
        mLogger = iLogger;
    }

    public static void setTAG(String str) {
        TAG = str;
    }

    public static void v(String str, String str2) {
        if (!sOpenLog) {
            return;
        }
        String build = build(str, str2, new Throwable().getStackTrace()[1]);
        if (build.length() <= 1000) {
            mLogger.logV(TAG, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), "[" + str + "]" + build);
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1000;
            if (i2 >= build.length()) {
                mLogger.logV(TAG, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), "[" + str + "]" + build.substring(i, build.length() - 1));
                return;
            }
            mLogger.logV(TAG, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), "[" + str + "]" + build.substring(i, i2));
            i = i2;
        }
    }

    public static void w(String str, String str2) {
        if (sOpenLog) {
            String build = build(str, str2, new Throwable().getStackTrace()[1]);
            mLogger.logW(TAG, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), "[" + str + "]" + build);
        }
    }
}
