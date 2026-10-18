package com.tencent.wecarspeech.sdk.manager;

import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.api.IRadioClient;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SSARadioManager extends b {
    private static volatile SSARadioManager b;
    private IRadioClient<ActionRet> c;

    private SSARadioManager() {
    }

    public static SSARadioManager getInstance() {
        if (b == null) {
            synchronized (SSARadioManager.class) {
                if (b == null) {
                    b = new SSARadioManager();
                }
            }
        }
        return b;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(this.f207a, "+onSdkServiceConnectEvent, connected:" + z);
        if (this.c != null) {
            a.a().a(ActionCallbackDef.ACTION_RADIO_SET_ENABLED, new byte[0]);
        }
        LogUtils.t(this.f207a, "-onSdkServiceConnectEvent, connected:" + z);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011e  */
    @Override // com.tencent.wecarspeech.sdk.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        String str3;
        String str4;
        String str5;
        ActionRet closeApp;
        String str6;
        String str7;
        String str8;
        StringBuilder sb;
        String str9;
        String str10;
        StringBuilder sb2;
        String str11;
        String str12 = this.f207a;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("+callback, caller:");
        sb3.append(str);
        sb3.append(" ,caller back:");
        sb3.append(str2);
        sb3.append(" ,data:");
        sb3.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str12, sb3.toString());
        String str13 = null;
        if (!str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_RADIO)) {
            str10 = this.f207a;
            sb2 = new StringBuilder();
            sb2.append("-callback, caller:");
            sb2.append(str);
            sb2.append(" ,caller back:");
            sb2.append(str2);
            sb2.append(" ,data:");
            if (bArr != null) {
                str11 = new String(bArr);
                sb2.append(str11);
                LogUtils.t(str10, sb2.toString());
                return null;
            }
            str11 = "null";
            sb2.append(str11);
            LogUtils.t(str10, sb2.toString());
            return null;
        }
        if (this.c == null) {
            LogUtils.w(this.f207a, "handlerRadioFocus return, mIRadioClient == null");
            str10 = this.f207a;
            sb2 = new StringBuilder();
            sb2.append("-callback, caller:");
            sb2.append(str);
            sb2.append(" ,caller back:");
            sb2.append(str2);
            sb2.append(" ,data:");
            if (bArr != null) {
                str11 = new String(bArr);
                sb2.append(str11);
                LogUtils.t(str10, sb2.toString());
                return null;
            }
            str11 = "null";
            sb2.append(str11);
            LogUtils.t(str10, sb2.toString());
            return null;
        }
        if (bArr == null || bArr.length <= 0) {
            str3 = null;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                str3 = jSONObject.optString(FocusCallbackDef.EXTRA_K_RADIO_NAME);
                try {
                    str13 = jSONObject.optString(FocusCallbackDef.EXTRA_K_RADIO_CODE);
                } catch (JSONException e) {
                    e = e;
                    LogUtils.e(this.f207a, e.toString());
                    ActionRet create = ActionRet.create(-1);
                    if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_FM)) {
                    }
                    String str14 = this.f207a;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("-callback, caller:");
                    sb4.append(str);
                    sb4.append(" ,caller back:");
                    sb4.append(str2);
                    sb4.append(" ,data:");
                    sb4.append(bArr != null ? "null" : new String(bArr));
                    LogUtils.t(str14, sb4.toString());
                    return a(create);
                }
            } catch (JSONException e2) {
                e = e2;
                str3 = null;
            }
        }
        ActionRet create2 = ActionRet.create(-1);
        if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_FM)) {
            if (str13 != null) {
                LogUtils.t(this.f207a, "==+playFMChannel(radioCode:" + str13 + ")");
                create2 = this.c.playFMChannel(str13);
                str8 = this.f207a;
                sb = new StringBuilder();
                str9 = "==-playFMChannel(radioCode:";
                sb.append(str9);
                sb.append(str13);
                sb.append(")");
                LogUtils.t(str8, sb.toString());
            }
            str6 = this.f207a;
            str7 = "handlerRadioFocus return, radioCode == null";
            LogUtils.w(str6, str7);
        } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_AM)) {
            if (str13 != null) {
                LogUtils.t(this.f207a, "==+playAMChannel(radioCode:" + str13 + ")");
                create2 = this.c.playAMChannel(str13);
                str8 = this.f207a;
                sb = new StringBuilder();
                str9 = "==-playAMChannel(radioCode:";
                sb.append(str9);
                sb.append(str13);
                sb.append(")");
                LogUtils.t(str8, sb.toString());
            }
            str6 = this.f207a;
            str7 = "handlerRadioFocus return, radioCode == null";
            LogUtils.w(str6, str7);
        } else if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_CHANNEL)) {
            if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_OPEN)) {
                LogUtils.t(this.f207a, "==+openApp()");
                closeApp = this.c.openApp(str3);
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_CLOSE)) {
                LogUtils.t(this.f207a, "==+openApp()");
                closeApp = this.c.closeApp(str3);
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_START_SCAN)) {
                LogUtils.t(this.f207a, "==+startAutoScan()");
                create2 = this.c.startAutoScan();
                str4 = this.f207a;
                str5 = "==-startAutoScan()";
                LogUtils.t(str4, str5);
            }
            create2 = closeApp;
            str4 = this.f207a;
            str5 = "==-openApp()";
            LogUtils.t(str4, str5);
        } else if (str3 == null && str13 == null) {
            str6 = this.f207a;
            str7 = "handlerRadioFocus return, radioChannel == null and radioCode == null";
            LogUtils.w(str6, str7);
        } else {
            LogUtils.t(this.f207a, "==+playChannel(radioChannel:" + str3 + ", radioCode:" + str13 + " )");
            create2 = this.c.playChannel(str3, str13);
            LogUtils.t(this.f207a, "==-playChannel(radioChannel:" + str3 + ", radioCode:" + str13 + " )");
        }
        String str142 = this.f207a;
        StringBuilder sb42 = new StringBuilder();
        sb42.append("-callback, caller:");
        sb42.append(str);
        sb42.append(" ,caller back:");
        sb42.append(str2);
        sb42.append(" ,data:");
        sb42.append(bArr != null ? "null" : new String(bArr));
        LogUtils.t(str142, sb42.toString());
        return a(create2);
    }

    public void setRadioClient(IRadioClient<ActionRet> iRadioClient) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setRadioClient");
        sb.append(iRadioClient == null ? "" : ":null");
        LogUtils.t(str, sb.toString());
        this.c = iRadioClient;
        a.a().a(ActionCallbackDef.ACTION_RADIO_SET_ENABLED, new byte[0]);
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setRadioClient");
        sb2.append(iRadioClient == null ? "" : ":null");
        LogUtils.t(str2, sb2.toString());
    }
}
