package com.tencent.wecarbase.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class SPUtils {
    public static final String PREFERENCE = "tai_sdk_sp";

    public static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences(PREFERENCE, 0);
    }

    public static void putSP(Context context, String str, Object obj) {
        SharedPreferences.Editor edit = context.getSharedPreferences(PREFERENCE, 0).edit();
        if (obj instanceof Boolean) {
            edit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            edit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Integer) {
            edit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            edit.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            edit.putString(str, (String) obj);
        }
        edit.apply();
    }

    public static SharedPreferences.Editor getEdit(Context context) {
        return context.getSharedPreferences(PREFERENCE, 0).edit();
    }

    public static Object getSP(Context context, String str, Class cls, Object obj) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCE, 0);
        String simpleName = cls.getSimpleName();
        if (simpleName.equalsIgnoreCase("Boolean")) {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue()));
        }
        if (simpleName.equalsIgnoreCase("Float")) {
            return Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue()));
        }
        if (simpleName.equalsIgnoreCase("Integer")) {
            return Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue()));
        }
        if (simpleName.equalsIgnoreCase("Long")) {
            return Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue()));
        }
        if (simpleName.equalsIgnoreCase("String")) {
            return sharedPreferences.getString(str, (String) obj);
        }
        return null;
    }

    public static void removeSP(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences(PREFERENCE, 0).edit();
        edit.remove(str);
        edit.apply();
    }

    public static <T> T getObjectSP(Context context, String str, Class<T> cls) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCE, 0);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString(str, null);
            if (!TextUtils.isEmpty(string)) {
                return (T) GsonProvider.getInstance().fromJson(string, (Class) cls);
            }
        }
        return null;
    }

    public static <T> void putObjectSP(Context context, String str, T t) {
        SharedPreferences.Editor edit = context.getSharedPreferences(PREFERENCE, 0).edit();
        String json = GsonProvider.getInstance().toJson(t);
        if (TextUtils.isEmpty(json)) {
            return;
        }
        edit.putString(str, json).apply();
    }
}
