package com.tencent.wecarbase.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.common.BuildConfig;
import com.tencent.wecarbase.common.ContextHolder;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class PackageUtils {
    private static final String FILE_NAME_BUILDNO = "BuildNo.txt";
    public static final String SUBNAVI_PROCESS_NAME = ":subnavi";
    private static final String TAG = "PackageUtils";
    public static final String UPLOAD_PACKAGE_NAME = "packagename";
    public static final String UPLOAD_PACKAGE_VC = "appvc";
    public static final String UPLOAD_PACKAGE_VN = "appvn";
    public static final String WECARBASE_PROCESS_NAME = ":wecarbase";
    private static long apkUpdateTime = 0;
    private static String mMacAddr = "";
    private static String mServiceChannel = "autonavi";
    private static int sAppVersionCode = 0;
    private static String sAppVersionName = null;
    private static int sBuildNo = 0;
    private static String sBuildTime = "";
    private static String sCID = "";
    private static String sDeviceId = null;
    private static String sPackageName = null;
    private static String sProcessName = null;
    private static String sWecarId = "";

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ServiceChannel {
        SERVICECHANNEL_TASROM("TASROM"),
        SERVICECHANNEL_LINK("LINK"),
        SERVICECHANNEL_APP("APP"),
        SERVICECHANNEL_OPENSDK("OPENSDK");

        String value;

        ServiceChannel(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    private static Context getContext() {
        Context context = ContextHolder.getContext();
        if (context != null) {
            return context;
        }
        throw new RuntimeException("the context in TNSdkManager is null ,you may have not init the SDK");
    }

    private static void initAppVersion(Context context) {
        if (TextUtils.isEmpty(sPackageName)) {
            PackageManager packageManager = context.getPackageManager();
            try {
                sPackageName = context.getPackageName();
                PackageInfo packageInfo = packageManager.getPackageInfo(sPackageName, 0);
                sAppVersionName = packageInfo.versionName;
                sAppVersionCode = packageInfo.versionCode;
            } catch (Exception unused) {
                sAppVersionName = "NULL";
                sAppVersionCode = -1;
            }
        }
    }

    public static long getTaiAARCodeInAPP(Context context, String str) {
        try {
            String string = context.getPackageManager().getApplicationInfo(str, 128).metaData.getString("tai_ver_code");
            if (TextUtils.isEmpty(string)) {
                return -1L;
            }
            return Long.parseLong(string.replace("L", ""));
        } catch (Exception e) {
            Log.e(TAG, " get " + str + " tai_ver_code error:" + e.getMessage());
            return -1L;
        }
    }

    public static long getPriorityCodeInAPP(String str) {
        if (isAPPInstalled(getContext(), str)) {
            return getTaiAARCodeInAPP(getContext(), str);
        }
        return -1L;
    }

    public static boolean isAPPInstalled(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 1);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static JSONArray getPackagesAndTAIInfo(Context context, String[] strArr) {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(UPLOAD_PACKAGE_NAME, "com.tencent.taiservice");
            jSONObject.put(UPLOAD_PACKAGE_VN, "3.1.0.474");
            jSONObject.put(UPLOAD_PACKAGE_VC, BuildConfig.SDKVersionCode);
        } catch (JSONException e) {
            Log.e(TAG, Log.getStackTraceString(e));
        }
        jSONArray.put(jSONObject);
        if (strArr == null) {
            return null;
        }
        for (String str : strArr) {
            JSONObject packageInfoMap = getPackageInfoMap(context, str);
            if (packageInfoMap != null && packageInfoMap.length() > 0) {
                jSONArray.put(packageInfoMap);
            }
        }
        return jSONArray;
    }

    public static JSONObject getPackageInfoMap(Context context, String str) {
        JSONObject jSONObject = new JSONObject();
        if (getPackageInfo(context, str) != null) {
            try {
                jSONObject.put(UPLOAD_PACKAGE_NAME, str);
                jSONObject.put(UPLOAD_PACKAGE_VN, getVersionName(context, str));
                jSONObject.put(UPLOAD_PACKAGE_VC, String.valueOf(getVersionCode(context, str)));
            } catch (JSONException e) {
                Log.e(TAG, Log.getStackTraceString(e));
            }
        }
        return jSONObject;
    }

    public static String getVersionName(Context context, String str) {
        PackageInfo packageInfo = getPackageInfo(context, str);
        if (packageInfo == null) {
            return null;
        }
        return packageInfo.versionName;
    }

    public static int getVersionCode(Context context, String str) {
        PackageInfo packageInfo = getPackageInfo(context, str);
        if (packageInfo == null) {
            return -1;
        }
        return packageInfo.versionCode;
    }

    private static PackageInfo getPackageInfo(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 16384);
        } catch (Exception e) {
            LogUtils.e(TAG, "getPackageInfo error:" + e.getMessage());
            return null;
        }
    }

    public static String getPhoneNum() {
        TelephonyManager telephonyManager = (TelephonyManager) getContext().getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        String line1Number = telephonyManager.getLine1Number();
        return TextUtils.isEmpty(line1Number) ? "" : line1Number;
    }

    public static String getImeiNum() {
        TelephonyManager telephonyManager = (TelephonyManager) getContext().getSystemService("phone");
        String deviceId = telephonyManager != null ? telephonyManager.getDeviceId() : "";
        LogUtils.d(TAG, "getImeiNum result = " + deviceId);
        return deviceId;
    }

    public static String getImsiNum() {
        String subscriberId;
        TelephonyManager telephonyManager = (TelephonyManager) getContext().getSystemService("phone");
        return (telephonyManager == null || (subscriberId = telephonyManager.getSubscriberId()) == null) ? "" : subscriberId;
    }

    public static String getAndroidId() {
        String string = Settings.Secure.getString(getContext().getContentResolver(), "android_id");
        return string == null ? "" : string;
    }

    public static String getMacNum() {
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        if (!TextUtils.isEmpty(mMacAddr)) {
            return mMacAddr;
        }
        Context context = getContext();
        return (((TelephonyManager) context.getSystemService("phone")) == null || (wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi")) == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) ? "" : connectionInfo.getMacAddress();
    }

    public static void setDeviceId(String str) {
        sDeviceId = str;
    }

    public static String getDeviceId() {
        if (!TextUtils.isEmpty(sDeviceId)) {
            return sDeviceId;
        }
        sDeviceId = getCID();
        if (TextUtils.isEmpty(sDeviceId)) {
            sDeviceId = Settings.Secure.getString(getContext().getContentResolver(), "android_id");
        }
        return sDeviceId;
    }

    public static int getVersionCode() {
        initAppVersion(getContext());
        return sAppVersionCode;
    }

    public static String getVersionName() {
        initAppVersion(getContext());
        return sAppVersionName;
    }

    public static String getPackageName(Context context) {
        initAppVersion(context);
        return sPackageName;
    }

    public static int getSystemVersion() {
        return Build.VERSION.SDK_INT;
    }

    public static long getApkUpdateTime() {
        if (apkUpdateTime != 0) {
            return apkUpdateTime;
        }
        Context context = getContext();
        try {
            File file = new File(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).nativeLibraryDir);
            apkUpdateTime = file.exists() ? file.lastModified() : System.currentTimeMillis();
        } catch (Throwable unused) {
        }
        return apkUpdateTime;
    }

    public static String getPhoneType() {
        String str = Build.MODEL;
        return str == null ? "" : str;
    }

    public static String getOSVersion() {
        return "Android" + Build.VERSION.RELEASE;
    }

    public static String getAppVersionName() {
        if (TextUtils.isEmpty(sAppVersionName)) {
            initAppVersion(getContext());
        }
        if (sAppVersionName == null) {
            sAppVersionName = "";
        }
        return sAppVersionName;
    }

    public static int getAppVersionCode() {
        if (sAppVersionCode == 0) {
            initAppVersion(getContext());
        }
        return sAppVersionCode;
    }

    public static String getWecarId() {
        return sWecarId;
    }

    public static void setWecarId(String str) {
        sWecarId = str;
    }

    public static boolean isWecarNaviAppRunning(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) getContext().getSystemService("activity")).getRunningTasks(100);
        String packageName = getPackageName(context);
        for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
            if (runningTaskInfo.topActivity.getPackageName().equals(packageName) || runningTaskInfo.baseActivity.getPackageName().equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v6 */
    public static String getBuildTime(Context context) {
        Exception e;
        InputStream inputStream;
        if (TextUtils.isEmpty(sBuildTime)) {
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    inputStream = context.getAssets().open("BuildTime.txt");
                } catch (IOException e2) {
                    Log.e(TAG, Log.getStackTraceString(e2));
                }
                try {
                    byte[] bArr = new byte[inputStream.available()];
                    do {
                    } while (inputStream.read(bArr) > 0);
                    String str = new String(bArr, "UTF-8");
                    if (!TextUtils.isEmpty(str)) {
                        str = str.replaceAll("\n", "").replaceAll(" ", "");
                    }
                    sBuildTime = str;
                } catch (Exception e3) {
                    e = e3;
                    Log.e(TAG, Log.getStackTraceString(e));
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return sBuildTime;
                }
            } catch (Exception e4) {
                e = e4;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                context = 0;
                if (context != 0) {
                    try {
                        context.close();
                    } catch (IOException e5) {
                        Log.e(TAG, Log.getStackTraceString(e5));
                    }
                }
                throw th;
            }
            if (inputStream != null) {
                inputStream.close();
            }
        }
        return sBuildTime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v6 */
    public static int getBuildNo(Context context) {
        Exception e;
        InputStream inputStream;
        if (sBuildNo <= 0) {
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    inputStream = context.getAssets().open(FILE_NAME_BUILDNO);
                } catch (IOException e2) {
                    Log.e(TAG, Log.getStackTraceString(e2));
                }
                try {
                    byte[] bArr = new byte[inputStream.available()];
                    do {
                    } while (inputStream.read(bArr) > 0);
                    String str = new String(bArr, "UTF-8");
                    if (!TextUtils.isEmpty(str)) {
                        str = str.replaceAll("\n", "").replaceAll(" ", "");
                    }
                    sBuildNo = Integer.parseInt(str);
                } catch (Exception e3) {
                    e = e3;
                    Log.e(TAG, Log.getStackTraceString(e));
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return sBuildNo;
                }
            } catch (Exception e4) {
                e = e4;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                context = 0;
                if (context != 0) {
                    try {
                        context.close();
                    } catch (IOException e5) {
                        Log.e(TAG, Log.getStackTraceString(e5));
                    }
                }
                throw th;
            }
            if (inputStream != null) {
                inputStream.close();
            }
        }
        return sBuildNo;
    }

    public static void setServiceChannel(String str) {
        if (str != null) {
            mServiceChannel = str;
        }
    }

    public static String getDeviceName() {
        String str = Build.MODEL;
        if (TextUtils.isEmpty(str)) {
            str = Build.BRAND;
        }
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        return !TextUtils.isEmpty(str) ? Uri.encode(str) : str;
    }

    public static String getServiceChannel() {
        return mServiceChannel;
    }

    public static String getTopAppPackage(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (Build.VERSION.SDK_INT >= 21) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = activityManager.getRunningAppProcesses().get(0);
            if (runningAppProcessInfo == null || runningAppProcessInfo.importance != 100) {
                return null;
            }
            return runningAppProcessInfo.processName;
        }
        return activityManager.getRunningTasks(1).get(0).topActivity.getPackageName();
    }

    public static boolean isWecarNaviRunInForeground(Context context) {
        String packageName = getPackageName(context);
        return !TextUtils.isEmpty(packageName) && packageName.equals(getTopAppPackage(getContext()));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a9 A[EDGE_INSN: B:33:0x00a9->B:34:0x00a9 BREAK  A[LOOP:0: B:26:0x0097->B:32:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getProcessName(Context context) {
        String str;
        String str2;
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        Iterator<ActivityManager.RunningAppProcessInfo> it;
        if (!TextUtils.isEmpty(sProcessName)) {
            return sProcessName;
        }
        int myPid = Process.myPid();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader("/proc/" + myPid + "/cmdline"));
                try {
                    try {
                        str = bufferedReader2.readLine();
                        try {
                            str2 = !TextUtils.isEmpty(str) ? str.trim() : str;
                            try {
                                bufferedReader2.close();
                            } catch (IOException e) {
                                Log.e(TAG, Log.getStackTraceString(e));
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            Log.e(TAG, Log.getStackTraceString(th));
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e2) {
                                    Log.e(TAG, Log.getStackTraceString(e2));
                                }
                            }
                            str2 = str;
                            if (TextUtils.isEmpty(str2)) {
                                it = runningAppProcesses.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                    }
                                }
                            }
                            if (!TextUtils.isEmpty(str2)) {
                            }
                            return str2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e3) {
                                Log.e(TAG, Log.getStackTraceString(e3));
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    str = null;
                    bufferedReader = bufferedReader2;
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                str = null;
            }
            if (TextUtils.isEmpty(str2) && context != null && (activityManager = (ActivityManager) context.getSystemService("activity")) != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                it = runningAppProcesses.iterator();
                while (true) {
                    if (it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.pid == myPid) {
                        str2 = next.processName;
                        break;
                    }
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                sProcessName = str2;
            }
            return str2;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public static void setMacAddr(String str) {
        mMacAddr = str;
    }

    public static String getWifiMacAddress(Context context) {
        if (!TextUtils.isEmpty(mMacAddr)) {
            return mMacAddr;
        }
        return tryGetMAC((WifiManager) context.getSystemService("wifi"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0150  */
    /* JADX WARN: Type inference failed for: r1v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.io.FileReader] */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.io.FileReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.FileReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getCID() {
        BufferedReader bufferedReader;
        Exception e;
        IOException e2;
        BufferedReader bufferedReader2;
        String str;
        String stackTraceString;
        if (TextUtils.isEmpty(sCID)) {
            BufferedReader bufferedReader3 = null;
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    bufferedReader = new BufferedReader(new FileReader(new File("/sys/block/mmcblk0/device/type")));
                } catch (Exception e3) {
                    Log.e(TAG, Log.getStackTraceString(e3));
                }
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        String lowerCase = readLine.toLowerCase();
                        LogUtils.e(TAG, "getCID type:" + lowerCase);
                        ?? r3 = "mmc";
                        ?? equals = "mmc".equals(lowerCase);
                        try {
                            if (equals != 0) {
                                try {
                                    r3 = new FileReader(new File("/sys/block/mmcblk0/device/cid"));
                                } catch (IOException e4) {
                                    r3 = 0;
                                    e2 = e4;
                                    bufferedReader2 = null;
                                } catch (Throwable th2) {
                                    r3 = 0;
                                    th = th2;
                                    equals = 0;
                                }
                                try {
                                    bufferedReader2 = new BufferedReader(r3);
                                    try {
                                        sCID = bufferedReader2.readLine();
                                        if (!TextUtils.isEmpty(sCID)) {
                                            sCID = sCID.trim();
                                        }
                                        try {
                                            r3.close();
                                        } catch (Exception e5) {
                                            Log.e(TAG, Log.getStackTraceString(e5));
                                        }
                                    } catch (IOException e6) {
                                        e2 = e6;
                                        Log.e(TAG, Log.getStackTraceString(e2));
                                        if (r3 != 0) {
                                            try {
                                                r3.close();
                                            } catch (Exception e7) {
                                                Log.e(TAG, Log.getStackTraceString(e7));
                                            }
                                        }
                                        if (bufferedReader2 != null) {
                                            try {
                                                bufferedReader2.close();
                                            } catch (Exception e8) {
                                                str = TAG;
                                                stackTraceString = Log.getStackTraceString(e8);
                                                Log.e(str, stackTraceString);
                                                LogUtils.e(TAG, "getCID cID: " + sCID);
                                                bufferedReader.close();
                                                if (sCID == null) {
                                                }
                                                return sCID;
                                            }
                                        }
                                        LogUtils.e(TAG, "getCID cID: " + sCID);
                                        bufferedReader.close();
                                        if (sCID == null) {
                                        }
                                        return sCID;
                                    }
                                    try {
                                        bufferedReader2.close();
                                    } catch (Exception e9) {
                                        str = TAG;
                                        stackTraceString = Log.getStackTraceString(e9);
                                        Log.e(str, stackTraceString);
                                        LogUtils.e(TAG, "getCID cID: " + sCID);
                                        bufferedReader.close();
                                        if (sCID == null) {
                                        }
                                        return sCID;
                                    }
                                } catch (IOException e10) {
                                    bufferedReader2 = null;
                                    e2 = e10;
                                } catch (Throwable th3) {
                                    equals = 0;
                                    th = th3;
                                    if (r3 != 0) {
                                        try {
                                            r3.close();
                                        } catch (Exception e11) {
                                            Log.e(TAG, Log.getStackTraceString(e11));
                                        }
                                    }
                                    if (equals != 0) {
                                        try {
                                            equals.close();
                                            throw th;
                                        } catch (Exception e12) {
                                            Log.e(TAG, Log.getStackTraceString(e12));
                                            throw th;
                                        }
                                    }
                                    throw th;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }
                    LogUtils.e(TAG, "getCID cID: " + sCID);
                    bufferedReader.close();
                } catch (Exception e13) {
                    e = e13;
                    LogUtils.e(TAG, "getCID error: " + e.toString());
                    sCID = "";
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (sCID == null) {
                    }
                    return sCID;
                }
            } catch (Exception e14) {
                bufferedReader = null;
                e = e14;
            } catch (Throwable th5) {
                th = th5;
                if (0 != 0) {
                    try {
                        bufferedReader3.close();
                    } catch (Exception e15) {
                        Log.e(TAG, Log.getStackTraceString(e15));
                    }
                }
                throw th;
            }
        }
        if (sCID == null) {
            sCID = "";
        }
        return sCID;
    }

    public static String getSerial() {
        String str = Build.SERIAL;
        return str == null ? "" : str;
    }

    public static String getBrand() {
        String str = Build.BRAND;
        return str == null ? "" : str;
    }

    public static String getManufacturer() {
        String str = Build.MANUFACTURER;
        return str == null ? "" : str;
    }

    public static String getICCID(Context context) {
        List<SubscriptionInfo> activeSubscriptionInfoList;
        String str = null;
        if (Build.VERSION.SDK_INT >= 22) {
            SubscriptionManager from = SubscriptionManager.from(context);
            if (from != null && (activeSubscriptionInfoList = from.getActiveSubscriptionInfoList()) != null && activeSubscriptionInfoList.size() > 0) {
                str = activeSubscriptionInfoList.get(0).getIccId();
            }
        } else {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                str = telephonyManager.getSimSerialNumber();
            }
        }
        return str == null ? "" : str;
    }

    private static String tryGetMAC(WifiManager wifiManager) {
        WifiInfo connectionInfo;
        if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null || TextUtils.isEmpty(connectionInfo.getMacAddress())) {
            return null;
        }
        return connectionInfo.getMacAddress().trim().toUpperCase();
    }

    public static boolean isMainAppProcess(Context context) {
        String processName = getProcessName(context);
        return getPackageName(context).equals(processName) || TextUtils.isEmpty(processName);
    }

    public static boolean isWeCarBaseProcess(Context context) {
        String processName = getProcessName(context);
        String str = context.getPackageName() + WECARBASE_PROCESS_NAME;
        LogUtils.d(TAG, "isWeCarBaseProcess, curtProcess = " + processName + ", wecarBase process should be = " + str);
        return str.equals(processName);
    }

    public static boolean shouldProcessInitTAI(Context context) {
        String processName = getProcessName(context);
        String str = context.getPackageName() + ":crowdsourcing";
        String str2 = context.getPackageName() + ":upgrade";
        LogUtils.d(TAG, "shouldInitTAI, curtProcess = " + processName);
        return (str.equals(processName) || str2.equals(processName)) ? false : true;
    }

    public static boolean isProcessRunning(Context context, String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (it.hasNext()) {
            if (it.next().processName.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isTASRom(Context context) {
        boolean isAPPInstalled = isAPPInstalled(context, "com.tencent.wecarcoreservice");
        LogUtils.d(TAG, "isTASRom = " + isAPPInstalled);
        return isAPPInstalled;
    }
}
