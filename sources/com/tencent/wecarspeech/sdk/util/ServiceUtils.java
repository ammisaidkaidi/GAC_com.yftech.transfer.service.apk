package com.tencent.wecarspeech.sdk.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Process;
import android.os.UserHandle;
import android.support.annotation.Keep;
import android.support.v7.widget.ActivityChooserView;
import android.util.Log;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class ServiceUtils {
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Intent getExplicitIntent(Context context, Intent intent, String str) {
        List<ResolveInfo> list;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                list = packageManager.queryIntentServices(intent, 0);
            } catch (Exception e) {
                Log.e("ServiceUtils", e.toString());
            }
            if (list != null) {
                return null;
            }
            for (ResolveInfo resolveInfo : list) {
                String str2 = resolveInfo.serviceInfo.packageName;
                if (str2.equals(str)) {
                    LogUtils.d("ServiceUtils", "serviceInfo packageName = " + str2);
                    ComponentName componentName = new ComponentName(str2, resolveInfo.serviceInfo.name);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    return intent2;
                }
            }
            return null;
        }
        list = null;
        if (list != null) {
        }
    }

    public static boolean isServiceRunning(Context context, String str) {
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        if (runningServices == null) {
            return false;
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
            if (runningServiceInfo != null && runningServiceInfo.service != null && str.equals(runningServiceInfo.service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    public static void startService(Context context, String str, String str2) {
        if (getExplicitIntent(context, new Intent(str), str2) == null || isServiceRunning(context, str)) {
            return;
        }
        Intent intent = new Intent(str);
        try {
            ContextWrapper contextWrapper = new ContextWrapper(context);
            contextWrapper.getClass().getMethod("startServiceAsUser", Intent.class, UserHandle.class).invoke(contextWrapper, getExplicitIntent(context, intent, str2), Process.myUserHandle());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void stopService(Context context, String str, String str2) {
        try {
            Intent explicitIntent = getExplicitIntent(context, new Intent(str), str2);
            if (explicitIntent == null) {
                explicitIntent = new Intent(str);
            }
            context.stopService(explicitIntent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
