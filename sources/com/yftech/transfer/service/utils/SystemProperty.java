package com.yftech.transfer.service.utils;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemProperty {
    static ClassLoader cl;
    static Class mSystemProperties;

    static void init(Context context) {
        if (cl == null) {
            cl = context.getClassLoader();
            try {
                mSystemProperties = cl.loadClass("android.os.SystemProperties");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    public static String get(Context context, String str) throws IllegalArgumentException {
        try {
            init(context);
            return (String) mSystemProperties.getMethod("get", String.class).invoke(mSystemProperties, new String(str));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String get(Context context, String str, String str2) throws IllegalArgumentException {
        try {
            init(context);
            return (String) mSystemProperties.getMethod("get", String.class, String.class).invoke(mSystemProperties, new String(str), new String(str2));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return str2;
        }
    }

    public static Integer getInt(Context context, String str, int i) throws IllegalArgumentException {
        Integer.valueOf(i);
        try {
            init(context);
            return (Integer) mSystemProperties.getMethod("getInt", String.class, Integer.TYPE).invoke(mSystemProperties, new String(str), new Integer(i));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return Integer.valueOf(i);
        }
    }

    public static Long getLong(Context context, String str, long j) throws IllegalArgumentException {
        Long.valueOf(j);
        try {
            init(context);
            return (Long) mSystemProperties.getMethod("getLong", String.class, Long.TYPE).invoke(mSystemProperties, new String(str), new Long(j));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return Long.valueOf(j);
        }
    }

    public static Boolean getBoolean(Context context, String str, boolean z) throws IllegalArgumentException {
        Boolean.valueOf(z);
        try {
            init(context);
            return (Boolean) mSystemProperties.getMethod("getBoolean", String.class, Boolean.TYPE).invoke(mSystemProperties, new String(str), new Boolean(z));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
            return Boolean.valueOf(z);
        }
    }

    public static void set(Context context, String str, String str2) throws IllegalArgumentException {
        try {
            init(context);
            mSystemProperties.getMethod("set", String.class, String.class).invoke(mSystemProperties, new String(str), new String(str2));
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    public static void mark(Context context, String str, Object obj) throws IllegalArgumentException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put("val", obj);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        set(context, str, jSONObject.toString());
    }

    public static void mark(Context context, String str) throws IllegalArgumentException {
        mark(context, str, null);
    }

    public static void add(Context context, String str, int i) {
        if (!get(context, str).isEmpty()) {
            set(context, str, "" + (Integer.parseInt(r0) + i));
            return;
        }
        set(context, str, "" + i);
    }
}
