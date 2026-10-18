package com.tencent.wecarbase.utils;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Process;
import android.os.UserHandle;
import android.support.v7.widget.ActivityChooserView;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class ServiceUtils {
    private static final String TAG = "ServiceUtils";

    public static Intent getExplicitIntent(Context context, Intent intent) {
        List<ResolveInfo> list;
        try {
            list = context.getPackageManager().queryIntentServices(intent, 0);
        } catch (Exception e) {
            LogUtils.e(TAG, e.toString());
            list = null;
        }
        if (list == null || list.size() != 1) {
            return null;
        }
        ResolveInfo resolveInfo = list.get(0);
        ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
        Intent intent2 = new Intent(intent);
        intent2.setComponent(componentName);
        return intent2;
    }

    public static Intent getMatchIntentInPackage(Context context, Intent intent, String str) {
        List<ResolveInfo> list;
        PackageManager packageManager = context.getPackageManager();
        try {
            intent.addFlags(32);
            list = packageManager.queryIntentServices(intent, 0);
        } catch (Exception e) {
            LogUtils.e(TAG, e.toString());
            list = null;
        }
        if (list == null || list.size() == 0) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            ResolveInfo resolveInfo = list.get(i);
            if (resolveInfo.serviceInfo.packageName.equals(str)) {
                ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                return intent2;
            }
        }
        return null;
    }

    public static boolean isServiceRunning(Context context, String str) {
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        if (runningServices == null) {
            return false;
        }
        Iterator<ActivityManager.RunningServiceInfo> it = runningServices.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isServiceRunning(Context context, String str, Class<?> cls) {
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        if (runningServices == null) {
            return false;
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
            if (runningServiceInfo.service.getPackageName().equals(str) && runningServiceInfo.service.getClassName().equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    public static void startService(Context context, String str) {
        if (getExplicitIntent(context, new Intent(str)) == null || isServiceRunning(context, str)) {
            return;
        }
        Intent intent = new Intent(str);
        try {
            ContextWrapper contextWrapper = new ContextWrapper(context);
            contextWrapper.getClass().getMethod("startServiceAsUser", Intent.class, UserHandle.class).invoke(contextWrapper, getExplicitIntent(context, intent), Process.myUserHandle());
        } catch (Exception e) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
        }
    }
}
