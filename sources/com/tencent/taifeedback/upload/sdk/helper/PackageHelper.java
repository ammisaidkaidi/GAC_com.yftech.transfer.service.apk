package com.tencent.taifeedback.upload.sdk.helper;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.utils.Utils;
import io.reactivex.annotations.SchedulerSupport;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipFile;

/* loaded from: /home/user/work/dex/classes.dex */
public class PackageHelper {
    private static String TAG = "PackageHelper";

    public static Map<String, String> getInstalledPackages(Context context) {
        HashMap hashMap = new HashMap();
        PackageManager packageManager = context.getPackageManager();
        List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
        int size = installedPackages.size();
        hashMap.put("installed_app_count", String.valueOf(size));
        for (int i = 0; i < size; i++) {
            PackageInfo packageInfo = installedPackages.get(i);
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo.flags == 1) {
                hashMap.put("installed_app_flag_" + i, "system");
            } else {
                hashMap.put("installed_app_flag_" + i, SchedulerSupport.CUSTOM);
            }
            hashMap.put("installed_app_name_" + i, packageManager.getApplicationLabel(applicationInfo).toString());
            hashMap.put("installed_app_package_name_" + i, packageInfo.packageName);
            hashMap.put("installed_app_version_code_" + i, packageInfo.versionName);
            hashMap.put("installed_app_version_name_" + i, packageInfo.versionName);
        }
        return hashMap;
    }

    public static Map<String, String> getRunningTask(Context context) {
        HashMap hashMap = new HashMap();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        PackageManager packageManager = context.getPackageManager();
        List<ActivityManager.RecentTaskInfo> recentTasks = activityManager.getRecentTasks(10, 0);
        for (int i = 0; i < recentTasks.size(); i++) {
            ResolveInfo resolveActivity = packageManager.resolveActivity(recentTasks.get(i).baseIntent, 0);
            if (resolveActivity != null) {
                String str = resolveActivity.activityInfo.packageName;
                hashMap.put("running_app_name_" + i, resolveActivity.loadLabel(packageManager).toString());
                hashMap.put("running_app_package_name_" + i, str);
            }
        }
        return hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.util.zip.ZipEntry] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] getPackageInfo(Context context, String str) {
        String str2;
        String str3;
        String str4;
        StringBuilder sb;
        ApplicationInfo applicationInfo;
        ZipFile zipFile;
        String str5;
        String str6 = "unknown";
        String str7 = "unknown";
        ?? r5 = 0;
        r5 = null;
        r5 = null;
        ZipFile zipFile2 = null;
        ZipFile zipFile3 = null;
        try {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                str2 = packageInfo.versionName;
                try {
                    str3 = String.valueOf(packageInfo.versionCode);
                    try {
                        applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
                        zipFile = new ZipFile(applicationInfo.sourceDir);
                    } catch (PackageManager.NameNotFoundException e) {
                        e = e;
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (PackageManager.NameNotFoundException e3) {
                    e = e3;
                    str3 = "unknown";
                    Utils.getInstance().log(TAG, e);
                    r5 = zipFile2;
                    if (zipFile2 != null) {
                        try {
                            zipFile2.close();
                            r5 = zipFile2;
                        } catch (IOException e4) {
                            e = e4;
                            str4 = TAG;
                            sb = new StringBuilder();
                            sb.append("Exception:");
                            sb.append(Log.getStackTraceString(e));
                            Log.e(str4, sb.toString());
                            return new String[]{str2, str3, str6, str7};
                        }
                    }
                    return new String[]{str2, str3, str6, str7};
                } catch (IOException e5) {
                    e = e5;
                    str3 = "unknown";
                    Utils.getInstance().log(TAG, e);
                    r5 = zipFile3;
                    if (zipFile3 != null) {
                        try {
                            zipFile3.close();
                            r5 = zipFile3;
                        } catch (IOException e6) {
                            e = e6;
                            str4 = TAG;
                            sb = new StringBuilder();
                            sb.append("Exception:");
                            sb.append(Log.getStackTraceString(e));
                            Log.e(str4, sb.toString());
                            return new String[]{str2, str3, str6, str7};
                        }
                    }
                    return new String[]{str2, str3, str6, str7};
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (PackageManager.NameNotFoundException e7) {
            e = e7;
            str2 = "unknown";
        } catch (IOException e8) {
            e = e8;
            str2 = "unknown";
        }
        try {
            ?? entry = zipFile.getEntry("classes.dex");
            String str8 = entry;
            if (entry != 0) {
                String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(entry.getTime()));
                str6 = format;
                str8 = format;
            }
            String charSequence = applicationInfo.loadLabel(context.getPackageManager()).toString();
            try {
                zipFile.close();
                str5 = str8;
            } catch (IOException e9) {
                Log.e(TAG, "Exception:" + Log.getStackTraceString(e9));
                str5 = "Exception:";
            }
            str7 = charSequence;
            r5 = str5;
        } catch (PackageManager.NameNotFoundException e10) {
            e = e10;
            zipFile2 = zipFile;
            Utils.getInstance().log(TAG, e);
            r5 = zipFile2;
            if (zipFile2 != null) {
            }
            return new String[]{str2, str3, str6, str7};
        } catch (IOException e11) {
            e = e11;
            zipFile3 = zipFile;
            Utils.getInstance().log(TAG, e);
            r5 = zipFile3;
            if (zipFile3 != null) {
            }
            return new String[]{str2, str3, str6, str7};
        } catch (Throwable th2) {
            th = th2;
            r5 = zipFile;
            if (r5 != 0) {
                try {
                    r5.close();
                } catch (IOException e12) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e12));
                }
            }
            throw th;
        }
        return new String[]{str2, str3, str6, str7};
    }
}
