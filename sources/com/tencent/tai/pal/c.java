package com.tencent.tai.pal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

/* compiled from: VersionCompat.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final VersionInfo f62a = VersionInfo.createVersionInfo("3.0.0", 0);
    public static final VersionInfo b = VersionInfo.createVersionInfo("3.5.1", 0);
    public static final VersionInfo c = VersionInfo.createVersionInfo("3.6.0", 0);
    public static final VersionInfo d = VersionInfo.createVersionInfo("3.7.0", 0);
    public static final VersionInfo e = VersionInfo.createVersionInfo("3.8.0", 0);
    public static final VersionInfo f = VersionInfo.createVersionInfo("3.9.0", 0);
    public static final VersionInfo g = VersionInfo.createVersionInfo("3.11.0", 0);
    public static final VersionInfo h = VersionInfo.createVersionInfo("3.14.0", 0);
    private static String i = null;
    private static String j = null;

    public static String a(Context context) {
        if (!TextUtils.isEmpty(i)) {
            return i;
        }
        try {
            Object obj = context.getPackageManager().getApplicationInfo("com.tencent.tai.pal.platform.patch", 128).metaData.get("patch_encrypted_channel");
            i = obj == null ? null : String.valueOf(obj);
            Log.e(SDKConstants.TAG, "get patch_encrypted_channel return " + i);
        } catch (Exception e2) {
            Log.e(SDKConstants.TAG, "exception caught", e2);
            Log.e(SDKConstants.TAG, "get patch_encrypted_channel error");
        }
        return i;
    }

    public static String b(Context context) {
        try {
            j = context.getContentResolver().call(Uri.parse("content://com.tencent.tai.pal.platform.patch.provider"), "getChannel", (String) null, (Bundle) null).getString("key_channel");
            Log.e(SDKConstants.TAG, "getEncryptedChannelFromPlatformPatchProvider return " + j);
        } catch (Exception e2) {
            Log.e(SDKConstants.TAG, "exception caught", e2);
            Log.e(SDKConstants.TAG, "getEncryptedChannelFromPlatformPatchProvider error");
        }
        return j;
    }

    public static String c(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("tai_open_sdk_pal_adapter_version_name");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
