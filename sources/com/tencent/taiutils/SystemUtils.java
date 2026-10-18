package com.tencent.taiutils;

import a.a.a.a.a;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.support.v4.content.ContextCompat;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemUtils {
    public static final int DEFAULT_THREAD_POOL_SIZE = getDefaultThreadPoolSize(8);
    public static final String WEXIN_PACKAGE_NAME = "com.tencent.mm";

    public SystemUtils() {
        throw new AssertionError();
    }

    @TargetApi(16)
    public static void checkCpuAndMem(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        FileUtils.formateFileSize(context, memoryInfo.totalMem);
        FileUtils.formateFileSize(context, memoryInfo.availMem);
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null || runningAppProcesses.size() == 0) {
            return;
        }
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(0);
        String str = runningAppProcessInfo.processName;
        String packageName = context.getPackageName();
        if (!str.equals(packageName)) {
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ActivityManager.RunningAppProcessInfo next = it.next();
                if (next.processName.equals(packageName)) {
                    String str2 = next.processName;
                    runningAppProcessInfo = next;
                    break;
                }
            }
        }
        if (runningAppProcessInfo.importance != 200) {
        }
        int i = activityManager.getProcessMemoryInfo(new int[]{runningAppProcessInfo.pid})[0].dalvikPrivateDirty;
    }

    public static String checkEditText(EditText editText) {
        return (editText == null || editText.getText() == null || editText.getText().toString().trim().equals("")) ? "" : editText.getText().toString().trim();
    }

    public static void dial(Activity activity, String str) {
        try {
            activity.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(str)));
        } catch (Exception unused) {
        }
    }

    public static void dimBackground(Activity activity, float f) {
        activity.getWindow().getAttributes().dimAmount = f;
        activity.getWindow().addFlags(2);
    }

    public static long getAppCpuTime() {
        String[] strArr;
        try {
            int myPid = Process.myPid();
            StringBuilder sb = new StringBuilder();
            sb.append("/proc/");
            sb.append(myPid);
            sb.append("/stat");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(sb.toString())), 1000);
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            strArr = readLine.split(" ");
        } catch (IOException e) {
            e.printStackTrace();
            strArr = null;
        }
        return Long.parseLong(strArr[16]) + Long.parseLong(strArr[15]) + Long.parseLong(strArr[14]) + Long.parseLong(strArr[13]);
    }

    public static File getAppFilesDir(Context context) {
        return context.getExternalFilesDir(null);
    }

    public static String getAppFilesPath(Context context) {
        return context.getExternalFilesDir(null).getAbsolutePath();
    }

    public static String getAppMetaData(Context context, String str) {
        ApplicationInfo applicationInfo;
        if (context == null || StringUtils.isEmpty(str)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData.getString(str);
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static int getColor(Context context, int i) {
        return ContextCompat.getColor(context, i);
    }

    public static int getDefaultThreadPoolSize() {
        return getDefaultThreadPoolSize(8);
    }

    public static int getDefaultThreadPoolSize(int i) {
        int availableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
        return availableProcessors > i ? i : availableProcessors;
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    public static String getDeviceId(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String getDeviceInfo() {
        return Build.BRAND + " " + Build.MODEL;
    }

    public static String getDeviceType() {
        return Build.MODEL;
    }

    public static String getInstallPath(Context context) {
        return context.getPackageResourcePath();
    }

    public static PackageInfo getPackageInfo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static float getProcessCpuRate() {
        float totalCpuTime = (float) getTotalCpuTime();
        float appCpuTime = (float) getAppCpuTime();
        try {
            Thread.sleep(360L);
        } catch (Exception unused) {
        }
        float totalCpuTime2 = (float) getTotalCpuTime();
        return ((((float) getAppCpuTime()) - appCpuTime) * 100.0f) / (totalCpuTime2 - totalCpuTime);
    }

    public static String getSdkVersion() {
        return Build.VERSION.SDK;
    }

    public static List<ResolveInfo> getShareApps(Context context) {
        Intent intent = new Intent("android.intent.action.SEND", (Uri) null);
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setType("image/jpeg");
        return context.getPackageManager().queryIntentActivities(intent, 0);
    }

    public static String getSystemInfo(Context context) {
        StringBuilder a2 = a.a("Android deviceid = ");
        a2.append(Settings.Secure.getString(context.getContentResolver(), "android_id"));
        a2.append(" type = ");
        a2.append(Build.MODEL);
        a2.append(" version = ");
        a2.append(Build.VERSION.RELEASE);
        return a2.toString();
    }

    public static String getSystemJsonInfo(Context context) {
        StringBuilder a2 = a.a("{\"request\":{\"deviceId\":\"");
        a2.append(Settings.Secure.getString(context.getContentResolver(), "android_id"));
        a2.append("\",\"osVer\":\"");
        a2.append(Build.VERSION.SDK);
        a2.append("\",\"appVer\":\"");
        a2.append(getVerName(context));
        a2.append("\"}}");
        return a2.toString();
    }

    public static String getSystemLang(Context context) {
        return context.getResources().getConfiguration().locale.getLanguage();
    }

    public static String getSystemVersion() {
        return Build.VERSION.RELEASE;
    }

    public static long getTotalCpuTime() {
        String[] strArr;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")), 1000);
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            strArr = readLine.split(" ");
        } catch (IOException e) {
            e.printStackTrace();
            strArr = null;
        }
        return Long.parseLong(strArr[8]) + Long.parseLong(strArr[7]) + Long.parseLong(strArr[5]) + Long.parseLong(strArr[6]) + Long.parseLong(strArr[4]) + Long.parseLong(strArr[3]) + Long.parseLong(strArr[2]);
    }

    public static String getUmengChannel(Context context) {
        return getAppMetaData(context, "UMENG_CHANNEL");
    }

    public static int getVerCode(Context context) {
        PackageInfo packageInfo = getPackageInfo(context);
        if (packageInfo != null) {
            return packageInfo.versionCode;
        }
        return 100;
    }

    public static String getVerName(Context context) {
        PackageInfo packageInfo = getPackageInfo(context);
        return packageInfo != null ? packageInfo.versionName : "1.0";
    }

    public static void hideInputMethod(Context context, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 2);
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static boolean isApkInstalled(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean isApkInstalledWeXin(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(WEXIN_PACKAGE_NAME, 0) != null;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean isInputMethodShow(Activity activity, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        return inputMethodManager != null && inputMethodManager.isActive(view);
    }

    public static boolean isZh(Context context) {
        return context.getResources().getConfiguration().locale.getLanguage().equals("zh");
    }

    public static void lockEditText(EditText editText) {
        editText.setFocusable(false);
        editText.setFocusableInTouchMode(false);
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.tencent.taiutils.SystemUtils.1
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return charSequence.length() < 1 ? spanned.subSequence(i3, i4) : "";
            }
        }});
    }

    public static void openUrl(Activity activity, String str) {
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception unused) {
        }
    }

    public static void sendMail(Context context, String str, String str2, String str3) {
        Uri parse = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(parse);
        intent.putExtra("android.intent.extra.SUBJECT", str2);
        intent.putExtra("android.intent.extra.TEXT", str3);
        context.startActivity(intent);
    }

    public static void sendSms(Context context, String str, String str2) {
        SmsManager.getDefault().sendTextMessage(str, null, str2, PendingIntent.getBroadcast(context, 1, new Intent(), HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY), null);
    }

    public static void setBackgroundAlpha(Activity activity, float f) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = f;
        window.setAttributes(attributes);
    }

    public static void setInputAdjustPan(Activity activity) {
        activity.getWindow().setSoftInputMode(34);
    }

    public static void setInputAdjustResize(Activity activity) {
        activity.getWindow().setSoftInputMode(18);
    }

    public static void showInputMethod(Context context, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput(view, 0);
        }
    }

    public static void showInputMethodForced(Context context, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.toggleSoftInputFromWindow(view.getWindowToken(), 2, 2);
        }
    }

    public static void switchLanguage(Context context, String str) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        configuration.locale = str.equals("cn") ? Locale.SIMPLIFIED_CHINESE : Locale.ENGLISH;
        resources.updateConfiguration(configuration, displayMetrics);
    }

    public static void systemShare(Activity activity, Uri uri, String str, String str2) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        if (uri == null) {
            intent.setType("text/plain");
        } else {
            intent.setType("image/jpeg");
            intent.putExtra("android.intent.extra.STREAM", uri);
        }
        intent.putExtra("android.intent.extra.SUBJECT", FeedBackConstants.PROP_BUG_TITLE);
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        activity.startActivity(Intent.createChooser(intent, str2));
    }

    public static void systemShare(Context context, ResolveInfo resolveInfo, Uri uri, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
        if (uri == null) {
            intent.setType("text/plain");
        } else {
            intent.setType("image/jpeg");
            intent.putExtra("android.intent.extra.STREAM", uri);
        }
        intent.putExtra("android.intent.extra.SUBJECT", FeedBackConstants.PROP_BUG_TITLE);
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        context.startActivity(intent);
    }

    public static void unLockEditText(EditText editText) {
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.tencent.taiutils.SystemUtils.2
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                return null;
            }
        }});
    }

    public String getImei(Context context) {
        String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        return subscriberId != null ? URLEncoder.encode(subscriberId) : "";
    }
}
