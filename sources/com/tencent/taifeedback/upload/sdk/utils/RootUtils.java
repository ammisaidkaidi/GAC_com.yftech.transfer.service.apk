package com.tencent.taifeedback.upload.sdk.utils;

import android.os.Build;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

/* loaded from: /home/user/work/dex/classes.dex */
public class RootUtils {
    private static final String TAG = "RootUtils";

    public static boolean isDeviceRooted() {
        return checkRootMethod1() || checkRootMethod2() || checkRootMethod3();
    }

    private static boolean checkRootMethod1() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    private static boolean checkRootMethod2() {
        for (String str : new String[]{"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"}) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    private static boolean checkRootMethod3() {
        Process process;
        BufferedReader bufferedReader = null;
        try {
            process = Runtime.getRuntime().exec(new String[]{"/system/xbin/which", "su"});
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(process.getInputStream()));
                try {
                    if (bufferedReader2.readLine() != null) {
                        if (process != null) {
                            process.destroy();
                        }
                        try {
                            bufferedReader2.close();
                        } catch (IOException e) {
                            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                        }
                        return true;
                    }
                    if (process != null) {
                        process.destroy();
                    }
                    try {
                        bufferedReader2.close();
                    } catch (IOException e2) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e2));
                    }
                    return false;
                } catch (Throwable unused) {
                    bufferedReader = bufferedReader2;
                    if (process != null) {
                        process.destroy();
                    }
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e3) {
                            Log.e(TAG, "Exception:" + Log.getStackTraceString(e3));
                        }
                    }
                    return false;
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable th) {
            th = th;
            process = null;
        }
    }
}
