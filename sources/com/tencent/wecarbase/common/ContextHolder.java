package com.tencent.wecarbase.common;

import android.app.Application;
import android.content.Context;
import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContextHolder {
    private static Context sApplicationContext;

    public static void setContext(Context context) {
        sApplicationContext = context;
    }

    public static Context getContext() {
        if (sApplicationContext == null) {
            try {
                Application application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, (Object[]) null);
                if (application != null) {
                    sApplicationContext = application;
                    return application;
                }
            } catch (Exception e) {
                Log.e("ContextHolder", "Exception:" + Log.getStackTraceString(e));
            }
            try {
                Application application2 = (Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, (Object[]) null);
                if (application2 != null) {
                    sApplicationContext = application2;
                    return application2;
                }
            } catch (Exception e2) {
                Log.e("ContextHolder", "Exception:" + Log.getStackTraceString(e2));
            }
            throw new IllegalStateException("ContextHolder is not initialed, it is recommend to init with application context.");
        }
        return sApplicationContext;
    }
}
