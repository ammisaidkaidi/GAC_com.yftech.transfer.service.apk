package com.utils;

import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import com.yftech.transfer.service.CarTransferApplication;

/* loaded from: /home/user/work/dex/classes.dex */
public class WIfiUtils {
    public static boolean isApEnable() {
        boolean isWifiApEnabled = ((WifiManager) CarTransferApplication.context.getSystemService("wifi")).isWifiApEnabled();
        LogUtil.i("isApEnable() isEnabled:" + isWifiApEnabled);
        return isWifiApEnabled;
    }

    public static void setApEnable(boolean z, ConnectivityManager.OnStartTetheringCallback onStartTetheringCallback) {
        ConnectivityManager connectivityManager = (ConnectivityManager) CarTransferApplication.context.getSystemService("connectivity");
        LogUtil.i("setApEnable() isEnabled:" + z);
        if (z) {
            WifiManager wifiManager = (WifiManager) CarTransferApplication.context.getSystemService("wifi");
            WifiConfiguration wifiApConfiguration = wifiManager.getWifiApConfiguration();
            wifiApConfiguration.allowedKeyManagement.clear();
            wifiApConfiguration.allowedKeyManagement.set(8);
            wifiApConfiguration.apChannel = 161;
            wifiManager.setWifiApConfiguration(wifiApConfiguration);
            connectivityManager.startTethering(0, true, onStartTetheringCallback, new Handler(Looper.getMainLooper()));
            return;
        }
        connectivityManager.stopTethering(0);
    }
}
