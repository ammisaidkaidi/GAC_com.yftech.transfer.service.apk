package com.tencent.wecarspeech.sdk.model;

import android.support.annotation.Nullable;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SettingPageInfo {
    public static final String ABOUT_LICENSING_SERVICE = "licensing_service";
    public static final String ABOUT_PRIVACY_POLICY = "privacy_policy";
    public static final int DAY_NIGHT_MODE_DAY = 1;
    public static final int DAY_NIGHT_MODE_DEFAULT = 0;
    public static final int DAY_NIGHT_MODE_NIGHT = 2;
    public static final String ID_DAJI = "daji";
    public static final String ID_DINGDANG = "dingdang";
    public static final String ID_LIBAI = "libai";
    public static final String PREFER_MAP = "map";
    public static final String PREFER_MUSIC = "music";
    public static final String PREFER_NEWS = "news";
    public static final String TAG = "SettingPageInfo";

    /* renamed from: a, reason: collision with root package name */
    private String f223a;
    private String b;
    private boolean c;
    private int d;
    private List<PreferAppModel> e;
    private String f;
    private String g;
    private String h;
    private boolean i;
    private boolean j;
    private int k;
    private boolean l;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PreferAppModel {

        /* renamed from: a, reason: collision with root package name */
        private String f224a;
        private List<String> b;
        private List<String> c;
        private String d;

        @Nullable
        public static PreferAppModel fromJson(String str) {
            PreferAppModel preferAppModel = new PreferAppModel();
            try {
                JSONObject jSONObject = new JSONObject(str);
                preferAppModel.setType(jSONObject.getString("mType"));
                preferAppModel.setSelectedPkgName(jSONObject.getString("mSelectedPkgName"));
                JSONArray jSONArray = jSONObject.getJSONArray("mAppName");
                ArrayList arrayList = new ArrayList();
                if (jSONArray != null) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add((String) jSONArray.get(i));
                    }
                }
                preferAppModel.setAppName(arrayList);
                JSONArray jSONArray2 = jSONObject.getJSONArray("mPkgName");
                ArrayList arrayList2 = new ArrayList();
                if (jSONArray2 != null) {
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        arrayList2.add((String) jSONArray2.get(i2));
                    }
                }
                preferAppModel.setPkgName(arrayList2);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return preferAppModel;
        }

        @Nullable
        public static String toJson(PreferAppModel preferAppModel) {
            if (preferAppModel == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("mType", preferAppModel.getType());
                jSONObject.put("mSelectedPkgName", preferAppModel.getSelectedPkgName());
                jSONObject.put("mAppName", new JSONArray((Collection) preferAppModel.getAppName()));
                jSONObject.put("mPkgName", new JSONArray((Collection) preferAppModel.getPkgName()));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jSONObject.toString();
        }

        public List<String> getAppName() {
            return this.b;
        }

        public List<String> getPkgName() {
            return this.c;
        }

        public String getSelectedPkgName() {
            return this.d;
        }

        public String getType() {
            return this.f224a;
        }

        public void setAppName(List<String> list) {
            this.b = list;
        }

        public void setPkgName(List<String> list) {
            this.c = list;
        }

        public void setSelectedPkgName(String str) {
            this.d = str;
        }

        public void setType(String str) {
            this.f224a = str;
        }
    }

    public static SettingPageInfo fromJson(String str) {
        LogUtils.t(TAG, "SettingPageInfo, fromJson: " + str);
        SettingPageInfo settingPageInfo = new SettingPageInfo();
        try {
            JSONObject jSONObject = new JSONObject(str);
            settingPageInfo.setSelectRoleID(jSONObject.getString("mSelectRoleID"));
            try {
                settingPageInfo.setWakeupWord(jSONObject.getString("mWakeupWord"));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            settingPageInfo.setDayNightMode(jSONObject.getInt("mDayNightMode"));
            settingPageInfo.setEnableFloatBtn(jSONObject.getBoolean("mEnableFloatBtn"));
            settingPageInfo.setLicensingServiceText(jSONObject.getString("mLicensingServiceText"));
            settingPageInfo.setPrivacyPolicyUrl(jSONObject.getString("mPrivacyPolicyUrl"));
            settingPageInfo.setVersion(jSONObject.getString("mVersion"));
            JSONArray jSONArray = jSONObject.getJSONArray("mPreferAppModels");
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (jSONArray.get(i) != null) {
                        arrayList.add(PreferAppModel.fromJson((String) jSONArray.get(i)));
                    }
                }
            }
            settingPageInfo.setPreferAppModels(arrayList);
            settingPageInfo.setDuplexSupported(jSONObject.getBoolean("mDuplexSupported"));
            settingPageInfo.setDuplexEnabled(jSONObject.getBoolean("mDuplexEnabled"));
            settingPageInfo.setDuplexActiveTime(jSONObject.getInt("mDuplexActiveTime"));
            settingPageInfo.setDuplexValidResult(jSONObject.getBoolean("mDuplexValidResult"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        LogUtils.t(TAG, "SettingPageInfo, fromJson end");
        return settingPageInfo;
    }

    @Nullable
    public static String toJson(SettingPageInfo settingPageInfo) {
        LogUtils.t(TAG, "SettingPageInfo, toJson start");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mSelectRoleID", settingPageInfo.getSelectRoleID());
            jSONObject.put("mWakeupWord", settingPageInfo.getWakeupWord());
            jSONObject.put("mEnableFloatBtn", settingPageInfo.isEnableFloatBtn());
            jSONObject.put("mDayNightMode", settingPageInfo.getDayNightMode());
            jSONObject.put("mVersion", settingPageInfo.getVersion());
            jSONObject.put("mLicensingServiceText", settingPageInfo.getLicensingServiceText());
            jSONObject.put("mPrivacyPolicyUrl", settingPageInfo.getPrivacyPolicyUrl());
            JSONArray jSONArray = new JSONArray();
            if (settingPageInfo.getPreferAppModels() != null) {
                Iterator<PreferAppModel> it = settingPageInfo.getPreferAppModels().iterator();
                while (it.hasNext()) {
                    jSONArray.put(PreferAppModel.toJson(it.next()));
                }
            }
            jSONObject.put("mPreferAppModels", jSONArray);
            jSONObject.put("mDuplexSupported", settingPageInfo.isDuplexSupported());
            jSONObject.put("mDuplexEnabled", settingPageInfo.isDuplexEnabled());
            jSONObject.put("mDuplexActiveTime", settingPageInfo.getDuplexActiveTime());
            jSONObject.put("mDuplexValidResult", settingPageInfo.isDuplexValidResult());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        LogUtils.t(TAG, "SettingPageInfo, toJson: " + jSONObject.toString());
        return jSONObject.toString();
    }

    public int getDayNightMode() {
        return this.d;
    }

    public int getDuplexActiveTime() {
        return this.k;
    }

    public String getLicensingServiceText() {
        return this.g;
    }

    public List<PreferAppModel> getPreferAppModels() {
        return this.e;
    }

    public String getPrivacyPolicyUrl() {
        return this.h;
    }

    public String getSelectRoleID() {
        return this.f223a;
    }

    public String getVersion() {
        return this.f;
    }

    public String getWakeupWord() {
        return this.b;
    }

    public boolean isDuplexEnabled() {
        return this.j;
    }

    public boolean isDuplexSupported() {
        return this.i;
    }

    public boolean isDuplexValidResult() {
        return this.l;
    }

    public boolean isEnableFloatBtn() {
        return this.c;
    }

    public void setDayNightMode(int i) {
        this.d = i;
    }

    public void setDuplexActiveTime(int i) {
        this.k = i;
    }

    public void setDuplexEnabled(boolean z) {
        this.j = z;
    }

    public void setDuplexSupported(boolean z) {
        this.i = z;
    }

    public void setDuplexValidResult(boolean z) {
        this.l = z;
    }

    public void setEnableFloatBtn(boolean z) {
        this.c = z;
    }

    public void setLicensingServiceText(String str) {
        this.g = str;
    }

    public void setPreferAppModels(List<PreferAppModel> list) {
        this.e = list;
    }

    public void setPrivacyPolicyUrl(String str) {
        this.h = str;
    }

    public void setSelectRoleID(String str) {
        this.f223a = str;
    }

    public void setVersion(String str) {
        this.f = str;
    }

    public void setWakeupWord(String str) {
        this.b = str;
    }
}
