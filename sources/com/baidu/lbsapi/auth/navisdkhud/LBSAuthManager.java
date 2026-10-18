package com.baidu.lbsapi.auth.navisdkhud;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import com.tencent.wecarbase.config.SDKConfig;
import com.yftech.transfer.service.CarAppList;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class LBSAuthManager {
    public static final int CODE_AUTHENTICATE_SUCC = 0;
    public static final int CODE_AUTHENTICATING = 602;
    public static final int CODE_UNAUTHENTICATE = 601;
    public static final String VERSION = "1.0.6.42126";

    /* renamed from: a, reason: collision with root package name */
    private static Context f27a;
    private static l d;
    private static int e;
    private static Hashtable f = new Hashtable();
    private static LBSAuthManager g;
    private c b = null;
    private e c = null;
    private final Handler h = new h(this, Looper.getMainLooper());

    private LBSAuthManager(Context context) {
        f27a = context;
        if (d != null && !d.isAlive()) {
            d = null;
        }
        d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005b, code lost:
    
        if (r11.format(java.lang.Long.valueOf(r4)).equals(r11.format(java.lang.Long.valueOf(r2))) == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int a(String str) {
        int i = -1;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has(NotificationCompat.CATEGORY_STATUS)) {
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, -1);
            }
            int i2 = jSONObject.getInt(NotificationCompat.CATEGORY_STATUS);
            try {
                if (jSONObject.has("current") && i2 == 0) {
                    long j = jSONObject.getLong("current");
                    long currentTimeMillis = System.currentTimeMillis();
                    if ((currentTimeMillis - j) / 3600000.0d < 24.0d) {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                    }
                    i = 601;
                    if (!jSONObject.has("current") && i == 602) {
                        if ((System.currentTimeMillis() - jSONObject.getLong("current")) / 1000 > 180.0d) {
                            return 601;
                        }
                        return i;
                    }
                }
                i = i2;
                return !jSONObject.has("current") ? i : i;
            } catch (JSONException e2) {
                e = e2;
                i = i2;
                e.printStackTrace();
                return i;
            }
        } catch (JSONException e3) {
            e = e3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.io.Reader, java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.io.InputStreamReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String a(int i) throws IOException {
        InputStreamReader inputStreamReader;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        ?? r0;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            fileInputStream2 = new FileInputStream(new File("/proc/" + i + "/cmdline"));
            try {
                r0 = new InputStreamReader(fileInputStream2);
                try {
                    bufferedReader = new BufferedReader(r0);
                } catch (FileNotFoundException unused) {
                    bufferedReader = null;
                } catch (IOException unused2) {
                    bufferedReader = null;
                } catch (Throwable th) {
                    fileInputStream = fileInputStream2;
                    th = th;
                    inputStreamReader = r0;
                }
            } catch (FileNotFoundException unused3) {
                r0 = 0;
                bufferedReader = r0;
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                if (r0 != 0) {
                    r0.close();
                }
                if (fileInputStream2 == null) {
                    return null;
                }
                fileInputStream2.close();
                return null;
            } catch (IOException unused4) {
                r0 = 0;
                bufferedReader = r0;
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                if (r0 != 0) {
                    r0.close();
                }
                if (fileInputStream2 == null) {
                    return null;
                }
                fileInputStream2.close();
                return null;
            } catch (Throwable th2) {
                fileInputStream = fileInputStream2;
                th = th2;
                inputStreamReader = null;
            }
        } catch (FileNotFoundException unused5) {
            fileInputStream2 = null;
            r0 = 0;
        } catch (IOException unused6) {
            fileInputStream2 = null;
            r0 = 0;
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
            fileInputStream = null;
        }
        try {
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            r0.close();
            fileInputStream2.close();
            return readLine;
        } catch (FileNotFoundException unused7) {
            if (bufferedReader != null) {
            }
            if (r0 != 0) {
            }
            if (fileInputStream2 == null) {
            }
            fileInputStream2.close();
            return null;
        } catch (IOException unused8) {
            if (bufferedReader != null) {
            }
            if (r0 != 0) {
            }
            if (fileInputStream2 == null) {
            }
            fileInputStream2.close();
            return null;
        } catch (Throwable th4) {
            th = th4;
            bufferedReader2 = bufferedReader;
            fileInputStream = fileInputStream2;
            inputStreamReader = r0;
            if (bufferedReader2 != null) {
                bufferedReader2.close();
            }
            if (inputStreamReader != null) {
                inputStreamReader.close();
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw th;
        }
    }

    private String a(Context context) {
        String str;
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        try {
            str = a(myPid);
        } catch (IOException unused) {
            str = null;
        }
        return str != null ? str : f27a.getPackageName();
    }

    private String a(Context context, String str) {
        String str2 = "";
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                LBSAuthManagerListener lBSAuthManagerListener = (LBSAuthManagerListener) f.get(str);
                if (lBSAuthManagerListener != null) {
                    lBSAuthManagerListener.onAuthResult(-1, ErrorMessage.a("AndroidManifest.xml的application中没有meta-data标签"));
                }
            } else {
                String string = applicationInfo.metaData.getString("com.baidu.lbsapi.API_KEY");
                if (string != null) {
                    try {
                        if (string.equals("")) {
                        }
                        str2 = string;
                    } catch (PackageManager.NameNotFoundException unused) {
                        str2 = string;
                        LBSAuthManagerListener lBSAuthManagerListener2 = (LBSAuthManagerListener) f.get(str);
                        if (lBSAuthManagerListener2 != null) {
                            lBSAuthManagerListener2.onAuthResult(-1, ErrorMessage.a("无法在AndroidManifest.xml中获取com.baidu.android.lbs.API_KEY的值"));
                        }
                        return str2;
                    }
                }
                LBSAuthManagerListener lBSAuthManagerListener3 = (LBSAuthManagerListener) f.get(str);
                if (lBSAuthManagerListener3 != null) {
                    lBSAuthManagerListener3.onAuthResult(-1, ErrorMessage.a("无法在AndroidManifest.xml中获取com.baidu.android.lbs.API_KEY的值"));
                }
                str2 = string;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009d A[Catch: all -> 0x0008, TryCatch #0 {all -> 0x0008, blocks: (B:40:0x0003, B:3:0x000b, B:6:0x0012, B:8:0x001f, B:9:0x0024, B:11:0x002c, B:12:0x0035, B:14:0x0044, B:15:0x0049, B:17:0x004f, B:18:0x008e, B:20:0x009d, B:21:0x00b3, B:23:0x00b7, B:25:0x00c0, B:36:0x0070), top: B:39:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b7 A[Catch: all -> 0x0008, TryCatch #0 {all -> 0x0008, blocks: (B:40:0x0003, B:3:0x000b, B:6:0x0012, B:8:0x001f, B:9:0x0024, B:11:0x002c, B:12:0x0035, B:14:0x0044, B:15:0x0049, B:17:0x004f, B:18:0x008e, B:20:0x009d, B:21:0x00b3, B:23:0x00b7, B:25:0x00c0, B:36:0x0070), top: B:39:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void a(String str, String str2) {
        if (str == null) {
            try {
                str = e();
            } catch (Throwable th) {
                throw th;
            }
        }
        Message obtainMessage = this.h.obtainMessage();
        int i = -1;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has(NotificationCompat.CATEGORY_STATUS)) {
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, -1);
            }
            if (!jSONObject.has("current")) {
                jSONObject.put("current", System.currentTimeMillis());
            }
            c(jSONObject.toString());
            if (jSONObject.has("current")) {
                jSONObject.remove("current");
            }
            int i2 = jSONObject.getInt(NotificationCompat.CATEGORY_STATUS);
            try {
                obtainMessage.what = i2;
                obtainMessage.obj = jSONObject.toString();
                Bundle bundle = new Bundle();
                bundle.putString("listenerKey", str2);
                obtainMessage.setData(bundle);
                this.h.sendMessage(obtainMessage);
            } catch (JSONException e2) {
                i = i2;
                e = e2;
                e.printStackTrace();
                obtainMessage.what = i;
                obtainMessage.obj = new JSONObject();
                Bundle bundle2 = new Bundle();
                bundle2.putString("listenerKey", str2);
                obtainMessage.setData(bundle2);
                this.h.sendMessage(obtainMessage);
                d.c();
                e--;
                if (a.f28a) {
                }
                if (e == 0) {
                }
            }
        } catch (JSONException e3) {
            e = e3;
        }
        d.c();
        e--;
        if (a.f28a) {
            a.a("httpRequest called mAuthCounter-- = " + e);
        }
        if (e == 0) {
            d.a();
            if (d != null) {
                d = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, String str, Hashtable hashtable, String str2) {
        String str3;
        String a2 = a(f27a, str2);
        if (a2 == null || a2.equals("")) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", "https://api.map.baidu.com/sdkcs/verify");
        hashMap.put("output", "json");
        hashMap.put("ak", a2);
        hashMap.put("mcode", b.a(f27a));
        hashMap.put("from", "lbs_yunsdk");
        if (hashtable != null && hashtable.size() > 0) {
            for (Map.Entry entry : hashtable.entrySet()) {
                String str4 = (String) entry.getKey();
                String str5 = (String) entry.getValue();
                if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str5)) {
                    hashMap.put(str4, str5);
                }
            }
        }
        String str6 = "";
        try {
            str6 = com.baidu.a.a.a.b.a.a(f27a);
        } catch (Exception unused) {
        }
        a.a("cuid:" + str6);
        if (TextUtils.isEmpty(str6)) {
            hashMap.put("cuid", "");
        } else {
            hashMap.put("cuid", str6);
        }
        hashMap.put("pcn", f27a.getPackageName());
        hashMap.put(DeviceHelper.JSON_FIELD_VERSION, VERSION);
        String str7 = "";
        try {
            str7 = b.c(f27a);
        } catch (Exception unused2) {
        }
        if (TextUtils.isEmpty(str7)) {
            hashMap.put("macaddr", "");
        } else {
            hashMap.put("macaddr", str7);
        }
        String str8 = "";
        try {
            str8 = b.a();
        } catch (Exception unused3) {
        }
        if (TextUtils.isEmpty(str8)) {
            hashMap.put("language", "");
        } else {
            hashMap.put("language", str8);
        }
        if (z) {
            hashMap.put("force", z ? CarAppList.MediaPage.PAGE_AM : CarAppList.MediaPage.PAGE_FM);
        }
        if (str == null) {
            str3 = "from_service";
            str = "";
        } else {
            str3 = "from_service";
        }
        hashMap.put(str3, str);
        this.b = new c(f27a);
        this.b.a(hashMap, new j(this, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, String str, Hashtable hashtable, String[] strArr, String str2) {
        String str3;
        String a2 = a(f27a, str2);
        if (a2 == null || a2.equals("")) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("url", "https://api.map.baidu.com/sdkcs/verify");
        hashMap.put("output", "json");
        hashMap.put("ak", a2);
        hashMap.put("from", "lbs_yunsdk");
        if (hashtable != null && hashtable.size() > 0) {
            for (Map.Entry entry : hashtable.entrySet()) {
                String str4 = (String) entry.getKey();
                String str5 = (String) entry.getValue();
                if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str5)) {
                    hashMap.put(str4, str5);
                }
            }
        }
        String str6 = "";
        try {
            str6 = com.baidu.a.a.a.b.a.a(f27a);
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(str6)) {
            hashMap.put("cuid", "");
        } else {
            hashMap.put("cuid", str6);
        }
        hashMap.put("pcn", f27a.getPackageName());
        hashMap.put(DeviceHelper.JSON_FIELD_VERSION, VERSION);
        String str7 = "";
        try {
            str7 = b.c(f27a);
        } catch (Exception unused2) {
        }
        if (TextUtils.isEmpty(str7)) {
            hashMap.put("macaddr", "");
        } else {
            hashMap.put("macaddr", str7);
        }
        String str8 = "";
        try {
            str8 = b.a();
        } catch (Exception unused3) {
        }
        if (TextUtils.isEmpty(str8)) {
            hashMap.put("language", "");
        } else {
            hashMap.put("language", str8);
        }
        if (z) {
            hashMap.put("force", z ? CarAppList.MediaPage.PAGE_AM : CarAppList.MediaPage.PAGE_FM);
        }
        if (str == null) {
            str3 = "from_service";
            str = "";
        } else {
            str3 = "from_service";
        }
        hashMap.put(str3, str);
        this.c = new e(f27a);
        this.c.a(hashMap, strArr, new k(this, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        String str2;
        JSONObject jSONObject;
        String a2 = a(f27a, str);
        try {
            jSONObject = new JSONObject(e());
        } catch (JSONException e2) {
            e2.printStackTrace();
            str2 = "";
        }
        if (!jSONObject.has("ak")) {
            return true;
        }
        str2 = jSONObject.getString("ak");
        return (a2 == null || str2 == null || a2.equals(str2)) ? false : true;
    }

    private void c(String str) {
        f27a.getSharedPreferences("authStatus_" + a(f27a), 0).edit().putString(NotificationCompat.CATEGORY_STATUS, str).commit();
    }

    private void d() {
        synchronized (LBSAuthManager.class) {
            if (d == null) {
                d = new l(SDKConfig.FROM_AUTH);
                d.start();
                while (d.f38a == null) {
                    try {
                        if (a.f28a) {
                            a.a("wait for create auth thread.");
                        }
                        Thread.sleep(3L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    private String e() {
        return f27a.getSharedPreferences("authStatus_" + a(f27a), 0).getString(NotificationCompat.CATEGORY_STATUS, "{\"status\":601}");
    }

    public static LBSAuthManager getInstance(Context context) {
        if (g == null) {
            synchronized (LBSAuthManager.class) {
                if (g == null) {
                    g = new LBSAuthManager(context);
                }
            }
        } else {
            f27a = context;
        }
        return g;
    }

    public int authenticate(boolean z, String str, Hashtable hashtable, LBSAuthManagerListener lBSAuthManagerListener) {
        synchronized (LBSAuthManager.class) {
            String str2 = System.currentTimeMillis() + "";
            if (lBSAuthManagerListener != null) {
                f.put(str2, lBSAuthManagerListener);
            }
            String a2 = a(f27a, str2);
            if (a2 != null && !a2.equals("")) {
                e++;
                if (a.f28a) {
                    a.a(" mAuthCounter  ++ = " + e);
                }
                String e2 = e();
                if (a.f28a) {
                    a.a("getAuthMessage from cache:" + e2);
                }
                int a3 = a(e2);
                if (a3 == 601) {
                    try {
                        c(new JSONObject().put(NotificationCompat.CATEGORY_STATUS, CODE_AUTHENTICATING).toString());
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
                d();
                if (a.f28a) {
                    a.a("mThreadLooper.mHandler = " + d.f38a);
                }
                if (d != null && d.f38a != null) {
                    d.f38a.post(new i(this, a3, z, str2, str, hashtable));
                    return a3;
                }
                return -1;
            }
            return -1;
        }
    }

    public String getPublicKey(Context context) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("com.baidu.lbsapi.API_KEY");
    }
}
