package com.yftech.transfer.phonelink.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.utils.LogUtil;
import com.yftech.transfer.service.utils.WifiApManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class WifiReceiver extends BroadcastReceiver {
    private static int mApState = 11;
    private static final HashSet<WifiObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class WifiObservor {
        public void onApStateChanged(int i) {
        }

        public void onWifiStateChanged(int i) {
        }
    }

    public static int getApState() {
        return mApState;
    }

    public static void registerObservor(WifiObservor wifiObservor) {
        observors.add(wifiObservor);
    }

    public static void unregisterObservor(WifiObservor wifiObservor) {
        observors.remove(wifiObservor);
    }

    public static boolean isregisterObservor(WifiObservor wifiObservor) {
        return observors.contains(wifiObservor);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        char c;
        String action = intent.getAction();
        LogUtil.i("action:" + action);
        int hashCode = action.hashCode();
        if (hashCode != -1875733435) {
            if (hashCode == 409953495 && action.equals(WifiApManager.WIFI_AP_STATE_ACTION)) {
                c = 1;
            }
            c = 65535;
        } else {
            if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                int intExtra = intent.getIntExtra(WifiApManager.WIFI_AP_EXTRA_STATE, 4);
                LogUtil.i("WIFI_STATE_CHANGED_ACTION state:" + intExtra);
                Iterator<WifiObservor> it = observors.iterator();
                while (it.hasNext()) {
                    it.next().onWifiStateChanged(intExtra);
                }
                return;
            case 1:
                int intExtra2 = intent.getIntExtra(WifiApManager.WIFI_AP_EXTRA_STATE, 14);
                mApState = intExtra2;
                LogUtil.i("WIFI_AP_STATE_CHANGED_ACTION state:" + intExtra2);
                Iterator<WifiObservor> it2 = observors.iterator();
                while (it2.hasNext()) {
                    it2.next().onApStateChanged(intExtra2);
                }
                return;
            default:
                return;
        }
    }
}
