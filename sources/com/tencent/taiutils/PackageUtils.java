package com.tencent.taiutils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.support.annotation.Keep;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class PackageUtils {
    public static final String TAG = "PackageUtils";
    public static long apkUpdateTime;
    public static String sProcessName;
    public static int sVersionCode;
    public static String sVersionName;

    public static long getApkUpdateTime(Context context) {
        ApplicationInfo applicationInfo;
        long j = apkUpdateTime;
        if (j != 0) {
            return j;
        }
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0)) != null) {
                    File file = new File(applicationInfo.sourceDir);
                    apkUpdateTime = file.exists() ? file.lastModified() : System.currentTimeMillis();
                }
            } catch (Exception unused) {
            }
        }
        return apkUpdateTime;
    }

    public static int getAppVersionCode(Context context) {
        PackageInfo packageInfo;
        int i = sVersionCode;
        if (i != 0) {
            return i;
        }
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0)) != null) {
                    sVersionCode = packageInfo.versionCode;
                }
            } catch (Exception unused) {
                return 0;
            }
        }
        return sVersionCode;
    }

    public static String getAppVersionName(Context context) {
        PackageInfo packageInfo;
        if (!TextUtils.isEmpty(sVersionName)) {
            return sVersionName;
        }
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0)) != null) {
                    sVersionName = packageInfo.versionName;
                }
            } catch (Exception unused) {
            }
        }
        return sVersionName;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x004e, code lost:
    
        if (r2 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getProcessName(Context context) {
        BufferedReader bufferedReader;
        String str;
        if (!TextUtils.isEmpty(sProcessName)) {
            return sProcessName;
        }
        int myPid = Process.myPid();
        BufferedReader bufferedReader2 = null;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("/proc/");
            sb.append(myPid);
            sb.append("/cmdline");
            bufferedReader = new BufferedReader(new FileReader(sb.toString()));
            try {
                try {
                    str = bufferedReader.readLine();
                    try {
                        if (!TextUtils.isEmpty(str)) {
                            str = str.trim();
                        }
                    } catch (Throwable unused) {
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable unused3) {
                str = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bufferedReader.close();
        } catch (IOException unused4) {
        }
        if (TextUtils.isEmpty(str)) {
            str = getProcessNameByAMS(context, myPid);
        }
        if (!TextUtils.isEmpty(str)) {
            sProcessName = str;
        }
        return str;
    }

    public static String getProcessNameByAMS(Context context, int i) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == i) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    public static String getTopActivity(Context context) {
        ActivityManager activityManager;
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || (runningTasks = activityManager.getRunningTasks(1)) == null || runningTasks.size() <= 0 || (runningTaskInfo = runningTasks.get(0)) == null) {
            return null;
        }
        return runningTaskInfo.topActivity.getClassName();
    }

    public static void goHome(Context context) {
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            intent.addFlags(270532608);
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public static boolean isAPPInstalled(Context context, String str) {
        if (context == null) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                return packageManager.getPackageInfo(str, 1) != null;
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean isAppRunning(Context context, String str) {
        Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses().iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().processName)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isCurrentInApp(Context context, String str) {
        if (isCurrentRunning(context, str)) {
            return true;
        }
        if (isCurrentRunning(context, "com.tencent.wecarspeech")) {
            try {
                ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
                if (activityManager.getRunningTasks(2).size() < 2) {
                    return false;
                }
                if (activityManager.getRunningTasks(2).get(1).topActivity.getPackageName().equals(str)) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean isCurrentRunning(Context context, String str) {
        ActivityManager activityManager;
        try {
            activityManager = (ActivityManager) context.getSystemService("activity");
        } catch (Exception unused) {
        }
        if (activityManager.getRunningTasks(1).size() < 1) {
            return false;
        }
        return activityManager.getRunningTasks(1).get(0).topActivity.getPackageName().equals(str);
    }

    public static boolean isInstallApp(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean isMainAppProcess(Context context) {
        String processName = getProcessName(context);
        return TextUtils.equals(context.getPackageName(), processName) || TextUtils.isEmpty(processName);
    }

    public static boolean startActivityByPackageName(Context context, String str) {
        Intent launchIntentForPackage;
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (launchIntentForPackage = packageManager.getLaunchIntentForPackage(str)) != null) {
                    context.startActivity(launchIntentForPackage);
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
