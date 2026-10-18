package com.tencent.wecarbase.utils;

import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class JsonUtils {
    public static final String TAG = "JsonUtils";

    public static String getJsonString(JSONObject jSONObject, String str, String str2) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException unused) {
            return str2;
        }
    }

    public static int getJsonInt(JSONObject jSONObject, String str, int i) {
        try {
            return jSONObject.getInt(str);
        } catch (JSONException unused) {
            return i;
        }
    }

    public static double getJsonDouble(JSONObject jSONObject, String str, double d) {
        try {
            return jSONObject.getDouble(str);
        } catch (JSONException unused) {
            return d;
        }
    }

    public static boolean getJsonBoolean(JSONObject jSONObject, String str, boolean z) {
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            return z;
        }
    }

    public static JSONObject getJsonObject(JSONObject jSONObject, String str, JSONObject jSONObject2) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return jSONObject2;
        }
        try {
            return new JSONObject(jSONObject.getString(str));
        } catch (JSONException e) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
            return jSONObject2;
        }
    }

    public static JSONArray getJsonArray(JSONObject jSONObject, String str, JSONArray jSONArray) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return jSONArray;
        }
        try {
            return new JSONArray(jSONObject.getString(str));
        } catch (JSONException e) {
            Log.e(TAG, "Exception:" + Log.getStackTraceString(e));
            return jSONArray;
        }
    }
}
