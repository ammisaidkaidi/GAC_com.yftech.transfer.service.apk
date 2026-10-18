package com.tencent.wecarbase.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class NetworkUtils {
    public static final int CONNECT_2G = 3;
    public static final int CONNECT_3G = 4;
    public static final int CONNECT_4G = 5;
    public static final int CONNECT_MOBILE = 1;
    public static final int CONNECT_NONE = 0;
    public static final int CONNECT_WIFI = 2;
    private static final String TAG = "NetworkUtils";

    public static boolean isUsingWifiNetwork(Context context) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(1)) == null) {
            return false;
        }
        return networkInfo.isConnected();
    }

    public static boolean isUsingMobileNetwork(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return "mobile".equalsIgnoreCase(activeNetworkInfo.getTypeName());
            }
            return false;
        } catch (Throwable th) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(th));
            return false;
        }
    }

    public static boolean isNetworkAvailable(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        if (context == null) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                LogUtils.fe(TAG, "+++couldn't get connectivity manager");
            } else {
                NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
                if (allNetworkInfo != null) {
                    for (NetworkInfo networkInfo : allNetworkInfo) {
                        if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                            Log.d(TAG, "+++network is available, cost time: " + (System.currentTimeMillis() - currentTimeMillis));
                            return true;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(th));
        }
        Log.d(TAG, "+++network is not available, cost time: " + (System.currentTimeMillis() - currentTimeMillis));
        return false;
    }

    public static int getConnectType(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return 0;
        }
        String typeName = activeNetworkInfo.getTypeName();
        if ("mobile".equalsIgnoreCase(typeName)) {
            return getMobileConnectType(context);
        }
        return "wifi".equalsIgnoreCase(typeName) ? 2 : 0;
    }

    public static int getMobileConnectType(Context context) {
        switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 3;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 4;
            case 13:
                return 5;
            default:
                return 1;
        }
    }

    public static HashMap<String, String> getNetworkInfo(Context context) {
        HashMap<String, String> hashMap = new HashMap<>();
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    String typeName = activeNetworkInfo.getTypeName();
                    String subtypeName = activeNetworkInfo.getSubtypeName();
                    hashMap.put("net_env", typeName);
                    hashMap.put("net_subtype", subtypeName);
                    if (activeNetworkInfo.getType() == 0) {
                        LogUtils.d(FeedBackConstants.JSON_FIELD_NETWORK, "typeName = " + typeName + ", subTypeName = " + subtypeName);
                    } else if (activeNetworkInfo.getType() == 1) {
                        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                        WifiInfo connectionInfo = wifiManager != null ? wifiManager.getConnectionInfo() : null;
                        if (connectionInfo != null) {
                            int rssi = connectionInfo.getRssi();
                            String ssid = connectionInfo.getSSID();
                            hashMap.put("net_rssi", Integer.toString(rssi));
                            hashMap.put("net_ssid", ssid);
                            LogUtils.d(FeedBackConstants.JSON_FIELD_NETWORK, "typeName = " + typeName + ", subTypeName = " + subtypeName + ", rssi = " + rssi + ", ssid = " + ssid);
                        }
                    }
                } else {
                    hashMap.put("activeNetwork", "null");
                }
            } else {
                hashMap.put("networkInfo", "null");
            }
        } catch (Exception e) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
        }
        return hashMap;
    }

    public static String getIp(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo.State state = connectivityManager.getNetworkInfo(0).getState();
        NetworkInfo.State state2 = connectivityManager.getNetworkInfo(1).getState();
        String localIpAddress = (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING) ? getLocalIpAddress() : null;
        if (state2 != NetworkInfo.State.CONNECTED && state2 != NetworkInfo.State.CONNECTING) {
            return localIpAddress;
        }
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if (!wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(true);
        }
        int ipAddress = wifiManager.getConnectionInfo().getIpAddress();
        return (ipAddress & 255) + "." + ((ipAddress >> 8) & 255) + "." + ((ipAddress >> 16) & 255) + "." + ((ipAddress >> 24) & 255);
    }

    private static String getLocalIpAddress() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                        return nextElement.getHostAddress();
                    }
                }
            }
            return null;
        } catch (SocketException e) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
            return null;
        }
    }
}
