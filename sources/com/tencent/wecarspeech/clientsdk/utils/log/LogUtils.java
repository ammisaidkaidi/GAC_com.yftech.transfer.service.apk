package com.tencent.wecarspeech.clientsdk.utils.log;

import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.io.FileWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtils {
    private static final String TAG = "_SpeechClientSDK_";
    private static FileWriter mFileWriter = null;
    private static boolean sDebug = true;
    private static volatile boolean sIsInited = false;
    private static boolean sOpenLog = true;
    private static boolean sOpenLogToConsole = false;
    private static final boolean sOpenLogToFile = false;
    private static ILogger mLogger = new DefaultLogger();
    public static final String ROOT_PATH = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarspeech/";
    public static final String LOG_PATH = ROOT_PATH + "log";

    private static void writeToFile(String str) {
    }

    public static void setOpenLog(boolean z) {
        sOpenLog = z;
    }

    public static boolean issOpenLog() {
        return sOpenLog;
    }

    public static void setDebug(boolean z) {
        sDebug = z;
        setConsoleLogOpen(sDebug);
    }

    public static boolean isDebug() {
        return sDebug;
    }

    public static void setConsoleLogOpen(boolean z) {
        sOpenLogToConsole = z;
    }

    public static void initXlog() {
        if (sIsInited) {
            return;
        }
        setConsoleLogOpen(isDebug());
        sIsInited = true;
    }

    public static void setLogger(ILogger iLogger) {
        mLogger = iLogger;
    }

    public static void printIntent(String str, Intent intent) {
        if (intent == null) {
            return;
        }
        Bundle extras = intent.getExtras();
        StringBuilder sb = new StringBuilder(128);
        sb.append(str);
        sb.append(" act=");
        sb.append(intent.getAction());
        printBundle(sb.toString(), extras);
    }

    public static void printBundle(String str, Bundle bundle) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(str);
        sb.append(" extras:");
        if (bundle != null) {
            sb.append("{");
            for (String str2 : bundle.keySet()) {
                Object obj = bundle.get(str2);
                sb.append(str2);
                sb.append('=');
                sb.append(obj == null ? "" : obj.toString());
                sb.append(';');
            }
            sb.append("}");
        }
        d(TAG, sb.toString());
    }

    public static void d(String str, String str2) {
        if (sOpenLog) {
            logD(TAG, "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void fd(String str, String str2) {
        if (sOpenLog) {
            str2 = "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]);
            logD(TAG, str2);
        }
        if (sOpenLogToConsole) {
            return;
        }
        Log.d(str, str2);
    }

    public static void d(String str) {
        if (sOpenLog) {
            logD(TAG, build(str, new Throwable().getStackTrace()[1]));
        }
    }

    public static void i(String str, String str2) {
        if (sOpenLog) {
            logI(TAG, "[" + str + "]" + build(str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void v(String str, String str2) {
        if (!sOpenLog) {
            return;
        }
        String build = build(str2, new Throwable().getStackTrace()[1]);
        if (build == null || build.length() <= 1000) {
            logV(TAG, "[" + str + "]" + build);
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1000;
            if (i2 < build.length()) {
                logV(TAG, "[" + str + "]" + build.substring(i, i2));
                i = i2;
            } else {
                logV(TAG, "[" + str + "]" + build.substring(i, build.length() - 1));
                return;
            }
        }
    }

    public static void w(String str, String str2) {
        if (sOpenLog) {
            logW(TAG, build(str, str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void e(String str, String str2) {
        if (sOpenLog) {
            logE(TAG, build(str, str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void fe(String str, String str2) {
        if (sOpenLog) {
            str2 = build(str, str2, new Throwable().getStackTrace()[1]);
            logE(TAG, str2);
        }
        if (sOpenLogToConsole) {
            return;
        }
        Log.e(str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        if (sOpenLog) {
            logE(TAG, build(str, str2, new Throwable().getStackTrace()[1]), th);
        }
    }

    private static String build(String str, StackTraceElement stackTraceElement) {
        StringBuilder sb = new StringBuilder();
        if (stackTraceElement.isNativeMethod()) {
            sb.append("(Native Method)");
        } else {
            String fileName = stackTraceElement.getFileName();
            if (fileName == null) {
                sb.append("(Unknown Source)");
            } else {
                int lineNumber = stackTraceElement.getLineNumber();
                sb.append('(');
                sb.append(fileName);
                if (lineNumber >= 0) {
                    sb.append(':');
                    sb.append(lineNumber);
                }
                sb.append("):");
            }
        }
        sb.append(str);
        return sb.toString();
    }

    private static String build(String str, String str2, StackTraceElement stackTraceElement) {
        return "[" + str + "]" + build(str2, stackTraceElement);
    }

    private static String build(String str, String str2, StackTraceElement stackTraceElement, Throwable th) {
        return "[" + str + "]" + stackTraceElement.toString() + ":" + str2 + "\r\ne:" + th.getMessage();
    }

    private static void logD(String str, String str2) {
        mLogger.logD(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
    }

    private static void logD(String str, String str2, Object obj) {
        String formatLog = formatLog(str2, obj);
        if (mLogger != null) {
            mLogger.logD(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), formatLog);
        }
    }

    private static void logI(String str, String str2) {
        if (mLogger != null) {
            mLogger.logI(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
        }
    }

    private static void logI(String str, String str2, Object... objArr) {
        String formatLog = formatLog(str2, objArr);
        if (mLogger != null) {
            mLogger.logI(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), formatLog);
        }
    }

    private static void logV(String str, String str2) {
        if (mLogger != null) {
            mLogger.logV(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
        }
    }

    private static void logV(String str, String str2, Object... objArr) {
        String formatLog = formatLog(str2, objArr);
        if (mLogger != null) {
            mLogger.logV(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), formatLog);
        }
    }

    private static void logW(String str, String str2) {
        if (mLogger != null) {
            mLogger.logW(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
        }
    }

    private static void logW(String str, String str2, Object... objArr) {
        String formatLog = formatLog(str2, objArr);
        if (mLogger != null) {
            mLogger.logW(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), formatLog);
        }
    }

    private static void logE(String str, String str2) {
        if (mLogger != null) {
            mLogger.logE(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), str2);
        }
    }

    private static void logE(String str, String str2, Object... objArr) {
        String formatLog = formatLog(str2, objArr);
        if (mLogger != null) {
            mLogger.logE(str, "", "", 0, Process.myPid(), Thread.currentThread().getId(), Looper.getMainLooper().getThread().getId(), formatLog);
        }
    }

    private static String formatLog(String str, Object... objArr) {
        if (objArr != null) {
            str = String.format(str, objArr);
        }
        return str == null ? "" : str;
    }
}
