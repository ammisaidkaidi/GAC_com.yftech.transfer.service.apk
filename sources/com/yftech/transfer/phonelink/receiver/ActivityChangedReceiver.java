package com.yftech.transfer.phonelink.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.utils.LogUtil;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class ActivityChangedReceiver extends BroadcastReceiver {
    public static final String ACTIVITY_CHANGE = "android.activity.action.STATE_CHANGED";
    private static final String ACTIVITY_FG = "foreground";
    public static final String ACTIVITY_MEDIA_MAIN = "com.yftech.multimedia.MainActivity";
    public static final String ACT_CARLIFE = "com.baidu.carlifevehicle.CarlifeActivity";
    public static final String PKG_CARLIFE = "com.baidu.carlifevehicle";
    public static final String PKG_CARPLAY = "com.autochips.carplayapp";
    public static String curShowActivity;
    public static String curShowPkg;
    private static final HashSet<ActivityChangedObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class ActivityChangedObservor {
        public void onChanged(String str, String str2) {
        }
    }

    public static void registerObservor(ActivityChangedObservor activityChangedObservor) {
        observors.add(activityChangedObservor);
    }

    public static void unregisterObservor(ActivityChangedObservor activityChangedObservor) {
        observors.remove(activityChangedObservor);
    }

    public static boolean isregisterObservor(ActivityChangedObservor activityChangedObservor) {
        return observors.contains(activityChangedObservor);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        LogUtil.i("ActivityChangedReceiver");
        Bundle extras = intent.getExtras();
        if (extras != null) {
            String string = extras.getString("state");
            if ("foreground".equals(string)) {
                curShowPkg = extras.getString("package");
                curShowActivity = extras.getString("class");
                LogUtil.i("ACTIVITY_CHANGE: " + string + ", " + curShowPkg + "," + curShowActivity);
                Iterator<ActivityChangedObservor> it = observors.iterator();
                while (it.hasNext()) {
                    it.next().onChanged(curShowPkg, curShowActivity);
                }
            }
        }
    }
}
