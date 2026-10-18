package com.baidu.navisdk.hudsdk;

import android.app.Activity;
import android.content.Context;

/* loaded from: /home/user/work/dex/classes.dex */
public class HUDModuleManager {
    private static Activity sCachedActivity;
    private static Context sCachedContext;

    public static void setContext(Context context) {
        sCachedContext = context;
    }

    public static Context getContext() {
        return sCachedContext;
    }

    public static void setActivity(Activity activity) {
        sCachedActivity = activity;
    }

    public static Activity getActivity() {
        return sCachedActivity;
    }
}
