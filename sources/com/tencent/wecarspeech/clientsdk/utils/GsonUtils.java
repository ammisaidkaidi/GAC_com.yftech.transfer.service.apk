package com.tencent.wecarspeech.clientsdk.utils;

import android.support.annotation.Keep;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import java.lang.reflect.Type;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class GsonUtils {
    private static Gson mGson = new Gson();

    public static String toJson(Object obj) {
        return mGson.toJson(obj);
    }

    public static <T> T fromJson(String str, Class<T> cls) {
        return (T) mGson.fromJson(str, (Class) cls);
    }

    public static <T> T fromJson(JsonElement jsonElement, Type type) {
        return (T) mGson.fromJson(jsonElement, type);
    }
}
