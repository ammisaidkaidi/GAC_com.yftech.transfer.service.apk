package com.tencent.wecarspeech.sdk.manager;

import android.text.TextUtils;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.listener.DayNightModeListener;
import com.tencent.wecarspeech.sdk.listener.RoleChangeListener;
import com.tencent.wecarspeech.sdk.listener.WakeupWordChangeListener;
import com.tencent.wecarspeech.sdk.model.SettingPageInfo;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SSACustomPageManager extends b {
    private CopyOnWriteArrayList<RoleChangeListener> b;
    private CopyOnWriteArrayList<WakeupWordChangeListener> c;
    private CopyOnWriteArrayList<DayNightModeListener> d;

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final SSACustomPageManager f220a = new SSACustomPageManager();
    }

    private SSACustomPageManager() {
        this.b = new CopyOnWriteArrayList<>();
        this.c = new CopyOnWriteArrayList<>();
        this.d = new CopyOnWriteArrayList<>();
    }

    public static SSACustomPageManager getInstance() {
        return a.f220a;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.d(this.f207a, "+onSdkServiceConnectEvent, connected:" + z);
        LogUtils.t(this.f207a, "-onSdkServiceConnectEvent, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        String str3 = this.f207a;
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
            LogUtils.w(this.f207a, "set role: " + optString);
            if (!TextUtils.isEmpty(optString)) {
                Iterator<RoleChangeListener> it = this.b.iterator();
                while (it.hasNext()) {
                    it.next().onChangeRole(optString);
                }
            }
        } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SETTING_SET_WAKEUP_WORD)) {
            String optString2 = jSONObject == null ? "" : jSONObject.optString("e_wakeup_word");
            LogUtils.w(this.f207a, "set wakeup word: " + optString2);
            if (!TextUtils.isEmpty(optString2)) {
                Iterator<WakeupWordChangeListener> it2 = this.c.iterator();
                while (it2.hasNext()) {
                    it2.next().onChangeWakeupWord(optString2);
                }
            }
        } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SETTING_SET_MODE)) {
            boolean z = jSONObject != null && jSONObject.optBoolean(FocusCallbackDef.EXTRA_K_SET_MODE_RESULT);
            LogUtils.w(this.f207a, "set mode result: " + z);
            Iterator<DayNightModeListener> it3 = this.d.iterator();
            while (it3.hasNext()) {
                DayNightModeListener next = it3.next();
                if (z) {
                    next.onSuccess();
                } else {
                    next.onFailed();
                }
            }
        }
        return new byte[0];
    }

    public void addDayNightModeListener(DayNightModeListener dayNightModeListener) {
        if (this.d.contains(dayNightModeListener)) {
            return;
        }
        this.d.add(dayNightModeListener);
    }

    public void addRoleChangerListener(RoleChangeListener roleChangeListener) {
        if (this.b.contains(roleChangeListener)) {
            return;
        }
        this.b.add(roleChangeListener);
    }

    public void addWakeupWordChangeListener(WakeupWordChangeListener wakeupWordChangeListener) {
        if (this.c.contains(wakeupWordChangeListener)) {
            return;
        }
        this.c.add(wakeupWordChangeListener);
    }

    public void enableDuplexSwitch(boolean z) {
        LogUtils.t(this.f207a, "+enableDuplexSwitch, enable: " + z);
        a(ActionCallbackDef.EXTRA_K_DUPLEX_BUTTON_ENABLE, z);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_DUPEX_STATE, a());
        LogUtils.t(this.f207a, "-enableDuplexSwitch, enable:" + z);
    }

    public void enableShowValidResult(boolean z) {
        LogUtils.t(this.f207a, "+enableShowValidResult, enable: " + z);
        a(ActionCallbackDef.EXTRA_K_DUPLEX_VALID_RESULT, z);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_DUPEX_VALID_RESULT, a());
        LogUtils.t(this.f207a, "-enableShowValidResult, enable:" + z);
    }

    public String getHelpInfo() {
        LogUtils.t(this.f207a, "getHelpInfo");
        byte[] a2 = com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_HELP_GET_INFO, new byte[0]);
        if (a2 != null) {
            return new String(a2);
        }
        return null;
    }

    public SettingPageInfo getSettingPageInfo() {
        LogUtils.t(this.f207a, "getSettingPageInfo");
        byte[] a2 = com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_GET_PAGEINFO, new byte[0]);
        if (a2 != null) {
            return SettingPageInfo.fromJson(new String(a2));
        }
        return null;
    }

    public void openFeedBack() {
        LogUtils.t(this.f207a, "+openFeedBack");
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_OPEN_FEEDBACK, new byte[0]);
        LogUtils.t(this.f207a, "-openFeedBack");
    }

    public void openLaunchPage() {
        LogUtils.t(this.f207a, "+openLaunchPage");
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_OPEN_LAUNCH, new byte[0]);
        LogUtils.t(this.f207a, "-openLaunchPage");
    }

    public void setDayNightMode(int i) {
        LogUtils.t(this.f207a, "+setDayNightMode, mode: " + i);
        a(ActionCallbackDef.EXTRA_K_DAY_NIGHT_MODE, i);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_DAY_NIGHT_MODE, a());
        LogUtils.t(this.f207a, "-setDayNightMode, mode:" + i);
    }

    public void setDuplexActiveTime(int i) {
        LogUtils.t(this.f207a, "+setDuplexActiveTime, times: " + i);
        a(ActionCallbackDef.EXTRA_K_DUPLEX_ACTIVE_TIME, i);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_DUPEX_ACTIVE_TIME, a());
        LogUtils.t(this.f207a, "-setDuplexActiveTime, times:" + i);
    }

    public void setFloatButtonEnable(boolean z) {
        LogUtils.t(this.f207a, "+setFloatButtonEnable, enable: " + z);
        a(ActionCallbackDef.EXTRA_K_FLOAT_BUTTON_ENABLE, z);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_FLOATBUTTON_ENABLE, a());
        LogUtils.t(this.f207a, "-setFloatButtonEnable, enable:" + z);
    }

    public void setPreferApp(String str, String str2) {
        LogUtils.t(this.f207a, "+setPrefer, type:" + str + " pkg: " + str2);
        a(ActionCallbackDef.EXTRA_K_PREFER_TYPE, str);
        a(ActionCallbackDef.EXTRA_K_PREFER_PKG_NAME, str2);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_PREFER_APP, a());
        LogUtils.t(this.f207a, "-setPrefer, type:" + str + " pkg: " + str2);
    }

    public void setRole(String str) {
        LogUtils.t(this.f207a, "+setRole, roleId: " + str);
        a("e_role_id", str);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_ROLE, a());
        LogUtils.t(this.f207a, "-setRole, roleId: " + str);
    }

    public String setWakeupWord(String str) {
        String str2;
        String jSONException;
        LogUtils.t(this.f207a, "+setWakeupWord, wakeupWord: " + str);
        a("e_wakeup_word", str);
        try {
            String string = new JSONObject(new String(com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_SETTING_SET_WAKEUP_WORD, a()))).getString(ActionCallbackDef.EXTRA_K_RESULT);
            LogUtils.i(this.f207a, "setWakeupWord result: " + string);
            return string;
        } catch (NullPointerException e) {
            str2 = this.f207a;
            jSONException = e.toString();
            LogUtils.e(str2, jSONException);
            LogUtils.t(this.f207a, "-setWakeupWord, wakeupWord: " + str);
            return "Exception";
        } catch (JSONException e2) {
            str2 = this.f207a;
            jSONException = e2.toString();
            LogUtils.e(str2, jSONException);
            LogUtils.t(this.f207a, "-setWakeupWord, wakeupWord: " + str);
            return "Exception";
        }
    }
}
