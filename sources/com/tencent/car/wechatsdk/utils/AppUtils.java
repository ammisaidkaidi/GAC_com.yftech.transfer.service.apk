package com.tencent.car.wechatsdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.Keep;
import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.car.wechatsdk.utils.log.LogUtils;
import com.tencent.taiutils.SystemUtils;
import com.yftech.transfer.service.CarAppList;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class AppUtils {
    private static final String TAG = "AppUtils";

    public static String getAppName(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception e) {
            LogUtils.e(TAG, "getAppName : ", e);
            return null;
        }
    }

    public static String getVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            LogUtils.e(TAG, "getVersionName : ", e);
            return null;
        }
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e) {
            LogUtils.e(TAG, "getVersionCode : ", e);
            return 0;
        }
    }

    public static String getPackageName(Context context) {
        return context.getPackageName();
    }

    public static String getMetaDataValue(Context context, String str) {
        ApplicationInfo applicationInfo;
        if (context == null) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData.getString(str);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static Bitmap getBitmap(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return ((BitmapDrawable) packageManager.getApplicationIcon(packageManager.getApplicationInfo(context.getPackageName(), 0))).getBitmap();
        } catch (PackageManager.NameNotFoundException e) {
            LogUtils.e(TAG, "getBitmap : ", e);
            return null;
        }
    }

    public static String getSHA1Signature(Context context) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                String upperCase = Integer.toHexString(digest[i] & 255).toUpperCase(Locale.US);
                if (upperCase.length() == 1) {
                    sb.append(CarAppList.MediaPage.PAGE_FM);
                }
                sb.append(upperCase);
                if (i < length - 1) {
                    sb.append(":");
                }
            }
            return sb.toString();
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e) {
            LogUtils.e(TAG, "getSHA1Signature : ", e);
            return null;
        }
    }

    public static boolean isAPPInstalled(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 1);
            LogUtils.d(TAG, "getPkgInfo=" + packageInfo + ", pkgName=" + str);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static void launchWeChat(Context context) {
        String startActivityName = getStartActivityName(context, SystemUtils.WEXIN_PACKAGE_NAME);
        LogUtils.d(TAG, "getStartActivityName=" + startActivityName);
        if (TextUtils.isEmpty(startActivityName)) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(SystemUtils.WEXIN_PACKAGE_NAME, startActivityName);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        context.startActivity(intent);
    }

    private static String getStartActivityName(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            LogUtils.e(TAG, "getPackageInfo : ", e);
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(packageInfo.packageName);
        ResolveInfo next = context.getPackageManager().queryIntentActivities(intent, 0).iterator().next();
        if (next == null) {
            return null;
        }
        String str2 = next.activityInfo.packageName;
        return next.activityInfo.name;
    }

    public static boolean checkApkExist(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (Build.VERSION.SDK_INT >= 28) {
                LogUtils.d(TAG, "versionName: " + packageInfo.versionName + ", versionCode: " + packageInfo.getLongVersionCode());
                return true;
            }
            LogUtils.d(TAG, "versionName: " + packageInfo.versionName + ", versionCode: " + packageInfo.versionCode);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
