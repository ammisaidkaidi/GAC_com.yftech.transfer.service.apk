package com.tencent.taifeedback.upload.sdk;

import android.content.Context;
import com.tencent.taifeedback.upload.sdk.utils.SettingsUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAIFeedbackConfig {
    public static void setScreenShotEnable(Context context, boolean z) {
        SettingsUtils.getInstance().setScreenShotEnable(context, z);
    }

    public static boolean getScreenShotEnable(Context context) {
        return SettingsUtils.getInstance().getScreenShotEnable(context);
    }

    public static void setTapdId(Context context, String str) {
        SettingsUtils.getInstance().setSettingCurrentTapdId(context, str);
    }

    public static String getTapdId(Context context) {
        String settingCurrentTapdId = SettingsUtils.getInstance().getSettingCurrentTapdId(context);
        return settingCurrentTapdId == null ? "-1" : settingCurrentTapdId;
    }

    public static void setIsDebugEnv(Context context, boolean z) {
        SettingsUtils.getInstance().setIsDebugEnv(context, z);
    }

    public static boolean getIsDebugEnv(Context context) {
        return SettingsUtils.getInstance().getIsDebugEnv(context);
    }

    public static void setIsDeleteExtraFile(Context context, boolean z) {
        SettingsUtils.getInstance().setIsDeleteExtraFile(context, z);
    }

    public static boolean getIsDeleteExtraFile(Context context) {
        return SettingsUtils.getInstance().getIsDeleteExtraFile(context);
    }

    public static void setIsCheckRoot(Context context, boolean z) {
        SettingsUtils.getInstance().setIsCheckRooted(context, z);
    }

    public static boolean getIsCheckRoot(Context context) {
        return SettingsUtils.getInstance().getIsCheckRooted(context);
    }

    public static void setAppId(Context context, String str) {
        SettingsUtils.getInstance().setAppId(context, str);
    }

    public static String getAppId(Context context) {
        return SettingsUtils.getInstance().getAppId(context);
    }
}
