package com.baidu.a.a.a.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.yftech.transfer.service.CarAppList;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import javax.crypto.Cipher;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {
    private static b d;

    /* renamed from: a, reason: collision with root package name */
    private final Context f23a;
    private int b = 0;
    private PublicKey c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public ApplicationInfo f24a;
        public int b;
        public boolean c;
        public boolean d;

        private a() {
            this.b = 0;
            this.c = false;
            this.d = false;
        }

        /* synthetic */ a(d dVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public String f25a;
        public String b;
        public int c;

        private b() {
            this.c = 2;
        }

        /* synthetic */ b(d dVar) {
            this();
        }

        public static b a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("deviceid");
                String string2 = jSONObject.getString("imei");
                int i = jSONObject.getInt(FeedBackConstants.CALLBACK_PARAM_VER);
                if (!TextUtils.isEmpty(string) && string2 != null) {
                    b bVar = new b();
                    bVar.f25a = string;
                    bVar.b = string2;
                    bVar.c = i;
                    return bVar;
                }
            } catch (JSONException e) {
                c.b(e);
            }
            return null;
        }

        public String a() {
            try {
                return new JSONObject().put("deviceid", this.f25a).put("imei", this.b).put(FeedBackConstants.CALLBACK_PARAM_VER, this.c).toString();
            } catch (JSONException e) {
                c.b(e);
                return null;
            }
        }

        public String b() {
            String str = this.b;
            if (TextUtils.isEmpty(str)) {
                str = CarAppList.MediaPage.PAGE_FM;
            }
            return this.f25a + "|" + new StringBuffer(str).reverse().toString();
        }
    }

    private c(Context context) {
        this.f23a = context.getApplicationContext();
        a();
    }

    public static String a(Context context) {
        return c(context).b();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x003f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String a(File file) {
        FileReader fileReader;
        try {
            fileReader = new FileReader(file);
            try {
                try {
                    char[] cArr = new char[8192];
                    CharArrayWriter charArrayWriter = new CharArrayWriter();
                    while (true) {
                        int read = fileReader.read(cArr);
                        if (read <= 0) {
                            break;
                        }
                        charArrayWriter.write(cArr, 0, read);
                    }
                    String charArrayWriter2 = charArrayWriter.toString();
                    try {
                        fileReader.close();
                    } catch (Exception e) {
                        b(e);
                    }
                    return charArrayWriter2;
                } catch (Exception e2) {
                    e = e2;
                    b(e);
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception e3) {
                            b(e3);
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (Exception e4) {
                        b(e4);
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            fileReader = null;
        } catch (Throwable th2) {
            th = th2;
            fileReader = null;
            if (fileReader != null) {
            }
            throw th;
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb;
        if (bArr == null) {
            throw new IllegalArgumentException("Argument b ( byte array ) is null! ");
        }
        String str = "";
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                sb = new StringBuilder();
                sb.append(str);
                str = CarAppList.MediaPage.PAGE_FM;
            } else {
                sb = new StringBuilder();
            }
            sb.append(str);
            sb.append(hexString);
            str = sb.toString();
        }
        return str.toLowerCase();
    }

    private List a(Intent intent, boolean z) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = this.f23a.getPackageManager();
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers != null) {
            for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
                if (resolveInfo.activityInfo != null && resolveInfo.activityInfo.applicationInfo != null) {
                    try {
                        Bundle bundle = packageManager.getReceiverInfo(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), 128).metaData;
                        if (bundle != null) {
                            String string = bundle.getString("galaxy_data");
                            if (!TextUtils.isEmpty(string)) {
                                byte[] a2 = com.baidu.a.a.a.a.b.a(string.getBytes("utf-8"));
                                JSONObject jSONObject = new JSONObject(new String(a2));
                                a aVar = new a(null);
                                aVar.b = jSONObject.getInt("priority");
                                aVar.f24a = resolveInfo.activityInfo.applicationInfo;
                                if (this.f23a.getPackageName().equals(resolveInfo.activityInfo.applicationInfo.packageName)) {
                                    aVar.d = true;
                                }
                                if (z) {
                                    String string2 = bundle.getString("galaxy_sf");
                                    if (!TextUtils.isEmpty(string2)) {
                                        PackageInfo packageInfo = packageManager.getPackageInfo(resolveInfo.activityInfo.applicationInfo.packageName, 64);
                                        JSONArray jSONArray = jSONObject.getJSONArray("sigs");
                                        String[] strArr = new String[jSONArray.length()];
                                        for (int i = 0; i < strArr.length; i++) {
                                            strArr[i] = jSONArray.getString(i);
                                        }
                                        if (a(strArr, a(packageInfo.signatures))) {
                                            byte[] a3 = a(com.baidu.a.a.a.a.b.a(string2.getBytes()), this.c);
                                            if (a3 != null && Arrays.equals(a3, com.baidu.a.a.a.a.d.a(a2))) {
                                                aVar.c = true;
                                            }
                                        }
                                    }
                                }
                                arrayList.add(aVar);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        Collections.sort(arrayList, new d(this));
        return arrayList;
    }

    private void a() {
        ByteArrayInputStream byteArrayInputStream;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(com.baidu.a.a.a.b.b.a());
            } catch (Exception e) {
                b(e);
                return;
            }
        } catch (Exception unused) {
            byteArrayInputStream = null;
        } catch (Throwable th) {
            th = th;
            byteArrayInputStream = null;
        }
        try {
            this.c = CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream).getPublicKey();
            byteArrayInputStream.close();
        } catch (Exception unused2) {
            if (byteArrayInputStream != null) {
                byteArrayInputStream.close();
            }
        } catch (Throwable th2) {
            th = th2;
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (Exception e2) {
                    b(e2);
                }
            }
            throw th;
        }
    }

    private boolean a(String str) {
        FileOutputStream openFileOutput;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                openFileOutput = this.f23a.openFileOutput("libcuid.so", 1);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            openFileOutput.write(str.getBytes());
            openFileOutput.flush();
            if (openFileOutput != null) {
                try {
                    openFileOutput.close();
                } catch (Exception e2) {
                    b(e2);
                }
            }
            return true;
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = openFileOutput;
            b(e);
            if (fileOutputStream == null) {
                return false;
            }
            try {
                fileOutputStream.close();
                return false;
            } catch (Exception e4) {
                b(e4);
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = openFileOutput;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception e5) {
                    b(e5);
                }
            }
            throw th;
        }
    }

    private boolean a(String str, String str2) {
        try {
            return Settings.System.putString(this.f23a.getContentResolver(), str, str2);
        } catch (Exception e) {
            b(e);
            return false;
        }
    }

    private boolean a(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length) {
            return false;
        }
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            hashSet.add(str);
        }
        HashSet hashSet2 = new HashSet();
        for (String str2 : strArr2) {
            hashSet2.add(str2);
        }
        return hashSet.equals(hashSet2);
    }

    private static byte[] a(byte[] bArr, PublicKey publicKey) throws Exception {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(2, publicKey);
        return cipher.doFinal(bArr);
    }

    private String[] a(Signature[] signatureArr) {
        String[] strArr = new String[signatureArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = a(com.baidu.a.a.a.a.d.a(signatureArr[i].toByteArray()));
        }
        return strArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x01ca, code lost:
    
        if (android.text.TextUtils.isEmpty(b("com.baidu.deviceid.v2")) != false) goto L71;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.baidu.a.a.a.b.d] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private b b() {
        boolean z;
        String str;
        List a2 = a(new Intent("com.baidu.intent.action.GALAXY").setPackage(this.f23a.getPackageName()), true);
        boolean z2 = false;
        if (a2 == null || a2.size() == 0) {
            for (int i = 0; i < 3; i++) {
                Log.w("DeviceId", "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy");
            }
            z = false;
        } else {
            a aVar = (a) a2.get(0);
            z = aVar.c;
            if (!aVar.c) {
                for (int i2 = 0; i2 < 3; i2++) {
                    Log.w("DeviceId", "galaxy config err, In the release version of the signature should be matched");
                }
            }
        }
        File file = new File(this.f23a.getFilesDir(), "libcuid.so");
        String str2 = null;
        b a3 = file.exists() ? b.a(f(a(file))) : null;
        if (a3 == null) {
            this.b |= 16;
            List<a> a4 = a(new Intent("com.baidu.intent.action.GALAXY"), z);
            if (a4 != null) {
                String str3 = "files";
                File filesDir = this.f23a.getFilesDir();
                if (!"files".equals(filesDir.getName())) {
                    Log.e("DeviceId", "fetal error:: app files dir name is unexpectedly :: " + filesDir.getAbsolutePath());
                    str3 = filesDir.getName();
                }
                for (a aVar2 : a4) {
                    if (!aVar2.d) {
                        File file2 = new File(new File(aVar2.f24a.dataDir, str3), "libcuid.so");
                        if (file2.exists() && (a3 = b.a(f(a(file2)))) != null) {
                            break;
                        }
                    }
                }
            }
        }
        if (a3 == null) {
            a3 = b.a(f(b("com.baidu.deviceid.v2")));
        }
        boolean c = c("android.permission.READ_EXTERNAL_STORAGE");
        if (a3 == null && c) {
            this.b |= 2;
            a3 = e();
        }
        if (a3 == null) {
            this.b |= 8;
            a3 = d();
        }
        if (a3 == null && c) {
            this.b |= 1;
            String h = h("");
            z2 = true;
            str = h;
            a3 = d(h);
        } else {
            str = null;
        }
        if (a3 == null) {
            this.b |= 4;
            if (!z2) {
                str = h("");
            }
            a3 = new b(r5);
            String b2 = b(this.f23a);
            a3.f25a = com.baidu.a.a.a.a.c.a((Build.VERSION.SDK_INT < 23 ? str + b2 + UUID.randomUUID().toString() : "com.baidu" + b2).getBytes(), true);
            a3.b = str;
        }
        File file3 = new File(this.f23a.getFilesDir(), "libcuid.so");
        if ((this.b & 16) != 0 || !file3.exists()) {
            r5 = TextUtils.isEmpty(null) ? e(a3.a()) : 0;
            a(r5);
            str2 = r5;
        }
        boolean c2 = c();
        String str4 = str2;
        if (c2) {
            if ((this.b & 2) == 0) {
                str4 = str2;
            }
            boolean isEmpty = TextUtils.isEmpty(str2);
            String str5 = str2;
            if (isEmpty) {
                str5 = e(a3.a());
            }
            a("com.baidu.deviceid.v2", str5);
            str4 = str5;
        }
        if (c("android.permission.WRITE_EXTERNAL_STORAGE")) {
            File file4 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
            if ((this.b & 8) != 0 || !file4.exists()) {
                boolean isEmpty2 = TextUtils.isEmpty(str4);
                String str6 = str4;
                if (isEmpty2) {
                    str6 = e(a3.a());
                }
                g(str6);
            }
        }
        if (c2 && ((1 & this.b) != 0 || TextUtils.isEmpty(b("com.baidu.deviceid")))) {
            a("com.baidu.deviceid", a3.f25a);
            a("bd_setting_i", a3.b);
        }
        if (c2 && !TextUtils.isEmpty(a3.b)) {
            File file5 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid");
            if ((this.b & 2) != 0 || !file5.exists()) {
                b(a3.b, a3.f25a);
            }
        }
        return a3;
    }

    public static String b(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return TextUtils.isEmpty(string) ? "" : string;
    }

    private String b(String str) {
        try {
            return Settings.System.getString(this.f23a.getContentResolver(), str);
        } catch (Exception e) {
            b(e);
            return null;
        }
    }

    private static void b(String str, String str2) {
        File file;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        File file2 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
        File file3 = new File(file2, ".cuid");
        try {
            if (file2.exists() && !file2.isDirectory()) {
                Random random = new Random();
                File parentFile = file2.getParentFile();
                String name = file2.getName();
                do {
                    file = new File(parentFile, name + random.nextInt() + ".tmp");
                } while (file.exists());
                file2.renameTo(file);
                file.delete();
            }
            file2.mkdirs();
            FileWriter fileWriter = new FileWriter(file3, false);
            fileWriter.write(com.baidu.a.a.a.a.b.a(com.baidu.a.a.a.a.a.a("30212102dicudiab", "30212102dicudiab", (str + "=" + str2).getBytes()), "utf-8"));
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException | Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Throwable th) {
    }

    private static b c(Context context) {
        if (d == null) {
            synchronized (b.class) {
                if (d == null) {
                    SystemClock.uptimeMillis();
                    d = new c(context).b();
                    SystemClock.uptimeMillis();
                }
            }
        }
        return d;
    }

    private boolean c() {
        return c("android.permission.WRITE_SETTINGS");
    }

    private boolean c(String str) {
        return this.f23a.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    private b d() {
        String b2 = b("com.baidu.deviceid");
        String b3 = b("bd_setting_i");
        if (TextUtils.isEmpty(b3)) {
            b3 = h("");
            if (!TextUtils.isEmpty(b3)) {
                a("bd_setting_i", b3);
            }
        }
        if (TextUtils.isEmpty(b2)) {
            b2 = b(com.baidu.a.a.a.a.c.a(("com.baidu" + b3 + b(this.f23a)).getBytes(), true));
        }
        d dVar = null;
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        b bVar = new b(dVar);
        bVar.f25a = b2;
        bVar.b = b3;
        return bVar;
    }

    private b d(String str) {
        boolean z;
        String str2;
        boolean z2 = Build.VERSION.SDK_INT < 23;
        d dVar = null;
        if (z2 && TextUtils.isEmpty(str)) {
            return null;
        }
        String str3 = "";
        File file = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
        if (file.exists()) {
            z = false;
        } else {
            file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid");
            z = true;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append("\r\n");
            }
            bufferedReader.close();
            String[] split = new String(com.baidu.a.a.a.a.a.b("30212102dicudiab", "30212102dicudiab", com.baidu.a.a.a.a.b.a(sb.toString().getBytes()))).split("=");
            if (split != null && split.length == 2) {
                if (z2 && str.equals(split[0])) {
                    str2 = split[1];
                } else if (!z2) {
                    if (TextUtils.isEmpty(str)) {
                        str = split[1];
                    }
                    str2 = split[1];
                }
                str3 = str2;
            }
            if (!z) {
                b(str, str3);
            }
        } catch (FileNotFoundException | IOException | Exception unused) {
        }
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        b bVar = new b(dVar);
        bVar.f25a = str3;
        bVar.b = str;
        return bVar;
    }

    private b e() {
        File file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
        if (!file.exists()) {
            return null;
        }
        String a2 = a(file);
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        try {
            return b.a(new String(com.baidu.a.a.a.a.a.b("30212102dicudiab", "30212102dicudiab", com.baidu.a.a.a.a.b.a(a2.getBytes()))));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return com.baidu.a.a.a.a.b.a(com.baidu.a.a.a.a.a.a("30212102dicudiab", "30212102dicudiab", str.getBytes()), "utf-8");
        } catch (UnsupportedEncodingException | Exception e) {
            b(e);
            return "";
        }
    }

    private static String f(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new String(com.baidu.a.a.a.a.a.b("30212102dicudiab", "30212102dicudiab", com.baidu.a.a.a.a.b.a(str.getBytes())));
        } catch (Exception e) {
            b(e);
            return "";
        }
    }

    private static void g(String str) {
        File file;
        File file2 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
        File file3 = new File(file2, ".cuid2");
        try {
            if (file2.exists() && !file2.isDirectory()) {
                Random random = new Random();
                File parentFile = file2.getParentFile();
                String name = file2.getName();
                do {
                    file = new File(parentFile, name + random.nextInt() + ".tmp");
                } while (file.exists());
                file2.renameTo(file);
                file.delete();
            }
            file2.mkdirs();
            FileWriter fileWriter = new FileWriter(file3, false);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException | Exception unused) {
        }
    }

    private String h(String str) {
        String str2 = null;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.f23a.getSystemService("phone");
            if (telephonyManager != null) {
                str2 = telephonyManager.getDeviceId();
            }
        } catch (Exception e) {
            Log.e("DeviceId", "Read IMEI failed", e);
        }
        String i = i(str2);
        return TextUtils.isEmpty(i) ? str : i;
    }

    private static String i(String str) {
        return (str == null || !str.contains(":")) ? str : "";
    }
}
