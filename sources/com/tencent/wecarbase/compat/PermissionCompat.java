package com.tencent.wecarbase.compat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

/* loaded from: /home/user/work/dex/classes.dex */
public class PermissionCompat {
    public static boolean hasPermission(Context context, String str) {
        PackageManager packageManager;
        if (Build.VERSION.SDK_INT >= 26) {
            return (context == null || (packageManager = context.getPackageManager()) == null || -1 == packageManager.checkPermission(str, context.getPackageName())) ? false : true;
        }
        return true;
    }
}
