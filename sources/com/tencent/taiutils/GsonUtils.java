package com.tencent.taiutils;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import java.lang.reflect.Type;

/* loaded from: /home/user/work/dex/classes.dex */
public class GsonUtils {
    public static Gson mGson = new Gson();

    public static <T> T fromJson(JsonElement jsonElement, Type type) {
        return (T) mGson.fromJson(jsonElement, type);
    }

    public static <T> T fromJson(String str, Class<T> cls) {
        return (T) mGson.fromJson(str, (Class) cls);
    }

    public static <T> T fromJson(String str, Type type) {
        return (T) mGson.fromJson(str, type);
    }

    public static String toJson(Object obj) {
        return mGson.toJson(obj);
    }
}
