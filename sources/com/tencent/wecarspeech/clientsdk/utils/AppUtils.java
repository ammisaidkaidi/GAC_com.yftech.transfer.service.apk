package com.tencent.wecarspeech.clientsdk.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.Keep;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
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
        return context == null ? "" : context.getPackageName();
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
}
