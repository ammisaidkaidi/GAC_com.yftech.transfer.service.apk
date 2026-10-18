package com.yftech.transfer.service.utils;

import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import com.utils.CarPlayUtils;
import com.utils.LogUtil;
import com.yftech.transfer.service.CarTransferApplication;
import io.reactivex.annotations.SchedulerSupport;

/* loaded from: /home/user/work/dex/classes.dex */
public class SettingsUtil {
    private static final String KEY_CARPLAY_CERTIFICATE = "persist.sys.carplay.certificate";
    public static final String KEY_NMEA_SYNC = "persist.carplay.locationmanager";
    private static final String PRE_PHONE_LINK_VALUE = "PRE_PHONE_LINK_VALUE";
    private static final String TAG = "SettingsUtil";
    private static final int VALUE_CARPLAY_CERTIFICATE_VERSION = 1;

    public static boolean isCarplayCertificateStatus() {
        boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
        LogUtil.i("isCarplayCertificateStatus carplayCertificateOn:" + isCarplayCertificateOn);
        return isCarplayCertificateOn;
    }

    public static boolean isNmeaPropFalse() {
        boolean z = SystemProperties.getBoolean(KEY_NMEA_SYNC, false);
        LogUtil.i("isNmeaShouldCommit result:" + z);
        return z;
    }

    public static void storeHuaWeiPhoneLinkPicked(String str) {
        try {
            Settings.System.putString(CarTransferApplication.context.getContentResolver(), "hwphonelink", str);
            Log.i(TAG, "storeHuaWeiPhoneLinkPicked:" + str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getHuaWeiPhoneLinkPicked() {
        try {
            String string = Settings.System.getString(CarTransferApplication.context.getContentResolver(), "hwphonelink");
            Log.i(TAG, "getHuaWeiPhoneLinkPicked:" + string);
            return string;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void storeBluetoothStatus(int i) {
        try {
            Settings.System.putInt(CarTransferApplication.context.getContentResolver(), "btstatus", i);
            Log.i(TAG, "storeBluetoothStatus:" + i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void storeCarPlayDeviceId(String str) {
        try {
            Settings.System.putString(CarTransferApplication.context.getContentResolver(), "carplaydeviceid", str);
            Log.i(TAG, "storeCarPlayDevice:" + str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getCarPlayDeviceId() {
        try {
            String string = Settings.System.getString(CarTransferApplication.context.getContentResolver(), "carplaydeviceid");
            Log.i(TAG, "getCarPlayDevice:" + string);
            return string;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void storeCarPlayDeviceTransport(int i) {
        try {
            Settings.System.putInt(CarTransferApplication.context.getContentResolver(), "carplaydevicetransport", i);
            Log.i(TAG, "storeCarPlayDeviceTransport:" + i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int getCarPlayDeviceTransport() {
        try {
            int i = Settings.System.getInt(CarTransferApplication.context.getContentResolver(), "carplaydevicetransport");
            Log.i(TAG, "getCarPlayDeviceTransport:" + i);
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static int getBluetoothStatus() {
        try {
            int i = Settings.System.getInt(CarTransferApplication.context.getContentResolver(), "btstatus");
            Log.i(TAG, "getBluetoothStatus:" + i);
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return 12;
        }
    }

    public static String getString(String str) {
        try {
            String string = Settings.System.getString(CarTransferApplication.context.getContentResolver(), str);
            Log.i(TAG, "getString:" + string);
            return string;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getString(String str, String str2) {
        String string;
        try {
            string = Settings.System.getString(CarTransferApplication.context.getContentResolver(), str);
            Log.i(TAG, "getString:" + string + ",defaultValue:" + str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return string != null ? string : str2;
    }

    public static int getInt(String str) {
        try {
            int i = Settings.System.getInt(CarTransferApplication.context.getContentResolver(), str);
            Log.i(TAG, "getInt:" + i);
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static void putString(String str, String str2) {
        try {
            Settings.System.putString(CarTransferApplication.context.getContentResolver(), str, str2);
            Log.i(TAG, "putString:" + str + "," + str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void putInt(String str, int i) {
        try {
            Settings.System.putInt(CarTransferApplication.context.getContentResolver(), str, i);
            Log.i(TAG, "putInt:" + str + "," + i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getPreviousPhoneLinkStatus() {
        try {
            String string = Settings.System.getString(CarTransferApplication.context.getContentResolver(), PRE_PHONE_LINK_VALUE);
            Log.i(TAG, "getPreviousPhoneLink:" + string);
            return string;
        } catch (Exception e) {
            e.printStackTrace();
            return SchedulerSupport.NONE;
        }
    }

    public static void storePreviousPhoneLinkStatus(String str) {
        try {
            Log.i(TAG, "storePreviousPhoneLinkStatus:" + str + "," + Settings.System.putString(CarTransferApplication.context.getContentResolver(), PRE_PHONE_LINK_VALUE, str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
