package com.tencent.wecarbase.common.helper;

import android.util.Log;
import com.tencent.wecarbase.common.JNIEncryptIF;
import com.tencent.wecarbase.utils.StringUtils;
import java.util.Comparator;
import java.util.TreeMap;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SignHelper {
    public static String generateSigForHttpPost(String str, String str2) {
        return generateSig("POST" + str + str2);
    }

    public static String generateSigForHttpPost(String str, JSONObject jSONObject) {
        return generateSig("POST" + str + StringUtils.json2str(jSONObject));
    }

    public static String generateSigForHttpGet(String str) {
        int indexOf = str.indexOf(63);
        String substring = str.substring(0, str.indexOf(63));
        String[] split = str.substring(indexOf + 1).split("&");
        TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: com.tencent.wecarbase.common.helper.SignHelper.1
            @Override // java.util.Comparator
            public int compare(String str2, String str3) {
                return str2.compareTo(str3);
            }
        });
        for (int i = 0; i < split.length; i++) {
            int indexOf2 = split[i].indexOf("=");
            if (indexOf2 != -1) {
                treeMap.put(split[i].substring(0, indexOf2), split[i].substring(indexOf2 + 1));
            }
        }
        String str2 = "GET" + substring;
        for (String str3 : treeMap.keySet()) {
            str2 = str2 + "&" + str3 + "=" + ((String) treeMap.get(str3));
        }
        return generateSig(str2);
    }

    public static String generateSig(String str) {
        try {
            return JNIEncryptIF.sig(str);
        } catch (Throwable th) {
            Log.e("SignHelper", "Exception:" + Log.getStackTraceString(th));
            return "exception";
        }
    }

    public static String generateEncryptContent(JSONObject jSONObject) {
        return JNIEncryptIF.encrypt(StringUtils.json2str(jSONObject));
    }

    public static String generateEncryptContent(String str) {
        return JNIEncryptIF.encrypt(str);
    }
}
