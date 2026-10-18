package com.tencent.taifeedback.upload.sdk.helper;

import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.tencent.taifeedback.upload.sdk.utils.Utils;
import com.yftech.transfer.service.CarAppList;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class DeviceHelper {
    public static final String BUILD_BOARD = "board";
    public static final String BUILD_BOOTLOADER = "bootloader";
    public static final String BUILD_BRAND = "brand";
    public static final String BUILD_CPU_ABI = "cpu_abi";
    public static final String BUILD_CPU_ABI_2 = "cpu_abi2";
    public static final String BUILD_DEVICE = "device";
    public static final String BUILD_DISPLAY = "display";
    public static final String BUILD_FINGERPRINT = "fingerprint";
    public static final String BUILD_HARDWARE = "hardware";
    public static final String BUILD_ID = "id";
    public static final String BUILD_MANUFACTURER = "manufacturer";
    public static final String BUILD_MODEL = "model";
    public static final String BUILD_PRODUCT = "product";
    public static final String BUILD_RADIO = "radio";
    public static final String BUILD_SERIAL = "serial";
    public static final String BUILD_TAGS = "tags";
    public static final String BUILD_TIME = "time";
    public static final String BUILD_TYPE = "type";
    public static final String BUILD_USER = "user";
    public static final String BUILD_VERSION_CODENAME = "codename";
    public static final String BUILD_VERSION_INCREMENTAL = "incremental";
    public static final String BUILD_VERSION_RELEASE = "release";
    public static final String BUILD_VERSION_SDK_INT = "sdk_int";
    public static final String FALSE = "false";
    public static final String HARDWARE_CPU = "cpu";
    public static final String HARDWARE_DISPLAY_DENSITY = "display_density";
    public static final String HARDWARE_DISPLAY_DENSITY_DPI = "display_density_dpi";
    public static final String HARDWARE_DISPLAY_RESOLUTION = "display_resolution";
    public static final String HARDWARE_RAM_AVAIL = "ram_avail";
    public static final String HARDWARE_RAM_TOTAL = "ram_total";
    public static final String HARDWARE_ROM_AVAIL = "rom_avail";
    public static final String HARDWARE_ROM_TOTAL = "rom_total";
    public static final String HARDWARE_SD_CARD_AVAIL = "sd_card_avail";
    public static final String HARDWARE_SD_CARD_PERMISSION = "sd_card_permission";
    public static final String HARDWARE_SD_CARD_TOTAL = "sd_card_total";
    public static final String JSON_FIELD_VERSION = "version";
    public static final String NETWORK_APN = "apn";
    public static final String NETWORK_PERMISSION = "permission";
    public static final String NETWORK_STATE = "state";
    public static final String NETWORK_SUBTYPE = "subtype";
    public static final String NETWORK_TYPE = "type";
    public static final String NETWORK_WIFI = "wifi";
    public static final String ROM_ROOTED = "rooted";
    public static final String ROM_TYPE = "type";
    private static final String RO_BUILD_HIDDEN_VER = "ro.build.hidden_ver";
    private static final String RO_BUILD_PDA = "ro.build.PDA";
    private static final String RO_MIUI_VERSION_CODE = "ro.miui.ui.version.code";
    private static final String TAG = "DeviceHelper";
    public static final String TELEPHONY_CELL = "cell";
    public static final String TELEPHONY_CELL_INFO_COUNT = "count";
    public static final String TELEPHONY_CELL_LOCATION = "location";
    public static final String TELEPHONY_DEVICE_ID = "device_id";
    public static final String TELEPHONY_NETWORK_OPERATOR = "network_operator";
    public static final String TELEPHONY_NETWORK_TYPE = "network_type";
    public static final String TELEPHONY_PERMISSION = "permission";
    public static final String TELEPHONY_PHONE_NO = "phone_no";
    public static final String TELEPHONY_PHONE_TYPE = "phone_type";
    public static final String TELEPHONY_ROAMING = "roaming";
    public static final String TELEPHONY_SIM_OPERATOR = "sim_operator";
    public static final String TELEPHONY_SIM_SERIAL_NO = "sim_serial_no";
    public static final String TELEPHONY_SIM_STATE = "sim_state";
    public static final String TELEPHONY_SOFTWARE_VERSION = "software_version";
    public static final String TRUE = "true";
    public static final String UNKNOWN = "unknown";
    public static final String WIFI_BSSID = "bssid";
    public static final String WIFI_CONFIG = "config";
    public static final String WIFI_IP_ADDRESS = "ip_address";
    public static final String WIFI_LINK_SPEED = "link_speed";
    public static final String WIFI_MAC_ADDRESS = "mac_address";
    public static final String WIFI_PERMISSION = "permission";
    public static final String WIFI_RSSI = "rssi";
    public static final String WIFI_SSID = "ssid";
    public static final String WIFI_STATE = "state";

    private static String getMobileNetworkTypeName(int i) {
        switch (i) {
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "CDMA - EvDo rev. 0";
            case 6:
                return "CDMA - EvDo rev. A";
            case 7:
                return "CDMA - 1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "iDEN";
            case 12:
                return "CDMA - EvDo rev. B";
            case 13:
                return "LTE";
            case 14:
                return "CDMA - eHRPD";
            case 15:
                return "HSPA+";
            default:
                return "unknown";
        }
    }

    public static JSONObject getJsonHardwareInfo(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(HARDWARE_CPU, getCpuInfo());
            String[] ramMemory = getRamMemory(context);
            jSONObject.put(HARDWARE_RAM_TOTAL, ramMemory[0]);
            jSONObject.put(HARDWARE_RAM_AVAIL, ramMemory[1]);
            String[] romMemroy = getRomMemroy();
            jSONObject.put(HARDWARE_ROM_TOTAL, romMemroy[0]);
            jSONObject.put(HARDWARE_ROM_AVAIL, romMemroy[1]);
            if (Utils.getInstance().checkPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                String[] sDCardMemory = getSDCardMemory();
                jSONObject.put(HARDWARE_SD_CARD_TOTAL, sDCardMemory[0]);
                jSONObject.put(HARDWARE_SD_CARD_AVAIL, sDCardMemory[1]);
            } else {
                jSONObject.put(HARDWARE_SD_CARD_PERMISSION, FALSE);
            }
            String[] screenInfo = getScreenInfo(context);
            jSONObject.put(HARDWARE_DISPLAY_RESOLUTION, screenInfo[0]);
            jSONObject.put(HARDWARE_DISPLAY_DENSITY, screenInfo[1]);
            jSONObject.put(HARDWARE_DISPLAY_DENSITY_DPI, screenInfo[2]);
            return jSONObject;
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
            return null;
        }
    }

    public static JSONObject getJsonTelephonyInfo(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (Utils.getInstance().checkPermission(context, "android.permission.READ_PHONE_STATE")) {
                jSONObject.put("permission", TRUE);
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                String str = "unknown";
                switch (telephonyManager.getPhoneType()) {
                    case 1:
                        str = "GSM";
                        break;
                    case 2:
                        str = "CDMA";
                        break;
                    case 3:
                        str = "SIP";
                        break;
                }
                jSONObject.put(TELEPHONY_PHONE_TYPE, str);
                String deviceId = telephonyManager.getDeviceId();
                if (deviceId != null) {
                    jSONObject.put(TELEPHONY_DEVICE_ID, deviceId);
                }
                String deviceSoftwareVersion = telephonyManager.getDeviceSoftwareVersion();
                if (deviceSoftwareVersion != null) {
                    jSONObject.put(TELEPHONY_SOFTWARE_VERSION, deviceSoftwareVersion);
                }
                int simState = telephonyManager.getSimState();
                if (simState != 1 && simState != 0) {
                    jSONObject.put(TELEPHONY_SIM_STATE, TRUE);
                    getJsonphoneInfo(telephonyManager, jSONObject, context);
                    getJsonCellInfo(str, telephonyManager, jSONObject, context);
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(telephonyManager.getSimCountryIso());
                    stringBuffer.append(",");
                    stringBuffer.append(telephonyManager.getSimOperator());
                    stringBuffer.append(",");
                    stringBuffer.append(telephonyManager.getSimOperatorName());
                    jSONObject.put(TELEPHONY_SIM_OPERATOR, stringBuffer.toString());
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append(telephonyManager.getNetworkCountryIso());
                    stringBuffer2.append(",");
                    stringBuffer2.append(telephonyManager.getNetworkOperator());
                    stringBuffer2.append(",");
                    stringBuffer2.append(telephonyManager.getNetworkOperatorName());
                    jSONObject.put(TELEPHONY_NETWORK_OPERATOR, stringBuffer2.toString());
                    jSONObject.put(TELEPHONY_NETWORK_TYPE, getMobileNetworkTypeName(telephonyManager.getNetworkType()));
                    jSONObject.put(TELEPHONY_ROAMING, String.valueOf(telephonyManager.isNetworkRoaming()));
                    return jSONObject;
                }
                jSONObject.put(TELEPHONY_SIM_STATE, FALSE);
                return jSONObject;
            }
            jSONObject.put("permission", FALSE);
            return jSONObject;
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
            return null;
        }
    }

    private static void getJsonCellInfo(String str, TelephonyManager telephonyManager, JSONObject jSONObject, Context context) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        if (Utils.getInstance().checkPermission(context, "android.permission.INTERACT_ACROSS_USERS_FULL")) {
            List neighboringCellInfo = telephonyManager.getNeighboringCellInfo();
            if (neighboringCellInfo != null) {
                int size = neighboringCellInfo.size();
                jSONObject2.put(TELEPHONY_CELL_INFO_COUNT, String.valueOf(size));
                for (int i = 0; i < size; i++) {
                    JSONObject jSONObject3 = new JSONObject();
                    NeighboringCellInfo neighboringCellInfo2 = (NeighboringCellInfo) neighboringCellInfo.get(i);
                    jSONObject3.put("lac", String.valueOf(neighboringCellInfo2.getLac()));
                    jSONObject3.put("cid", String.valueOf(neighboringCellInfo2.getCid()));
                    StringBuilder sb = new StringBuilder();
                    sb.append((neighboringCellInfo2.getRssi() * 2) - 113);
                    sb.append("n");
                    jSONObject3.put(WIFI_RSSI, sb.toString());
                    jSONObject2.put(String.valueOf(i), jSONObject3);
                }
            }
            if (str.equals("GSM")) {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) telephonyManager.getCellLocation();
                jSONObject2.put("location", "LAC:" + gsmCellLocation.getLac() + ",CID:" + gsmCellLocation.getCid());
            } else if (str.equals("CDMA") && (telephonyManager.getCellLocation() instanceof CdmaCellLocation)) {
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) telephonyManager.getCellLocation();
                jSONObject2.put("location", "LAC:" + cdmaCellLocation.getNetworkId() + ",CID:" + (cdmaCellLocation.getBaseStationId() / 16));
            }
            jSONObject.put(TELEPHONY_CELL, jSONObject2);
        }
    }

    private static void getJsonphoneInfo(TelephonyManager telephonyManager, JSONObject jSONObject, Context context) throws JSONException {
        Cursor query;
        String line1Number = telephonyManager.getLine1Number();
        if (line1Number == null || line1Number.equals("")) {
            if (!Utils.getInstance().checkPermission(context, "android.permission.READ_SMS") || (query = context.getContentResolver().query(Uri.parse("content://sms"), new String[]{"(select address from addr where type = 151) as address"}, null, null, "date desc")) == null || query.getCount() == 0) {
                return;
            }
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex("address"));
            if (string != null) {
                jSONObject.put(TELEPHONY_PHONE_NO, string);
                return;
            }
            return;
        }
        jSONObject.put(TELEPHONY_PHONE_NO, line1Number);
    }

    public static JSONObject getJsonNetworkInfo(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (Utils.getInstance().checkPermission(context, "android.permission.INTERNET") && Utils.getInstance().checkPermission(context, "android.permission.ACCESS_NETWORK_STATE")) {
                jSONObject.put("permission", TRUE);
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    jSONObject.put("state", TRUE);
                    jSONObject.put("type", activeNetworkInfo.getTypeName());
                    if (activeNetworkInfo.getType() == 0) {
                        jSONObject.put(NETWORK_SUBTYPE, activeNetworkInfo.getSubtypeName());
                        jSONObject.put(NETWORK_APN, activeNetworkInfo.getExtraInfo());
                        return jSONObject;
                    }
                    if (activeNetworkInfo.getType() != 1) {
                        return jSONObject;
                    }
                    jSONObject.put("wifi", getJsonWifiInfo(context));
                    return jSONObject;
                }
                jSONObject.put("state", FALSE);
                return jSONObject;
            }
            jSONObject.put("permission", FALSE);
            return jSONObject;
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
            return null;
        }
    }

    public static JSONObject getJsonWifiInfo(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (Utils.getInstance().checkPermission(context, "android.permission.ACCESS_WIFI_STATE")) {
                jSONObject.put("permission", TRUE);
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                jSONObject.put(WIFI_MAC_ADDRESS, connectionInfo.getMacAddress());
                if (wifiManager.getWifiState() == 3) {
                    jSONObject.put("state", TRUE);
                    jSONObject.put(WIFI_IP_ADDRESS, formatIpAddress(connectionInfo.getIpAddress()));
                    jSONObject.put(WIFI_SSID, connectionInfo.getSSID());
                    jSONObject.put(WIFI_BSSID, connectionInfo.getBSSID());
                    jSONObject.put(WIFI_RSSI, connectionInfo.getRssi() + "dB");
                    jSONObject.put(WIFI_LINK_SPEED, connectionInfo.getLinkSpeed() + "Mbps");
                    List<WifiConfiguration> configuredNetworks = wifiManager.getConfiguredNetworks();
                    int size = configuredNetworks.size();
                    JSONObject jSONObject2 = new JSONObject();
                    for (int i = 0; i < size; i++) {
                        jSONObject2.put(String.valueOf(i), configuredNetworks.get(i).toString());
                    }
                    if (size <= 0) {
                        return jSONObject;
                    }
                    jSONObject.put("config", jSONObject2);
                    return jSONObject;
                }
                jSONObject.put("state", FALSE);
                return jSONObject;
            }
            jSONObject.put("permission", FALSE);
            return jSONObject;
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
            return null;
        }
    }

    public static JSONObject getJsonBuildInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BUILD_BOARD, Build.BOARD);
            jSONObject.put(BUILD_BOOTLOADER, Build.BOOTLOADER);
            jSONObject.put(BUILD_BRAND, Build.BRAND);
            jSONObject.put(BUILD_CPU_ABI, Build.CPU_ABI);
            jSONObject.put(BUILD_CPU_ABI_2, Build.CPU_ABI2);
            jSONObject.put(BUILD_DEVICE, Build.DEVICE);
            jSONObject.put(BUILD_DISPLAY, Build.DISPLAY);
            jSONObject.put(BUILD_FINGERPRINT, Build.FINGERPRINT);
            jSONObject.put("hardware", Build.HARDWARE);
            jSONObject.put("id", Build.ID);
            jSONObject.put(BUILD_MANUFACTURER, Build.MANUFACTURER);
            jSONObject.put(BUILD_MODEL, Build.MODEL);
            jSONObject.put(BUILD_PRODUCT, Build.PRODUCT);
            if (Build.VERSION.SDK_INT < 14) {
                jSONObject.put("radio", Build.RADIO);
            } else {
                jSONObject.put("radio", Build.getRadioVersion());
            }
            if (Build.VERSION.SDK_INT < 9) {
                jSONObject.put(BUILD_SERIAL, getBuildByInvoke("ro.serialno"));
            } else {
                jSONObject.put(BUILD_SERIAL, Build.SERIAL);
            }
            jSONObject.put(BUILD_TAGS, Build.TAGS);
            jSONObject.put("time", String.valueOf(Build.TIME));
            jSONObject.put("type", Build.TYPE);
            jSONObject.put(BUILD_USER, Build.USER);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(BUILD_VERSION_CODENAME, Build.VERSION.CODENAME);
            jSONObject2.put(BUILD_VERSION_INCREMENTAL, Build.VERSION.INCREMENTAL);
            jSONObject2.put("release", Build.VERSION.RELEASE);
            jSONObject2.put(BUILD_VERSION_SDK_INT, String.valueOf(Build.VERSION.SDK_INT));
            jSONObject.put(JSON_FIELD_VERSION, jSONObject2);
            return jSONObject;
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
            return null;
        }
    }

    public static JSONObject getJsonRomInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (isMIUI()) {
                jSONObject.put("type", "MIUI");
                jSONObject.put(RO_MIUI_VERSION_CODE, getBuildByInvoke(RO_MIUI_VERSION_CODE));
                jSONObject.put("ro.miui.ui.version.name", getBuildByInvoke("ro.miui.ui.version.name"));
            } else if (isTouchWiz()) {
                jSONObject.put("type", "TouchWiz");
                jSONObject.put(RO_BUILD_PDA, getBuildByInvoke(RO_BUILD_PDA));
                jSONObject.put(RO_BUILD_HIDDEN_VER, getBuildByInvoke(RO_BUILD_HIDDEN_VER));
            } else if (isIUNI()) {
                jSONObject.put("type", "IUNI");
                jSONObject.put("ro.gn.iuniznvernumber", getBuildByInvoke("ro.gn.iuniznvernumber"));
            } else if (isVIVO()) {
                jSONObject.put("type", "VIVO");
                jSONObject.put("ro.build.version.bbk", getBuildByInvoke("ro.build.version.bbk"));
            } else if (isFlyMe()) {
                jSONObject.put("type", "FlyMe");
            } else if (isSence()) {
                jSONObject.put("type", "Sence");
                jSONObject.put("ro.build.sense.version", getBuildByInvoke("ro.build.sense.version"));
            } else if (isMokee()) {
                jSONObject.put("type", "MoKee");
                jSONObject.put("ro.mk.version", getBuildByInvoke("ro.mk.version"));
                jSONObject.put("ro.modversion", getBuildByInvoke("ro.modversion"));
            } else if (isCM()) {
                jSONObject.put("type", "CyanogenMod");
                jSONObject.put("ro.cm.version", getBuildByInvoke("ro.cm.version"));
                jSONObject.put("ro.modversion", getBuildByInvoke("ro.modversion"));
            } else if (isSmartisan()) {
                jSONObject.put("type", "Smartisan");
                jSONObject.put("ro.cm.version", getBuildByInvoke("ro.cm.version"));
                jSONObject.put("ro.modversion", getBuildByInvoke("ro.modversion"));
            } else {
                jSONObject.put("type", "unknown");
            }
            jSONObject.put(ROM_ROOTED, Utils.getInstance().isRooted());
            return jSONObject;
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getCpuInfo() {
        BufferedReader bufferedReader;
        FileReader fileReader;
        IOException e;
        String str;
        StringBuilder sb;
        String str2 = "";
        try {
            fileReader = new FileReader("/proc/cpuinfo");
        } catch (IOException e2) {
            fileReader = null;
            e = e2;
            bufferedReader = null;
        } catch (Throwable th) {
            th = th;
            bufferedReader = null;
            fileReader = null;
        }
        try {
            bufferedReader = new BufferedReader(fileReader, 8192);
            try {
                try {
                    String[] split = bufferedReader.readLine().split("\\s+");
                    int i = 2;
                    while (i < split.length) {
                        i++;
                        str2 = str2 + split[i] + " ";
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e3));
                    }
                } catch (IOException e4) {
                    e = e4;
                    Utils.getInstance().log(TAG, e);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e5) {
                            Log.e(TAG, "Exception:" + Log.getStackTraceString(e5));
                        }
                    }
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (IOException e6) {
                            e = e6;
                            str = TAG;
                            sb = new StringBuilder();
                            sb.append("Exception:");
                            sb.append(Log.getStackTraceString(e));
                            Log.e(str, sb.toString());
                            return str2 + Utils.getInstance().formatCpuSize(getCpuFreqMax());
                        }
                    }
                    return str2 + Utils.getInstance().formatCpuSize(getCpuFreqMax());
                }
                try {
                    fileReader.close();
                } catch (IOException e7) {
                    e = e7;
                    str = TAG;
                    sb = new StringBuilder();
                    sb.append("Exception:");
                    sb.append(Log.getStackTraceString(e));
                    Log.e(str, sb.toString());
                    return str2 + Utils.getInstance().formatCpuSize(getCpuFreqMax());
                }
            } catch (Throwable th2) {
                th = th2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e8) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e8));
                    }
                }
                if (fileReader == null) {
                    try {
                        fileReader.close();
                        throw th;
                    } catch (IOException e9) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e9));
                        throw th;
                    }
                }
                throw th;
            }
        } catch (IOException e10) {
            e = e10;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
            if (bufferedReader != null) {
            }
            if (fileReader == null) {
            }
        }
        return str2 + Utils.getInstance().formatCpuSize(getCpuFreqMax());
    }

    private static long getCpuFreqMax() {
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (IOException unused) {
            str = CarAppList.MediaPage.PAGE_FM;
        }
        return Long.valueOf(TextUtils.isEmpty(str.trim()) ? CarAppList.MediaPage.PAGE_FM : str.trim()).longValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        r2 = java.lang.Long.parseLong(java.util.regex.Pattern.compile("[^0-9]").matcher(r8).replaceAll("").trim()) * android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0057, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0058, code lost:
    
        android.util.Log.e(com.tencent.taifeedback.upload.sdk.helper.DeviceHelper.TAG, "Exception:" + android.util.Log.getStackTraceString(r8));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.BufferedReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] getRamMemory(Context context) {
        long j;
        FileReader fileReader;
        Throwable th;
        IOException e;
        BufferedReader bufferedReader;
        String str;
        StringBuilder sb;
        ?? r0 = "/proc/meminfo";
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        if (Build.VERSION.SDK_INT < 16) {
            j = 0;
            try {
                try {
                    fileReader = new FileReader("/proc/meminfo");
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                fileReader = null;
                e = e2;
                bufferedReader = null;
            } catch (Throwable th3) {
                fileReader = null;
                th = th3;
                r0 = 0;
            }
            try {
                bufferedReader = new BufferedReader(fileReader, 8192);
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            if (readLine != null && readLine.contains("MemTotal")) {
                                break;
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        Utils.getInstance().log(TAG, e);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e4) {
                                Log.e(TAG, "Exception:" + Log.getStackTraceString(e4));
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e5) {
                                e = e5;
                                str = TAG;
                                sb = new StringBuilder();
                                sb.append("Exception:");
                                sb.append(Log.getStackTraceString(e));
                                Log.e(str, sb.toString());
                                return new String[]{Utils.getInstance().formatSize(j), Utils.getInstance().formatSize(memoryInfo.availMem)};
                            }
                        }
                        return new String[]{Utils.getInstance().formatSize(j), Utils.getInstance().formatSize(memoryInfo.availMem)};
                    }
                }
            } catch (IOException e6) {
                bufferedReader = null;
                e = e6;
            } catch (Throwable th4) {
                r0 = 0;
                th = th4;
                if (r0 != 0) {
                    try {
                        r0.close();
                    } catch (IOException e7) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e7));
                    }
                }
                if (fileReader != null) {
                    try {
                        fileReader.close();
                        throw th;
                    } catch (IOException e8) {
                        Log.e(TAG, "Exception:" + Log.getStackTraceString(e8));
                        throw th;
                    }
                }
                throw th;
            }
        } else {
            j = memoryInfo.totalMem;
        }
        return new String[]{Utils.getInstance().formatSize(j), Utils.getInstance().formatSize(memoryInfo.availMem)};
        try {
            fileReader.close();
            break;
        } catch (IOException e9) {
            e = e9;
            str = TAG;
            sb = new StringBuilder();
            sb.append("Exception:");
            sb.append(Log.getStackTraceString(e));
            Log.e(str, sb.toString());
            return new String[]{Utils.getInstance().formatSize(j), Utils.getInstance().formatSize(memoryInfo.availMem)};
        }
        return new String[]{Utils.getInstance().formatSize(j), Utils.getInstance().formatSize(memoryInfo.availMem)};
    }

    public static String[] getRomMemroy() {
        long blockSizeLong;
        long blockCountLong;
        long availableBlocksLong;
        String[] strArr = {CarAppList.MediaPage.PAGE_FM, CarAppList.MediaPage.PAGE_FM};
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        if (Build.VERSION.SDK_INT < 18) {
            blockSizeLong = statFs.getBlockSize();
            blockCountLong = statFs.getBlockCount();
            availableBlocksLong = statFs.getAvailableBlocks();
        } else {
            blockSizeLong = statFs.getBlockSizeLong();
            blockCountLong = statFs.getBlockCountLong();
            availableBlocksLong = statFs.getAvailableBlocksLong();
        }
        strArr[0] = Utils.getInstance().formatSize(blockCountLong * blockSizeLong);
        strArr[1] = Utils.getInstance().formatSize(blockSizeLong * availableBlocksLong);
        return strArr;
    }

    public static String[] getSDCardMemory() {
        long blockSizeLong;
        long blockCountLong;
        long availableBlocksLong;
        String[] strArr = {CarAppList.MediaPage.PAGE_FM, CarAppList.MediaPage.PAGE_FM};
        if ("mounted".equals(Environment.getExternalStorageState())) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            if (Build.VERSION.SDK_INT < 18) {
                blockSizeLong = statFs.getBlockSize();
                blockCountLong = statFs.getBlockCount();
                availableBlocksLong = statFs.getAvailableBlocks();
            } else {
                blockSizeLong = statFs.getBlockSizeLong();
                blockCountLong = statFs.getBlockCountLong();
                availableBlocksLong = statFs.getAvailableBlocksLong();
            }
            strArr[0] = Utils.getInstance().formatSize(blockCountLong * blockSizeLong);
            strArr[1] = Utils.getInstance().formatSize(blockSizeLong * availableBlocksLong);
        }
        return strArr;
    }

    public static String[] getScreenInfo(Context context) {
        DisplayMetrics displayMetrics = getDisplayMetrics(context);
        return new String[]{displayMetrics.widthPixels + "*" + displayMetrics.heightPixels, String.valueOf(displayMetrics.density), String.valueOf(displayMetrics.densityDpi)};
    }

    public static DisplayMetrics getDisplayMetrics(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static boolean isMIUI() {
        return !getBuildByInvoke(RO_MIUI_VERSION_CODE).equalsIgnoreCase("unknown");
    }

    public static boolean isTouchWiz() {
        return (getBuildByInvoke(RO_BUILD_PDA).equalsIgnoreCase("unknown") || getBuildByInvoke(RO_BUILD_HIDDEN_VER).equalsIgnoreCase("unknown")) ? false : true;
    }

    public static boolean isIUNI() {
        return !getBuildByInvoke("ro.gn.iuniznvernumber").equalsIgnoreCase("unknown");
    }

    public static boolean isVIVO() {
        return getBuildByInvoke("ro.product.brand").equalsIgnoreCase("vivo");
    }

    public static boolean isFlyMe() {
        return getBuildByInvoke("ro.build.display.id").toLowerCase().contains("flyme") || getBuildByInvoke("ro.build.description").toLowerCase().contains("flyme");
    }

    public static boolean isSence() {
        return !getBuildByInvoke("ro.build.sense.version").equalsIgnoreCase("unknown");
    }

    public static boolean isMokee() {
        return !getBuildByInvoke("ro.mk.version").equalsIgnoreCase("unknown");
    }

    public static boolean isCM() {
        return !getBuildByInvoke("ro.cm.version").equalsIgnoreCase("unknown") && getBuildByInvoke("ro.rommanager.developerid").contains("cyanogenmod");
    }

    public static boolean isSmartisan() {
        return !getBuildByInvoke("ro.cm.version").equalsIgnoreCase("unknown") && getBuildByInvoke("ro.rommanager.developerid").equalsIgnoreCase("smartisan");
    }

    private static String formatIpAddress(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    public static String getBuildByInvoke(String str) {
        try {
            Method declaredMethod = Class.forName("android.os.Build").getDeclaredMethod("getString", Class.forName("java.lang.String"));
            if (!declaredMethod.isAccessible()) {
                declaredMethod.setAccessible(true);
            }
            return (String) declaredMethod.invoke(new Build(), str);
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
            return "unknown";
        }
    }

    public static String getBbVersion() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls.newInstance(), "gsm.version.baseband", "no message");
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
            return "unknown";
        }
    }

    public static String getKernel() {
        String str = "";
        try {
            ProcessBuilder processBuilder = new ProcessBuilder("/system/bin/cat", "/proc/version");
            processBuilder.directory(new File("/system/bin/"));
            processBuilder.redirectErrorStream(true);
            InputStream inputStream = processBuilder.start().getInputStream();
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader, 8192);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                str = str + readLine;
            }
            inputStream.close();
            inputStreamReader.close();
            bufferedReader.close();
        } catch (Exception e) {
            Log.e(TAG, "Exception :" + Log.getStackTraceString(e));
        }
        return str;
    }
}
