package com.tencent.taes.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Process;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class PackageUtils {
    static final String INSTALL_APP_PATH = "INSTALL_APP_PATH";
    static final String INSTALL_APP_PKG = "INSTALL_APP_PKG";
    static final String INSTALL_OPEN_APP_PKG_ATY = "INSTALL_OPEN_APP_PKG_ATY";
    private static final String TAG = "PackageUtils";
    static final String TENCENT_SOTAINSTALLER = "com.tencent.sotainstaller";
    static final String TENCENT_SOTAINSTALLER_SERVICE = "com.tencent.sotainstaller.InstallerService";
    private static long apkUpdateTime;
    private static String sProcessName;
    private static int sVersionCode;
    private static String sVersionName;

    public static boolean startSotaInstallerService(@NonNull Context context, @NonNull String str, @NonNull String str2, boolean z) {
        Log.d("PackageUtils", "PackageUtils.startSotaInstallerService: path: " + str + " pkgName: " + str2 + " isStartAty: " + z);
        try {
            if (context.getPackageManager().getApplicationInfo(TENCENT_SOTAINSTALLER, 128) == null) {
                return false;
            }
            Intent intent = new Intent();
            intent.setClassName(TENCENT_SOTAINSTALLER, TENCENT_SOTAINSTALLER_SERVICE);
            intent.putExtra(INSTALL_APP_PKG, str2);
            intent.putExtra(INSTALL_APP_PATH, str);
            intent.putExtra(INSTALL_OPEN_APP_PKG_ATY, z);
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(intent);
                    return true;
                }
                context.startService(intent);
                return true;
            } catch (Exception e) {
                Log.e("PackageUtils", "startSotaInstallerService", e);
                return false;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("PackageUtils", "startSotaInstallerService", e2);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getProcessName(Context context) {
        String str;
        String str2;
        if (!TextUtils.isEmpty(sProcessName)) {
            return sProcessName;
        }
        int myPid = Process.myPid();
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader("/proc/" + myPid + "/cmdline"));
            try {
                try {
                    str = bufferedReader2.readLine();
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable unused2) {
                str = null;
            }
            try {
                str2 = !TextUtils.isEmpty(str) ? str.trim() : str;
                try {
                    bufferedReader2.close();
                } catch (IOException unused3) {
                    if (TextUtils.isEmpty(str2)) {
                        str2 = getProcessNameByAMS(context, myPid);
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        sProcessName = str2;
                    }
                    return str2;
                }
            } catch (Throwable unused4) {
                bufferedReader = bufferedReader2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused5) {
                    }
                }
                str2 = str;
                if (TextUtils.isEmpty(str2)) {
                }
                if (!TextUtils.isEmpty(str2)) {
                }
                return str2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String getProcessNameByAMS(Context context, int i) {
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

    public static long getApkUpdateTime(Context context) {
        ApplicationInfo applicationInfo;
        if (apkUpdateTime != 0) {
            return apkUpdateTime;
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

    public static String getTopActivity(Context context) {
        ActivityManager activityManager;
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || (runningTasks = activityManager.getRunningTasks(1)) == null || runningTasks.size() <= 0 || (runningTaskInfo = runningTasks.get(0)) == null) {
            return null;
        }
        return runningTaskInfo.topActivity.getClassName();
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

    public static int getAppVersionCode(Context context) {
        PackageInfo packageInfo;
        if (sVersionCode != 0) {
            return sVersionCode;
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

    public static boolean isMainAppProcess(Context context) {
        String processName = getProcessName(context);
        return TextUtils.equals(context.getPackageName(), processName) || TextUtils.isEmpty(processName);
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

    public static boolean isCurrentRunning(Context context, String str) {
        ActivityManager activityManager;
        try {
            activityManager = (ActivityManager) context.getSystemService("activity");
        } catch (Exception unused) {
        }
        if (activityManager != null && activityManager.getRunningTasks(1) != null && activityManager.getRunningTasks(1).size() >= 1) {
            return activityManager.getRunningTasks(1).get(0).topActivity.getPackageName().equals(str);
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
                if (activityManager != null && activityManager.getRunningTasks(2) != null && activityManager.getRunningTasks(2).size() >= 2) {
                    if (activityManager.getRunningTasks(2).get(1).topActivity.getPackageName().equals(str)) {
                        return true;
                    }
                }
                return false;
            } catch (Exception unused) {
            }
        }
        return false;
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
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    return packageManager.getPackageInfo(str, 1) != null;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
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
}
