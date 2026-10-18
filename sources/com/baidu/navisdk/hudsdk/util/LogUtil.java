package com.baidu.navisdk.hudsdk.util;

import android.os.Environment;
import android.util.Log;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtil {
    private static final String DEFAULT_TAG = "BNRemote";
    public static boolean LOGGABLE = false;

    public static void e(String str, String str2) {
        if (LOGGABLE) {
            Log.e("BNRemote", makeLogDetailInfoString(str, str2, new Throwable().getStackTrace()[1]));
        }
    }

    public static void f(String str, String str2) {
        if (LOGGABLE) {
            String str3 = String.valueOf(Environment.getExternalStorageDirectory().toString()) + "/HUDSDKLog.txt";
            String str4 = String.valueOf(new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.getDefault()).format(new Date())) + " " + makeLogDetailInfoString(str, str2, new Throwable().getStackTrace()[1]) + "\r\n";
            try {
                FileWriter fileWriter = new FileWriter(str3, true);
                fileWriter.write(str4);
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException e) {
                e("", e.toString());
            }
        }
    }

    private static String makeLogDetailInfoString(String str, String str2, StackTraceElement stackTraceElement) {
        return String.valueOf("[" + str + "]-" + stackTraceElement.getFileName() + "(" + stackTraceElement.getLineNumber() + "): ") + str2;
    }

    public static void printCallStatck() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        if (stackTrace != null) {
            e("printCallStatck", "----start----");
            for (int i = 0; i < stackTrace.length; i++) {
                e("printCallStatck", String.valueOf(stackTrace[i].getFileName()) + "--" + stackTrace[i].getClassName() + "--" + stackTrace[i].getMethodName() + "--" + stackTrace[i].getLineNumber());
            }
            e("printCallStatck", "----end----");
        }
    }
}
