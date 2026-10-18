package com.tencent.wecarbase.common;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class ReflectUtils {
    public static void playTTS(String str) {
        try {
            Class<?> cls = Class.forName("com.tencent.wecarbase.tts.TTSProxy");
            cls.getMethod("play", String.class).invoke(cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]), str);
        } catch (Exception e) {
            Log.e("ReflectUtils", "Exception:" + Log.getStackTraceString(e));
        }
    }
}
