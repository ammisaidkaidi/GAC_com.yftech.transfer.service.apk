package com.tencent.wecarflow.contentsdk.utils;

import com.google.gson.Gson;

/* loaded from: /home/user/work/dex/classes.dex */
public class GsonUtils {
    private static Gson sGson = new Gson();

    private GsonUtils() {
    }

    public static String convert2String(Object obj) {
        return sGson.toJson(obj);
    }

    public static <T> T convert2Object(String str, Class<T> cls) {
        return (T) sGson.fromJson(str, (Class) cls);
    }
}
