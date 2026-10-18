package com.tencent.wecarbase.utils;

import android.text.TextUtils;
import android.util.Log;
import com.yftech.transfer.service.CarAppList;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class StringUtils {
    private static final String TAG = "StringUtils";

    public static String json2str(Object obj) {
        Object obj2;
        if (obj == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            while (i < jSONArray.length()) {
                try {
                    sb.append(json2str(jSONArray.get(i)));
                    if (i != jSONArray.length() - 1) {
                        sb.append(",");
                    }
                    i++;
                } catch (JSONException e) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
                }
            }
            return "[" + ((Object) sb) + "]";
        }
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> keys = jSONObject.keys();
            ArrayList arrayList = new ArrayList();
            while (keys.hasNext()) {
                arrayList.add(keys.next().toString());
            }
            Collections.sort(arrayList);
            while (i < arrayList.size()) {
                String str = (String) arrayList.get(i);
                sb.append(json2str(str));
                sb.append(":");
                try {
                    obj2 = jSONObject.get(str);
                } catch (JSONException e2) {
                    Log.e(TAG, "Exception:" + Log.getStackTraceString(e2));
                    obj2 = null;
                }
                sb.append(json2str(obj2));
                if (i != arrayList.size() - 1) {
                    sb.append(",");
                }
                i++;
            }
            return "{" + ((Object) sb) + "}";
        }
        if (obj instanceof String) {
            return "\"" + obj + "\"";
        }
        return "" + obj;
    }

    public static String getRandomString(int i) {
        Random random = new Random();
        int length = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".length();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(random.nextInt(length)));
        }
        return stringBuffer.toString();
    }

    public static String getMD5(String str) throws NoSuchAlgorithmException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        if (messageDigest == null) {
            throw new NoSuchAlgorithmException();
        }
        messageDigest.update(str.getBytes());
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            String hexString = Integer.toHexString(b & 255);
            while (hexString.length() < 2) {
                hexString = CarAppList.MediaPage.PAGE_FM + hexString;
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static String genHttpParamsSign(TreeMap<String, String> treeMap, String str) {
        Set<Map.Entry<String, String>> entrySet = treeMap.entrySet();
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : entrySet) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append(entry.getValue());
        }
        stringBuffer.append(str);
        try {
            LogUtils.d(TAG, "genHttpParamsSign str:" + stringBuffer.toString());
            return getMD5(stringBuffer.toString());
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getNowTimeStamp() {
        return String.valueOf(System.currentTimeMillis() / 1000);
    }

    public static boolean isInteger(String str) {
        return Pattern.compile("^[-\\+]?[\\d]*$").matcher(str).matches();
    }
}
