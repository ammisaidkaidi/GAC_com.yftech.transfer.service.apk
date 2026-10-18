package com.tencent.wecarspeech.sdk.util;

import android.content.Context;
import android.content.pm.PackageManager;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SpeechServerTool {
    public static final String META_SPEECH_TYPE = "vr_speech_type";
    public static final String META_VR_CODE = "vr_ver_code";
    public static final String PKG_WECAR = "com.tencent.wecar";
    public static final String PKG_WECAR_SPEECH = "com.tencent.wecarspeech";
    public static final String PKG_WECAR_SPEECH_CLIENT = "com.tencent.wecarspeechclient";
    public static final String TAG = "SpeechServerTool";

    /* renamed from: a, reason: collision with root package name */
    private static final List<a> f226a = new ArrayList();

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        private String f227a;
        private int b;

        a(String str, int i) {
            this.f227a = str;
            this.b = i;
        }

        public String toString() {
            return "package = " + this.f227a + ", priority = " + this.b;
        }
    }

    static {
        f226a.add(new a("com.tencent.wecarspeech", 600));
        f226a.add(new a("com.tencent.wecar", 500));
    }

    public static String getServerPackage(Context context) {
        String str;
        StringBuilder sb;
        int speechVerCode = getSpeechVerCode(context);
        if (speechVerCode >= 220) {
            str = TAG;
            sb = new StringBuilder();
        } else {
            if (AppUtils.isAPPInstalled(context, PKG_WECAR_SPEECH_CLIENT)) {
                LogUtils.d(TAG, "com.tencent.wecarspeechclient is installed");
                return PKG_WECAR_SPEECH_CLIENT;
            }
            if (!AppUtils.isAPPInstalled(context, "com.tencent.wecarspeech")) {
                if (AppUtils.isAPPInstalled(context, "com.tencent.wecar")) {
                    LogUtils.d(TAG, "com.tencent.wecar is installed");
                    if (isWeCarSystemSpeech(context)) {
                        return "com.tencent.wecar";
                    }
                }
                return null;
            }
            str = TAG;
            sb = new StringBuilder();
        }
        sb.append("com.tencent.wecarspeech is installed, verCode = ");
        sb.append(speechVerCode);
        LogUtils.d(str, sb.toString());
        return "com.tencent.wecarspeech";
    }

    public static int getSpeechVerCode(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo("com.tencent.wecarspeech", 128).metaData.getInt("vr_ver_code");
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static boolean isWeCarSystemSpeech(Context context) {
        try {
            return "system".equals(context.getPackageManager().getApplicationInfo("com.tencent.wecar", 128).metaData.getString("vr_speech_type"));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
