package com.tencent.wecarspeech.sdk;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASSettingPageManager {
    public static final String TAG = "TASSettingPageManager";

    /* renamed from: a, reason: collision with root package name */
    private CopyOnWriteArrayList<RoleChangeListener> f197a;
    private CopyOnWriteArrayList<WakeupWordChangeListener> b;
    private CopyOnWriteArrayList<DayNightModeListener> c;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface DayNightModeListener {
        void onFailed();

        void onSuccess();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface RoleChangeListener {
        void onChangeRole(String str);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SettingPageInfo {
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

        /* renamed from: a, reason: collision with root package name */
        private String f199a;
        private String b;
        private boolean c;
        private int d;
        private List<PreferAppModel> e;
        private String f;
        private String g;
        private String h;

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class PreferAppModel {

            /* renamed from: a, reason: collision with root package name */
            private String f200a;
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
                return this.f200a;
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
                this.f200a = str;
            }
        }

        public static SettingPageInfo fromJson(String str) {
            LogUtils.t(TASSettingPageManager.TAG, "SettingPageInfo, fromJson: " + str);
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
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            LogUtils.t(TASSettingPageManager.TAG, "SettingPageInfo, fromJson end");
            return settingPageInfo;
        }

        @Nullable
        public static String toJson(SettingPageInfo settingPageInfo) {
            LogUtils.t(TASSettingPageManager.TAG, "SettingPageInfo, toJson start");
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
            } catch (JSONException e) {
                e.printStackTrace();
            }
            LogUtils.t(TASSettingPageManager.TAG, "SettingPageInfo, toJson: " + jSONObject.toString());
            return jSONObject.toString();
        }

        public int getDayNightMode() {
            return this.d;
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
            return this.f199a;
        }

        public String getVersion() {
            return this.f;
        }

        public String getWakeupWord() {
            return this.b;
        }

        public boolean isEnableFloatBtn() {
            return this.c;
        }

        public void setDayNightMode(int i) {
            this.d = i;
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
            this.f199a = str;
        }

        public void setVersion(String str) {
            this.f = str;
        }

        public void setWakeupWord(String str) {
            this.b = str;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface WakeupWordChangeListener {
        void onChangeWakeupWord(String str);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final TASSettingPageManager f201a = new TASSettingPageManager();
    }

    private TASSettingPageManager() {
        this.f197a = new CopyOnWriteArrayList<>();
        this.b = new CopyOnWriteArrayList<>();
        this.c = new CopyOnWriteArrayList<>();
        c.a().a(TASSettingPageManager.class.getSimpleName(), new c.a() { // from class: com.tencent.wecarspeech.sdk.TASSettingPageManager.1
            @Override // com.tencent.wecarspeech.sdk.c.a
            public void a(boolean z) {
                LogUtils.d(TASSettingPageManager.TAG, "+onSdkServiceConnectEvent, connected:" + z);
                LogUtils.t(TASSettingPageManager.TAG, "-onSdkServiceConnectEvent, connected:" + z);
            }

            @Override // com.tencent.wecarspeech.sdk.c.a
            public byte[] a(String str, String str2, byte[] bArr, int i) {
                String str3 = TASSettingPageManager.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("+callback, caller:");
                sb.append(str);
                sb.append(" ,caller back:");
                sb.append(str2);
                sb.append(" ,data:");
                sb.append(bArr == null ? "null" : new String(bArr));
                LogUtils.w(str3, sb.toString());
                JSONObject jSONObject = null;
                if (bArr != null) {
                    try {
                        jSONObject = new JSONObject(new String(bArr));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SETTING_SET_ROLE)) {
                    String optString = jSONObject == null ? "" : jSONObject.optString("e_role_id");
                    LogUtils.w(TASSettingPageManager.TAG, "set role: " + optString);
                    if (!TextUtils.isEmpty(optString)) {
                        Iterator it = TASSettingPageManager.this.f197a.iterator();
                        while (it.hasNext()) {
                            ((RoleChangeListener) it.next()).onChangeRole(optString);
                        }
                    }
                } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SETTING_SET_WAKEUP_WORD)) {
                    String optString2 = jSONObject == null ? "" : jSONObject.optString("e_wakeup_word");
                    LogUtils.w(TASSettingPageManager.TAG, "set wakeup word: " + optString2);
                    if (!TextUtils.isEmpty(optString2)) {
                        Iterator it2 = TASSettingPageManager.this.b.iterator();
                        while (it2.hasNext()) {
                            ((WakeupWordChangeListener) it2.next()).onChangeWakeupWord(optString2);
                        }
                    }
                } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SETTING_SET_MODE)) {
                    boolean z = jSONObject != null && jSONObject.optBoolean(FocusCallbackDef.EXTRA_K_SET_MODE_RESULT);
                    LogUtils.w(TASSettingPageManager.TAG, "set mode result: " + z);
                    Iterator it3 = TASSettingPageManager.this.c.iterator();
                    while (it3.hasNext()) {
                        DayNightModeListener dayNightModeListener = (DayNightModeListener) it3.next();
                        if (z) {
                            dayNightModeListener.onSuccess();
                        } else {
                            dayNightModeListener.onFailed();
                        }
                    }
                }
                return new byte[0];
            }
        });
    }

    public static TASSettingPageManager getInstance() {
        return a.f201a;
    }

    public void addDayNightModeListener(DayNightModeListener dayNightModeListener) {
        if (this.c.contains(dayNightModeListener)) {
            return;
        }
        this.c.add(dayNightModeListener);
    }

    public void addRoleChangerListener(RoleChangeListener roleChangeListener) {
        if (this.f197a.contains(roleChangeListener)) {
            return;
        }
        this.f197a.add(roleChangeListener);
    }

    public void addWakeupWordChangeListener(WakeupWordChangeListener wakeupWordChangeListener) {
        if (this.b.contains(wakeupWordChangeListener)) {
            return;
        }
        this.b.add(wakeupWordChangeListener);
    }

    public String getHelpInfo() {
        LogUtils.t(TAG, "getHelpInfo");
        byte[] a2 = com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_HELP_GET_INFO, new byte[0]);
        if (a2 != null) {
            return new String(a2);
        }
        return null;
    }

    public SettingPageInfo getSettingPageInfo() {
        LogUtils.t(TAG, "getSettingPageInfo");
        byte[] a2 = com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_GET_PAGEINFO, new byte[0]);
        if (a2 != null) {
            return SettingPageInfo.fromJson(new String(a2));
        }
        return null;
    }

    @Deprecated
    public void openAbout(String str) {
        LogUtils.t(TAG, "+openAbout, pageType: " + str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ABOUT_PAGE, str);
        } catch (JSONException e) {
            LogUtils.e(TAG, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_ABOUT, jSONObject.toString().getBytes());
        LogUtils.t(TAG, "-openAbout, pageType:" + str);
    }

    public void openFeedBack() {
        LogUtils.t(TAG, "+openFeedBack");
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_OPEN_FEEDBACK, new byte[0]);
        LogUtils.t(TAG, "-openFeedBack");
    }

    public void openLaunchPage() {
        LogUtils.t(TAG, "+openLaunchPage");
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_OPEN_LAUNCH, new byte[0]);
        LogUtils.t(TAG, "-openLaunchPage");
    }

    public void setDayNightMode(int i) {
        LogUtils.t(TAG, "+setDayNightMode, mode: " + i);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_DAY_NIGHT_MODE, i);
        } catch (JSONException e) {
            LogUtils.e(TAG, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_DAY_NIGHT_MODE, jSONObject.toString().getBytes());
        LogUtils.t(TAG, "-setDayNightMode, mode:" + i);
    }

    @Deprecated
    public void setDayNightMode(int i, DayNightModeListener dayNightModeListener) {
        LogUtils.t(TAG, "+setDayNightMode, mode: " + i);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_DAY_NIGHT_MODE, i);
            if (dayNightModeListener != null) {
                this.c.add(dayNightModeListener);
                jSONObject.put(ActionCallbackDef.EXTRA_K_DAY_NIGHT_MODE_LISTENER, true);
            }
        } catch (JSONException e) {
            LogUtils.e(TAG, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_DAY_NIGHT_MODE, jSONObject.toString().getBytes());
        LogUtils.t(TAG, "-setDayNightMode, mode:" + i);
    }

    public void setFloatButtonEnable(boolean z) {
        LogUtils.t(TAG, "+setFloatButtonEnable, enable: " + z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_FLOAT_BUTTON_ENABLE, z);
        } catch (JSONException e) {
            LogUtils.e(TAG, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_FLOATBUTTON_ENABLE, jSONObject.toString().getBytes());
        LogUtils.t(TAG, "-setFloatButtonEnable, enable:" + z);
    }

    public void setPreferApp(String str, String str2) {
        LogUtils.t(TAG, "+setPrefer, type:" + str + " pkg: " + str2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_PREFER_TYPE, str);
            jSONObject.put(ActionCallbackDef.EXTRA_K_PREFER_PKG_NAME, str2);
        } catch (JSONException e) {
            LogUtils.e(TAG, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_PREFER_APP, jSONObject.toString().getBytes());
        LogUtils.t(TAG, "-setPrefer, type:" + str + " pkg: " + str2);
    }

    public void setRole(String str) {
        LogUtils.t(TAG, "+setRole, roleId: " + str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_role_id", str);
        } catch (JSONException e) {
            LogUtils.e(TAG, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_ROLE, jSONObject.toString().getBytes());
        LogUtils.t(TAG, "-setRole, roleId: " + str);
    }

    public String setWakeupWord(String str) {
        String str2;
        String jSONException;
        LogUtils.t(TAG, "+setWakeupWord, wakeupWord: " + str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_wakeup_word", str);
        } catch (JSONException e) {
            LogUtils.e(TAG, e.toString());
        }
        try {
            String string = new JSONObject(new String(com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_WAKEUP_WORD, jSONObject.toString().getBytes()))).getString(ActionCallbackDef.EXTRA_K_RESULT);
            LogUtils.i(TAG, "setWakeupWord result: " + string);
            return string;
        } catch (NullPointerException e2) {
            str2 = TAG;
            jSONException = e2.toString();
            LogUtils.e(str2, jSONException);
            LogUtils.t(TAG, "-setWakeupWord, wakeupWord: " + str);
            return "Exception";
        } catch (JSONException e3) {
            str2 = TAG;
            jSONException = e3.toString();
            LogUtils.e(str2, jSONException);
            LogUtils.t(TAG, "-setWakeupWord, wakeupWord: " + str);
            return "Exception";
        }
    }
}
