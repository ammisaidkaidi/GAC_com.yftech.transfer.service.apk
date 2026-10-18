package com.yftech.transfer.phonelink.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;
import com.utils.LogUtil;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class AvmserviceReceiver extends BroadcastReceiver {
    private static final String KEY = "sys.avmservice.show.state";
    private static final String VALUE_HIDE = "0";
    private static final String VALUE_SHOW = "1";
    private static final HashSet<AvmserviceObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AvmserviceObservor {
        public void onChanged(int i, boolean z) {
        }
    }

    public static boolean isAvmShow() {
        String str = SystemProperties.get(KEY, "0");
        LogUtil.i("isAvmShow result:" + str);
        return "1".equals(str);
    }

    public static void registerObservor(AvmserviceObservor avmserviceObservor) {
        observors.add(avmserviceObservor);
    }

    public static void unregisterObservor(AvmserviceObservor avmserviceObservor) {
        observors.remove(avmserviceObservor);
    }

    public static boolean isregisterObservor(AvmserviceObservor avmserviceObservor) {
        return observors.contains(avmserviceObservor);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int intExtra = intent.getIntExtra("type", 0);
        boolean booleanExtra = intent.getBooleanExtra("isShow", false);
        LogUtil.i("AVM_UI_CHANGE :" + intExtra + "," + booleanExtra);
        Iterator<AvmserviceObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onChanged(intExtra, booleanExtra);
        }
    }
}
