package com.tencent.taifeedback.upload.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: /home/user/work/dex/classes.dex */
public class SettingsUtils {
    private static final String IS_CHECK_ROOTED = "is_check_root";
    private static final String IS_DEBUG_ENV = "is_debug_server";
    private static final String IS_DELETE_EXTRA_FILE = "is_delete_extra_file";
    private static final String LAST_ACCOUNT = "last_account";
    private static final String LOCATION_ADDRESS = "location_address";
    private static final String LOCATION_LOCATION = "location_location";
    private static final String LOCATION_SPEED = "location_speed";
    private static final String SCREEN_SHOT_ENABLE = "screen_shot_enable";
    private static final String SETTING_CURRENT_TAPD_ID = "current_tapd_id";
    private static final String TESLY_APP_ID = "tesly_app_id";
    private static SettingsUtils settingsUtil;
    private final String SETTINGS_FILE_NAME = "tai_feedback";
    private final String VALUE_DEFAULT_VOLUME = "VALUE_DEFAULT_VOLUME";

    public static SettingsUtils getInstance() {
        if (settingsUtil == null) {
            settingsUtil = new SettingsUtils();
        }
        return settingsUtil;
    }

    public void destroy() {
        settingsUtil = null;
    }

    private void setPreferences(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("tai_feedback", 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    private String getPreferences(Context context, String str, String str2) {
        return context.getSharedPreferences("tai_feedback", 0).getString(str, str2);
    }

    private void setBooleanPreferences(Context context, String str, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences("tai_feedback", 0).edit();
        edit.putBoolean(str, z);
        edit.commit();
    }

    private Boolean getBooleanPreferences(Context context, String str) {
        return Boolean.valueOf(context.getSharedPreferences("tai_feedback", 0).getBoolean(str, false));
    }

    private Boolean getBooleanPreferences(Context context, String str, boolean z) {
        return Boolean.valueOf(context.getSharedPreferences("tai_feedback", 0).getBoolean(str, z));
    }

    public void setScreenShotEnable(Context context, boolean z) {
        setBooleanPreferences(context, SCREEN_SHOT_ENABLE, z);
    }

    public boolean getScreenShotEnable(Context context) {
        return getBooleanPreferences(context, SCREEN_SHOT_ENABLE, true).booleanValue();
    }

    private void setIntPreferences(Context context, String str, int i) {
        SharedPreferences.Editor edit = context.getSharedPreferences("tai_feedback", 0).edit();
        edit.putInt(str, i);
        edit.commit();
    }

    private int getIntPreferences(Context context, String str) {
        return context.getSharedPreferences("tai_feedback", 0).getInt(str, 0);
    }

    public void setDefaultVolume(Context context, int i) {
        setIntPreferences(context, "VALUE_DEFAULT_VOLUME", i);
    }

    public int getDefaultVolume(Context context) {
        return getIntPreferences(context, "VALUE_DEFAULT_VOLUME");
    }

    public void setLocationLocation(Context context, String str) {
        setPreferences(context, LOCATION_LOCATION, str);
    }

    public String getLocationLocation(Context context) {
        return getPreferences(context, LOCATION_LOCATION, "0.0,0.0");
    }

    public void setLocationAddress(Context context, String str) {
        setPreferences(context, LOCATION_ADDRESS, str);
    }

    public String getLocationAddress(Context context) {
        return getPreferences(context, LOCATION_ADDRESS, "未获取到准确位置");
    }

    public void setLocationSpeed(Context context, String str) {
        setPreferences(context, LOCATION_SPEED, str);
    }

    public String getLocationSpeed(Context context) {
        return getPreferences(context, LOCATION_SPEED, "0.0");
    }

    public void setLastAccount(Context context, String str) {
        setPreferences(context, LAST_ACCOUNT, str);
    }

    public String getLastAccount(Context context) {
        return getPreferences(context, LAST_ACCOUNT, null);
    }

    public void setSettingCurrentTapdId(Context context, String str) {
        setPreferences(context, SETTING_CURRENT_TAPD_ID, str);
    }

    public String getSettingCurrentTapdId(Context context) {
        String preferences = getPreferences(context, SETTING_CURRENT_TAPD_ID, "-1");
        if (preferences != null) {
            return preferences;
        }
        setSettingCurrentTapdId(context, "-1");
        return "-1";
    }

    public void setIsDebugEnv(Context context, boolean z) {
        setBooleanPreferences(context, IS_DEBUG_ENV, z);
    }

    public boolean getIsDebugEnv(Context context) {
        return getBooleanPreferences(context, IS_DEBUG_ENV, false).booleanValue();
    }

    public void setIsDeleteExtraFile(Context context, boolean z) {
        setBooleanPreferences(context, IS_DELETE_EXTRA_FILE, z);
    }

    public boolean getIsDeleteExtraFile(Context context) {
        return getBooleanPreferences(context, IS_DELETE_EXTRA_FILE, false).booleanValue();
    }

    public void setIsCheckRooted(Context context, boolean z) {
        setBooleanPreferences(context, IS_CHECK_ROOTED, z);
    }

    public boolean getIsCheckRooted(Context context) {
        return getBooleanPreferences(context, IS_CHECK_ROOTED, true).booleanValue();
    }

    public void setAppId(Context context, String str) {
        setPreferences(context, TESLY_APP_ID, str);
    }

    public String getAppId(Context context) {
        return getPreferences(context, TESLY_APP_ID, null);
    }
}
