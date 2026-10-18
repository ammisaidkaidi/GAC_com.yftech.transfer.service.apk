package com.tencent.wecarspeech.clientsdk.impl;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.tencent.wecarspeech.clientsdk.utils.AppUtils;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SpeechServerTool {
    private static final List<APPItem> APPItems = new ArrayList();
    public static final String META_SPEECH_TYPE = "vr_speech_type";
    public static final String META_VR_CODE = "vr_ver_code";
    public static final String PKG_WECAR = "com.tencent.wecar";
    public static final String PKG_WECAR_SPEECH = "com.tencent.wecarspeech";
    public static final String TAG = "SpeechServerTool";

    static {
        APPItems.add(new APPItem("com.tencent.wecarspeech", 600));
        APPItems.add(new APPItem("com.tencent.wecar", 500));
    }

    public static String getServerPackage(Context context) {
        int speechVerCode = getSpeechVerCode(context);
        if (speechVerCode >= 220) {
            LogUtils.d("SpeechServerTool", "com.tencent.wecarspeech is installed, verCode = " + speechVerCode);
            return "com.tencent.wecarspeech";
        }
        if (AppUtils.isAPPInstalled(context, "com.tencent.wecarspeech")) {
            LogUtils.d("SpeechServerTool", "com.tencent.wecarspeech is installed, verCode = " + speechVerCode);
            return "com.tencent.wecarspeech";
        }
        if (!AppUtils.isAPPInstalled(context, "com.tencent.wecar")) {
            return "com.tencent.wecarspeech";
        }
        LogUtils.d("SpeechServerTool", "com.tencent.wecar is installed");
        return "com.tencent.wecar";
    }

    private static boolean isInSuperA(Context context) {
        return "com.tencent.wecar".equals(context.getPackageName());
    }

    public static boolean isWeCarSystemSpeech(Context context) {
        return AppUtils.isAPPInstalled(context, "com.tencent.wecarspeech");
    }

    public static int getSpeechVerCode(Context context) {
        int i = -1;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo("com.tencent.wecarspeech", 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                i = applicationInfo.metaData.getInt("vr_ver_code");
            } else {
                LogUtils.d("SpeechServerTool", "info or metaData is null");
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return i;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class APPItem implements Serializable {
        private String pkgName;
        private int priority;

        APPItem(String str, int i) {
            this.pkgName = str;
            this.priority = i;
        }

        public String toString() {
            return "package = " + this.pkgName + ", priority = " + this.priority;
        }
    }
}
