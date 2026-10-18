package com.yftech.transfer.service.utils;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes.dex */
public class WifiApManager {
    public static final String WIFI_AP_EXTRA_STATE = "wifi_state";
    public static final int WIFI_AP_SAFETY_TYPE_INVAILD = 4;
    public static final int WIFI_AP_SAFETY_TYPE_NONE = 0;
    public static final int WIFI_AP_SAFETY_TYPE_WEP = 3;
    public static final int WIFI_AP_SAFETY_TYPE_WPA = 1;
    public static final int WIFI_AP_SAFETY_TYPE_WPA2 = 2;
    public static final String WIFI_AP_STATE_ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    public static final int WIFI_AP_STATE_DISABLED = 11;
    public static final int WIFI_AP_STATE_DISABLING = 10;
    public static final int WIFI_AP_STATE_ENABLED = 13;
    public static final int WIFI_AP_STATE_ENABLING = 12;
    public static final int WIFI_AP_STATE_FAILED = 14;
    private WifiManager mWifiManager;

    public WifiApManager(Context context) {
        this.mWifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    public boolean isWifiApEnabled() {
        try {
            Method method = this.mWifiManager.getClass().getMethod("isWifiApEnabled", new Class[0]);
            method.setAccessible(true);
            return ((Boolean) method.invoke(this.mWifiManager, new Object[0])).booleanValue();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return false;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return false;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public WifiConfiguration createWifiConfiguration(String str, String str2, int i) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = str;
        wifiConfiguration.networkId = 1;
        wifiConfiguration.allowedAuthAlgorithms.clear();
        wifiConfiguration.allowedGroupCiphers.clear();
        wifiConfiguration.allowedKeyManagement.clear();
        wifiConfiguration.allowedPairwiseCiphers.clear();
        wifiConfiguration.allowedProtocols.clear();
        if (i == 0) {
            wifiConfiguration.allowedAuthAlgorithms.set(0, true);
            wifiConfiguration.wepKeys[0] = "";
            wifiConfiguration.allowedKeyManagement.set(0);
            wifiConfiguration.wepTxKeyIndex = 0;
        } else if (i == 1) {
            wifiConfiguration.preSharedKey = str2;
            wifiConfiguration.hiddenSSID = false;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedKeyManagement.set(1);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
        } else if (i == 2) {
            wifiConfiguration.preSharedKey = str2;
            wifiConfiguration.hiddenSSID = true;
            wifiConfiguration.allowedAuthAlgorithms.set(0);
            wifiConfiguration.allowedGroupCiphers.set(2);
            wifiConfiguration.allowedKeyManagement.set(4);
            wifiConfiguration.allowedPairwiseCiphers.set(1);
            wifiConfiguration.allowedProtocols.set(0);
            wifiConfiguration.allowedGroupCiphers.set(3);
            wifiConfiguration.allowedPairwiseCiphers.set(2);
        }
        return wifiConfiguration;
    }

    public boolean setWifiApConfiguration(WifiConfiguration wifiConfiguration) {
        if (wifiConfiguration == null) {
            return false;
        }
        try {
            return ((Boolean) this.mWifiManager.getClass().getMethod("setWifiApConfiguration", wifiConfiguration.getClass()).invoke(this.mWifiManager, wifiConfiguration)).booleanValue();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return false;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return false;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    public WifiConfiguration getWifiApConfiguration() {
        try {
            Method method = this.mWifiManager.getClass().getMethod("getWifiApConfiguration", new Class[0]);
            method.setAccessible(true);
            return (WifiConfiguration) method.invoke(this.mWifiManager, new Object[0]);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return null;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public int getWifiAPState() {
        try {
            return ((Integer) this.mWifiManager.getClass().getMethod("getWifiApState", new Class[0]).invoke(this.mWifiManager, new Object[0])).intValue();
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        r9.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001b, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x001c, code lost:
    
        r9.mWifiManager.getClass().getMethod("setWifiApEnabled", android.net.wifi.WifiConfiguration.class, java.lang.Boolean.TYPE).invoke(r9.mWifiManager, r10, java.lang.Boolean.valueOf(r11));
        java.lang.Thread.sleep(100);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0045, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0046, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
    
        r9.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004a, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0004, code lost:
    
        if (r11 != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
    
        if (r9.mWifiManager.getWifiState() == 1) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
    
        r9.mWifiManager.setWifiEnabled(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        java.lang.Thread.sleep(100);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean setWifiApEnabled(WifiConfiguration wifiConfiguration, boolean z) {
    }

    public boolean openWiFiAp(WifiConfiguration wifiConfiguration) {
        if (setWifiApConfiguration(wifiConfiguration)) {
            return setWifiApEnabled(null, true);
        }
        return false;
    }

    public boolean closeWiFiAp() {
        return setWifiApEnabled(null, false);
    }

    public String getWifiAPSSID() {
        WifiConfiguration wifiApConfiguration = getWifiApConfiguration();
        if (wifiApConfiguration == null) {
            return null;
        }
        return wifiApConfiguration.SSID;
    }

    public String getWifiApPassword() {
        WifiConfiguration wifiApConfiguration = getWifiApConfiguration();
        if (wifiApConfiguration == null) {
            return null;
        }
        return wifiApConfiguration.preSharedKey;
    }

    public int getWifiApSecurity() {
        WifiConfiguration wifiApConfiguration = getWifiApConfiguration();
        if (wifiApConfiguration == null) {
            return 4;
        }
        if (wifiApConfiguration.allowedKeyManagement.get(0)) {
            return 0;
        }
        if (wifiApConfiguration.allowedKeyManagement.get(1)) {
            return 1;
        }
        if (wifiApConfiguration.allowedKeyManagement.get(2)) {
            return 3;
        }
        return wifiApConfiguration.allowedKeyManagement.get(4) ? 2 : 4;
    }
}
