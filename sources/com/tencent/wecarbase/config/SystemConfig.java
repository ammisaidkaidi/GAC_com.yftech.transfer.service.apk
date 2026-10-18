package com.tencent.wecarbase.config;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.StringUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.security.MessageDigest;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemConfig {
    private static final SystemConfig ourInstance = new SystemConfig();
    private static String sChannel = "";

    public static SystemConfig getInstance() {
        return ourInstance;
    }

    private SystemConfig() {
    }

    public static String getChannel() {
        if (TextUtils.isEmpty(sChannel) || "".equals(sChannel)) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sChannel = new ConfigReader().getChannelId();
            LogUtils.d("SystemConfig", "get channel from system file spend " + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms");
        }
        return sChannel;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class ConfigReader {
        private static final String APP_CHANNEL_KEY = "channel";
        private static final String APP_PRODUCT_KEY = "product";
        private static final String SYSTEM_ETC_WECAR_CONFIG = "/system/etc/wecar_config.json";
        private static final String TAG = "SystemConfig$ConfigReader";
        private JSONObject mConfigJsonObject;

        public ConfigReader() {
            this.mConfigJsonObject = null;
            String readFile = readFile();
            if (TextUtils.isEmpty(readFile)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(readFile);
                this.mConfigJsonObject = jSONObject.optJSONObject("config");
                if (this.mConfigJsonObject == null) {
                    this.mConfigJsonObject = jSONObject;
                    return;
                }
                String string = jSONObject.getString("md5");
                String md5 = getMD5(this.mConfigJsonObject, true);
                LogUtils.d(TAG, "Json md5 " + string + ":" + md5);
                if (md5 == null || !md5.equals(string)) {
                    String md52 = getMD5(this.mConfigJsonObject, false);
                    if (md52 == null || !md52.equals(string)) {
                        this.mConfigJsonObject = null;
                    }
                }
            } catch (JSONException e) {
                LogUtils.e(TAG, "Json parse fail!", e);
            }
        }

        public boolean isEnable() {
            return this.mConfigJsonObject != null;
        }

        public String getChannelId() {
            return getString("channel", "");
        }

        private String getString(String str, String str2) {
            if (this.mConfigJsonObject == null) {
                return str2;
            }
            try {
                return this.mConfigJsonObject.getString(str);
            } catch (JSONException e) {
                Log.e(TAG, Log.getStackTraceString(e));
                return str2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:58:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v11 */
        /* JADX WARN: Type inference failed for: r3v12, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r3v7 */
        /* JADX WARN: Type inference failed for: r3v9 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x004f -> B:20:0x00a3). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private String readFile() {
            FileInputStream fileInputStream;
            InputStreamReader inputStreamReader;
            ?? r3;
            IOException e;
            String str = "";
            try {
                try {
                    fileInputStream = new FileInputStream(SYSTEM_ETC_WECAR_CONFIG);
                    try {
                        inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
                    } catch (IOException e2) {
                        r3 = 0;
                        e = e2;
                        inputStreamReader = null;
                    } catch (Throwable th) {
                        th = th;
                        inputStreamReader = null;
                        r3 = inputStreamReader;
                        if (r3 != 0) {
                        }
                        if (fileInputStream != null) {
                        }
                        if (inputStreamReader != null) {
                        }
                    }
                } catch (IOException e3) {
                    Log.e(TAG, Log.getStackTraceString(e3));
                }
            } catch (IOException e4) {
                inputStreamReader = null;
                r3 = 0;
                e = e4;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
                inputStreamReader = null;
            }
            try {
                r3 = new BufferedReader(inputStreamReader);
                while (true) {
                    try {
                        try {
                            String readLine = r3.readLine();
                            if (readLine != null) {
                                str = str + readLine;
                            } else {
                                try {
                                    break;
                                } catch (IOException e5) {
                                    Log.e(TAG, Log.getStackTraceString(e5));
                                }
                            }
                        } catch (IOException e6) {
                            e = e6;
                            Log.e(TAG, Log.getStackTraceString(e));
                            if (r3 != 0) {
                                try {
                                    r3.close();
                                } catch (IOException e7) {
                                    Log.e(TAG, Log.getStackTraceString(e7));
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e8) {
                                    Log.e(TAG, Log.getStackTraceString(e8));
                                }
                            }
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            return str;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (r3 != 0) {
                            try {
                                r3.close();
                            } catch (IOException e9) {
                                Log.e(TAG, Log.getStackTraceString(e9));
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e10) {
                                Log.e(TAG, Log.getStackTraceString(e10));
                            }
                        }
                        if (inputStreamReader != null) {
                            try {
                                inputStreamReader.close();
                                throw th;
                            } catch (IOException e11) {
                                Log.e(TAG, Log.getStackTraceString(e11));
                                throw th;
                            }
                        }
                        throw th;
                    }
                }
                r3.close();
                try {
                    fileInputStream.close();
                } catch (IOException e12) {
                    Log.e(TAG, Log.getStackTraceString(e12));
                }
                inputStreamReader.close();
            } catch (IOException e13) {
                r3 = 0;
                e = e13;
            } catch (Throwable th4) {
                th = th4;
                r3 = 0;
                if (r3 != 0) {
                }
                if (fileInputStream != null) {
                }
                if (inputStreamReader != null) {
                }
            }
            return str;
        }

        private String getMD5(JSONObject jSONObject, boolean z) {
            String jSONObject2;
            if (jSONObject == null || TextUtils.isEmpty(jSONObject.toString())) {
                return null;
            }
            if (z) {
                jSONObject2 = StringUtils.json2str(jSONObject);
            } else {
                jSONObject2 = jSONObject.toString();
            }
            if (LogUtils.isLogEnable()) {
                LogUtils.d(TAG, "sortKey = " + z + ", json = " + jSONObject2);
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(jSONObject2.getBytes());
                return new BigInteger(1, messageDigest.digest()).toString(16);
            } catch (Exception e) {
                LogUtils.e(TAG, "MD5 fail", e);
                return null;
            }
        }
    }
}
