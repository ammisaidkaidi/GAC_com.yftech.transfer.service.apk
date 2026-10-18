package com.baidu.navisdk.hudsdk.socket;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class NetworkUtils {
    private static final String NET = "net";
    public static final int NETWORK_TYPE_BLUETOOTH = 4;
    public static final int NETWORK_TYPE_EXT_BASE = 1000;
    public static final int NETWORK_TYPE_MOBILE = 3;
    public static final int NETWORK_TYPE_NONE = 0;
    public static final int NETWORK_TYPE_UNKNOWN = 1;
    public static final int NETWORK_TYPE_WIFI = 2;
    public static final int STATE_NO = 0;
    public static final int STATE_OK = 1;
    private static final String TAG = "NetworkUtils";
    private static final String WAP = "wap";
    public static int mConnectState = 0;
    public static int mWifiState = -1;

    /* loaded from: /home/user/work/dex/classes.dex */
    public class NetConnectStatus {
        public static final int NetStatusInvalid = 0;
        public static final int NetStatusNoNet = 1;
        public static final int NetStatusWIFINet = 2;
        public static final int NetStatusWWANNet = 3;

        public NetConnectStatus() {
        }
    }

    public static String getCurrentNetMode(Context context) {
        int i = 1;
        if (context == null) {
            return Integer.toString(1);
        }
        NetworkInfo networkInfo = null;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
        } catch (Exception unused) {
        }
        if (networkInfo != null) {
            if (networkInfo.getType() != 1) {
                int networkType = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
                switch (networkType) {
                    case 1:
                    case 2:
                        i = networkType + 1000;
                        break;
                    case 3:
                    case 9:
                    case 10:
                        i = networkType + 1000;
                        break;
                    case 4:
                        i = networkType + 1000;
                        break;
                    case 5:
                    case 6:
                    case 7:
                        i = networkType + 1000;
                        break;
                    case 8:
                        i = networkType + 1000;
                        break;
                    case 11:
                        i = networkType + 1000;
                        break;
                    default:
                        i = networkType + 1000;
                        break;
                }
            } else {
                i = 2;
            }
        }
        return Integer.toString(i);
    }

    public static boolean isWifi(Context context) {
        NetworkInfo activeNetworkInfo;
        return (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null || activeNetworkInfo.getType() != 1) ? false : true;
    }

    public static int getNetStatus(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return 1;
        }
        int type = activeNetworkInfo.getType();
        if (!activeNetworkInfo.isConnected()) {
            return 1;
        }
        switch (type) {
            case 0:
                return 3;
            case 1:
                return 2;
            default:
                return 1;
        }
    }

    public static int getCurrentNetworkType(Context context) {
        if (context == null) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        try {
            if (connectivityManager.getActiveNetworkInfo() == null) {
                return 0;
            }
            switch (connectivityManager.getActiveNetworkInfo().getType()) {
                case 0:
                    return 3;
                case 1:
                    return 2;
                default:
                    return 1;
            }
        } catch (Exception unused) {
            return 1;
        }
    }

    public static boolean isWifiConnected(Context context) {
        if (context == null) {
            return false;
        }
        try {
            NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1);
            if (networkInfo != null) {
                return networkInfo.isConnected();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                return activeNetworkInfo.isConnected();
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean isTypeNetworkAvailable(Context context, int i) {
        NetworkInfo networkInfo;
        if (context == null) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (networkInfo = connectivityManager.getNetworkInfo(i)) != null) {
                NetworkInfo.State state = networkInfo.getState();
                if (state == NetworkInfo.State.CONNECTED) {
                    return true;
                }
                if (state == NetworkInfo.State.CONNECTING) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean getConnectStatus() {
        return mConnectState == 1;
    }
}
