package com.tencent.wecarbase.account;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.common.JNIEncryptIF;
import com.tencent.wecarbase.model.TxAccount;
import com.tencent.wecarbase.model.WeCarAccount;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.StringUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class AccountLocalHelper {
    private static final String BRAND = "brand";
    public static final String CHANNEL_KEY = "channel";
    private static final boolean DEBUG_ENCRYPT = true;
    public static final String DEVICEID_KEY = "deviceId";
    private static final String DEVICE_ID = "device_id";
    private static final String EIN = "ein";
    private static final boolean FEATURE_QQ_ACCOUNT_ENABLED = false;
    private static final String FILE_EXISTS = " exists!";
    private static final String KEY_ANDROIDID = "androidid_key";
    private static final String KEY_CID = "cid_key";
    private static final String KEY_IMEI = "imei_key";
    private static final String KEY_MAC = "mac_key";
    private static final String KEY_OLDWECARID = "oldwecarid_key";
    private static final String KEY_SERVERDEVICEID = "serverdeviceid_key";
    private static final String KEY_SERVERDEVICETYPE = "serverdevicetype_key";
    private static final String KEY_VALUE_SEP = ":";
    private static final String MD5 = "md5";
    private static final String MODEL = "model";
    private static final String PLATE_NUMBER = "plate_number";
    private static final String PRODUCER = "producer";
    private static final String PRODUCT_DATE = "product_date";
    private static final String PURCHASE_DATE = "purchase_date";
    private static final String SESSION_KEY = "session_key";
    private static final String TAG = "AccountLocalHelper";
    private static final String TAI_AUTH_FILE = "wecarbase_sp_tai_auth";
    private static final String TAI_AUTH_STATUES = "tai_auth_result";
    private static final String TYPE = "type";
    private static final String UUID = "uuid";
    private static final String VIN = "vin";
    private static final String WECAR_ACCOUNT_FILE = "wecarbase_sp_wecar_account";
    private static final String WECAR_ID = "wecar_id";
    private static final String WECAR_INFO_FILE = "wecarbase_info";
    private static final String WECAR_KEY = "wecar_key";
    private static final String WECAR_UUID_FILE = "wecarbase_account_uuid";
    private static final String WECHAT_EXPIRED = "wechat_expired";
    private static final String WECHAT_ID = "wechat_id";
    private static final String WECHAT_NAME = "wechat_name";
    private static final String WECHAT_URL = "wechat_url";
    private static final String WECHAT_USER_ID = "wechat_user_id";
    private static SharedPreferences mAuthCache;
    private static SharedPreferences mCache;
    private static String mWecarInfo;
    private static final String PATH = getRootPath() + "/tencent/wecarbase";
    private static final Object sAuthLock = new Object();
    private static final Object sSPLock = new Object();
    private static final Object sWecarInfoLock = new Object();

    static void updateAuthResult(Context context, String str) {
        synchronized (sAuthLock) {
            if (mAuthCache == null) {
                mAuthCache = context.getSharedPreferences(TAI_AUTH_FILE, 0);
            }
            SharedPreferences.Editor edit = mAuthCache.edit();
            edit.putString(TAI_AUTH_STATUES, str);
            edit.apply();
        }
    }

    static String loadAuthResult(Context context) {
        String string;
        synchronized (sAuthLock) {
            if (mAuthCache == null) {
                mAuthCache = context.getSharedPreferences(TAI_AUTH_FILE, 0);
            }
            string = mAuthCache.getString(TAI_AUTH_STATUES, "");
            LogUtils.ff(TAG, "at=" + string);
        }
        return string;
    }

    public static void deleteWeCarAccount(Context context) {
        LogUtils.d(TAG, "deleteWeCarAccount");
        synchronized (sSPLock) {
            if (mCache == null) {
                mCache = context.getSharedPreferences(WECAR_ACCOUNT_FILE, 0);
            }
            mCache.edit().clear().apply();
        }
    }

    public static void updateSessionKey(Context context, String str) {
        LogUtils.d(TAG, "updateSessionKey" + str);
        synchronized (sSPLock) {
            if (mCache == null) {
                mCache = context.getSharedPreferences(WECAR_ACCOUNT_FILE, 0);
            }
            mCache.edit().putString(SESSION_KEY, str).apply();
        }
    }

    static void updateWeCarAccount(Context context, WeCarAccount weCarAccount) {
        LogUtils.d(TAG, "updateWeCarAccount begin: " + weCarAccount);
        synchronized (sSPLock) {
            if (mCache == null) {
                mCache = context.getSharedPreferences(WECAR_ACCOUNT_FILE, 0);
            }
            SharedPreferences.Editor edit = mCache.edit();
            edit.putString(WECAR_ID, weCarAccount.getWeCarId());
            edit.putString(SESSION_KEY, weCarAccount.getSessionKey());
            TxAccount wxAccount = weCarAccount.getWxAccount();
            if (wxAccount != null) {
                edit.putString(WECHAT_ID, wxAccount.getId()).putString(WECHAT_USER_ID, wxAccount.getUserId()).putString(WECHAT_NAME, wxAccount.getNickName()).putString(WECHAT_URL, wxAccount.getAvatarUrl()).putInt(WECHAT_EXPIRED, wxAccount.getTokenExpired());
            } else {
                edit.remove(WECHAT_ID).remove(WECHAT_USER_ID).remove(WECHAT_NAME).remove(WECHAT_URL).remove(WECHAT_EXPIRED);
            }
            edit.apply();
        }
        LogUtils.d(TAG, "updateWeCarAccount end");
    }

    public static WeCarAccount loadWeCarAccount(Context context) {
        synchronized (sSPLock) {
            WeCarAccount weCarAccount = new WeCarAccount();
            if (context == null) {
                return weCarAccount;
            }
            if (mCache == null) {
                mCache = context.getSharedPreferences(WECAR_ACCOUNT_FILE, 0);
            }
            weCarAccount.setWeCarId(mCache.getString(WECAR_ID, ""));
            weCarAccount.setSessionKey(mCache.getString(SESSION_KEY, ""));
            if (mCache.contains(WECHAT_ID)) {
                try {
                    TxAccount txAccount = new TxAccount();
                    txAccount.setId(mCache.getString(WECHAT_ID, ""));
                    txAccount.setUserId(mCache.getString(WECHAT_USER_ID, ""));
                    txAccount.setNickName(mCache.getString(WECHAT_NAME, ""));
                    txAccount.setAvatarUrl(mCache.getString(WECHAT_URL, ""));
                    txAccount.setisTokenExpired(mCache.getInt(WECHAT_EXPIRED, 0));
                    weCarAccount.setWxAccount(txAccount);
                } catch (Exception e) {
                    Log.e(TAG, Log.getStackTraceString(e));
                }
            }
            return weCarAccount;
        }
    }

    static synchronized WeCarAccount loadFromSDCard() {
        synchronized (AccountLocalHelper.class) {
            WeCarAccount weCarAccount = new WeCarAccount();
            String str = PATH + File.separator + WECAR_ACCOUNT_FILE;
            File file = new File(str);
            if (file.getParentFile() != null && !file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                try {
                    if (!file.createNewFile()) {
                        Log.d(TAG, str + FILE_EXISTS);
                    }
                } catch (IOException e) {
                    Log.e(TAG, Log.getStackTraceString(e));
                }
            }
            Map<String, String> parseWeCarAccountFile = parseWeCarAccountFile(str);
            if (parseWeCarAccountFile == null) {
                return weCarAccount;
            }
            String str2 = parseWeCarAccountFile.get(WECAR_ID);
            String str3 = parseWeCarAccountFile.get(MD5);
            if (!TextUtils.isEmpty(str3)) {
                try {
                    if (str3.equals(StringUtils.getMD5(str2))) {
                        weCarAccount.setWeCarId(str2);
                    }
                } catch (Exception e2) {
                    Log.e(TAG, Log.getStackTraceString(e2));
                }
            }
            return weCarAccount;
        }
    }

    static void saveInfoToSDCard(String str) {
        synchronized (sWecarInfoLock) {
            mWecarInfo = str;
            String str2 = PATH + File.separator + WECAR_INFO_FILE;
            File file = new File(str2);
            if (file.getParentFile() != null && !file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                try {
                    if (!file.createNewFile()) {
                        Log.d(TAG, str2 + FILE_EXISTS);
                    }
                } catch (IOException e) {
                    Log.e(TAG, Log.getStackTraceString(e));
                }
            }
            try {
                PrintWriter printWriter = new PrintWriter(new FileWriter(str2));
                printWriter.println(str);
                printWriter.flush();
                printWriter.close();
            } catch (IOException e2) {
                Log.e(TAG, Log.getStackTraceString(e2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.io.FileReader] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.io.FileReader, java.io.Reader] */
    /* JADX WARN: Type inference failed for: r1v31, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.FileReader] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.BufferedReader] */
    static String loadInfoFromSDCard() {
        ?? r2;
        String str;
        synchronized (sWecarInfoLock) {
            ?? file = new File(PATH + File.separator + WECAR_INFO_FILE);
            if (file.getParentFile() != null && !file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            String str2 = null;
            if (!file.exists()) {
                mWecarInfo = null;
                return null;
            }
            ?? isEmpty = TextUtils.isEmpty(mWecarInfo);
            try {
                if (isEmpty == 0) {
                    return mWecarInfo;
                }
                try {
                    isEmpty = new FileReader((File) file);
                    try {
                        r2 = new BufferedReader(isEmpty);
                        try {
                            String readLine = r2.readLine();
                            try {
                                isEmpty.close();
                            } catch (IOException e) {
                                Log.e(TAG, Log.getStackTraceString(e));
                            }
                            try {
                                r2.close();
                                str = r2;
                            } catch (IOException e2) {
                                String str3 = TAG;
                                Log.e(str3, Log.getStackTraceString(e2));
                                str = str3;
                            }
                            boolean isEmpty2 = TextUtils.isEmpty(readLine);
                            boolean z = isEmpty2;
                            if (isEmpty2) {
                                ?? r1 = WECAR_INFO_FILE;
                                deleteFile(WECAR_INFO_FILE);
                                z = r1;
                            }
                            str2 = readLine;
                            isEmpty = z;
                            file = str;
                        } catch (Exception e3) {
                            e = e3;
                            Log.e(TAG, Log.getStackTraceString(e));
                            if (isEmpty != 0) {
                                try {
                                    isEmpty.close();
                                } catch (IOException e4) {
                                    Log.e(TAG, Log.getStackTraceString(e4));
                                }
                            }
                            if (r2 != 0) {
                                try {
                                    r2.close();
                                } catch (IOException e5) {
                                    r2 = TAG;
                                    Log.e(r2, Log.getStackTraceString(e5));
                                }
                            }
                            isEmpty = TextUtils.isEmpty(null);
                            file = r2;
                            mWecarInfo = str2;
                            return str2;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        r2 = 0;
                    } catch (Throwable th) {
                        th = th;
                        file = 0;
                        if (isEmpty != 0) {
                            try {
                                isEmpty.close();
                            } catch (IOException e7) {
                                Log.e(TAG, Log.getStackTraceString(e7));
                            }
                        }
                        if (file != 0) {
                            try {
                                file.close();
                            } catch (IOException e8) {
                                Log.e(TAG, Log.getStackTraceString(e8));
                            }
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            throw th;
                        }
                        deleteFile(WECAR_INFO_FILE);
                        throw th;
                    }
                } catch (Exception e9) {
                    e = e9;
                    isEmpty = 0;
                    r2 = 0;
                } catch (Throwable th2) {
                    th = th2;
                    isEmpty = 0;
                    file = 0;
                }
                mWecarInfo = str2;
                return str2;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public static String getInfoFromSDCard(String str) {
        String loadInfoFromSDCard = loadInfoFromSDCard();
        if (TextUtils.isEmpty(loadInfoFromSDCard)) {
            return null;
        }
        LogUtils.ff(TAG, "if=" + loadInfoFromSDCard);
        String decode = JNIEncryptIF.decode(loadInfoFromSDCard);
        try {
            JSONObject jSONObject = new JSONObject(decode);
            if (jSONObject.has(str)) {
                return String.valueOf(jSONObject.get(str));
            }
        } catch (JSONException unused) {
            LogUtils.e(TAG, "getInfoFromSDCard sdcard json error:" + decode);
            deleteFile(WECAR_INFO_FILE);
        }
        return null;
    }

    static synchronized void saveToSDCard(String str) {
        synchronized (AccountLocalHelper.class) {
            String str2 = null;
            try {
                str2 = StringUtils.getMD5(str);
            } catch (NoSuchAlgorithmException e) {
                Log.e(TAG, Log.getStackTraceString(e));
            }
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                String str3 = PATH + File.separator + WECAR_ACCOUNT_FILE;
                File file = new File(str3);
                if (file.getParentFile() != null && !file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (!file.exists()) {
                    try {
                        if (!file.createNewFile()) {
                            Log.d(TAG, str3 + FILE_EXISTS);
                        }
                    } catch (IOException e2) {
                        Log.e(TAG, Log.getStackTraceString(e2));
                    }
                }
                try {
                    PrintWriter printWriter = new PrintWriter(new FileWriter(str3));
                    printWriter.println("md5:" + str2);
                    printWriter.println("wecar_id:" + str);
                    printWriter.flush();
                    printWriter.close();
                } catch (IOException e3) {
                    Log.e(TAG, Log.getStackTraceString(e3));
                }
            }
        }
    }

    static synchronized String getUUIDFromSDCard() {
        synchronized (AccountLocalHelper.class) {
            String str = PATH + File.separator + WECAR_UUID_FILE;
            File file = new File(str);
            if (file.getParentFile() != null && !file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                try {
                    if (!file.createNewFile()) {
                        Log.d(TAG, str + FILE_EXISTS);
                    }
                } catch (IOException e) {
                    Log.e(TAG, Log.getStackTraceString(e));
                }
            }
            Map<String, String> parseWeCarAccountFile = parseWeCarAccountFile(str);
            if (parseWeCarAccountFile == null) {
                return null;
            }
            String str2 = parseWeCarAccountFile.get("uuid");
            String str3 = parseWeCarAccountFile.get(MD5);
            if (!TextUtils.isEmpty(str3)) {
                try {
                    if (str3.equals(StringUtils.getMD5(str2))) {
                        return str2;
                    }
                } catch (Exception e2) {
                    Log.e(TAG, Log.getStackTraceString(e2));
                }
            }
            return null;
        }
    }

    static synchronized void saveUUIDToSDCard(String str) {
        String str2;
        PrintWriter printWriter;
        synchronized (AccountLocalHelper.class) {
            PrintWriter printWriter2 = null;
            try {
                str2 = StringUtils.getMD5(str);
            } catch (NoSuchAlgorithmException e) {
                Log.e(TAG, Log.getStackTraceString(e));
                str2 = null;
            }
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                String str3 = PATH + File.separator + WECAR_UUID_FILE;
                File file = new File(str3);
                if (file.getParentFile() != null && !file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();
                }
                if (!file.exists()) {
                    try {
                        if (!file.createNewFile()) {
                            Log.d(TAG, str3 + FILE_EXISTS);
                        }
                    } catch (IOException e2) {
                        Log.e(TAG, Log.getStackTraceString(e2));
                    }
                }
                try {
                    try {
                        printWriter = new PrintWriter(new FileWriter(str3));
                    } catch (IOException e3) {
                        e = e3;
                    }
                } catch (Throwable th) {
                    th = th;
                    printWriter = printWriter2;
                }
                try {
                    printWriter.println("md5:" + str2);
                    printWriter.println("uuid:" + str);
                    printWriter.flush();
                    printWriter.close();
                } catch (IOException e4) {
                    e = e4;
                    printWriter2 = printWriter;
                    Log.e(TAG, Log.getStackTraceString(e));
                    if (printWriter2 != null) {
                        printWriter2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (printWriter != null) {
                        printWriter.close();
                    }
                    throw th;
                }
            }
        }
    }

    private static void deleteFile(String str) {
        mWecarInfo = null;
        File file = new File(PATH + File.separator + str);
        if (file.getParentFile() != null && !file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        if (!file.exists() || file.delete()) {
            return;
        }
        LogUtils.e(TAG, file.getPath() + " delete  failed");
    }

    static synchronized void deleteWeCarIdFile() {
        synchronized (AccountLocalHelper.class) {
            deleteFile(WECAR_ACCOUNT_FILE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r7v9 */
    private static Map<String, String> parseWeCarAccountFile(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        LogUtils.d(TAG, "parseWeCarAccountFile");
        HashMap hashMap = new HashMap();
        try {
            try {
                fileReader = new FileReader((String) str);
            } catch (Throwable th) {
                th = th;
            }
            try {
                bufferedReader = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            int indexOf = readLine.indexOf(KEY_VALUE_SEP);
                            if (indexOf != -1) {
                                hashMap.put(readLine.substring(0, indexOf), readLine.substring(indexOf + 1, readLine.length()));
                            }
                        } else {
                            try {
                                break;
                            } catch (IOException e) {
                                Log.e(TAG, Log.getStackTraceString(e));
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Log.e(TAG, Log.getStackTraceString(e));
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e3) {
                                Log.e(TAG, Log.getStackTraceString(e3));
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e4) {
                                Log.e(TAG, Log.getStackTraceString(e4));
                            }
                        }
                        return null;
                    }
                }
                fileReader.close();
                try {
                    bufferedReader.close();
                    return hashMap;
                } catch (IOException e5) {
                    Log.e(TAG, Log.getStackTraceString(e5));
                    return hashMap;
                }
            } catch (Exception e6) {
                e = e6;
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                str = 0;
                if (fileReader != null) {
                    try {
                        fileReader.close();
                    } catch (IOException e7) {
                        Log.e(TAG, Log.getStackTraceString(e7));
                    }
                }
                if (str != 0) {
                    try {
                        str.close();
                        throw th;
                    } catch (IOException e8) {
                        Log.e(TAG, Log.getStackTraceString(e8));
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Exception e9) {
            e = e9;
            bufferedReader = null;
            fileReader = null;
        } catch (Throwable th3) {
            th = th3;
            str = 0;
            fileReader = null;
        }
    }

    private static String getRootPath() {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        LogUtils.d(TAG, "getRootPath " + absolutePath);
        return absolutePath;
    }
}
