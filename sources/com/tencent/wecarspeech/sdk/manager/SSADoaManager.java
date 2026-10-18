package com.tencent.wecarspeech.sdk.manager;

import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.api.IDoaClient;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class SSADoaManager extends b {
    private static volatile SSADoaManager b;
    private IDoaClient c;

    private SSADoaManager() {
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0195  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] a(String str, byte[] bArr) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        String str2;
        String str3;
        String str4;
        StringBuilder sb;
        String str5;
        String str6;
        String sb2;
        String str7 = this.f207a;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("+handlerDoaModeEventFocus(Caller:");
        sb3.append(str);
        sb3.append(" ,data:");
        sb3.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str7, sb3.toString());
        if (bArr == null) {
            return null;
        }
        if (this.c == null) {
            str6 = this.f207a;
            sb2 = "-callback mIDoaClient == null";
        } else {
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                i = jSONObject.optInt(FocusCallbackDef.EXTRA_K_DOA_EVENT, -1);
                try {
                    i2 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_DOA_MODE, -1);
                    try {
                        i3 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_DOA_ADDR, -1);
                        try {
                            i4 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_DOA_VALUE, -1);
                        } catch (JSONException e) {
                            e = e;
                            LogUtils.e(this.f207a, e.toString());
                            i4 = -1;
                            if (i == -1) {
                            }
                            LogUtils.w(this.f207a, "handlerDoaModeEventFocus, audioEvent == " + i);
                            switch (i) {
                            }
                            if (i5 != -1) {
                            }
                        }
                    } catch (JSONException e2) {
                        e = e2;
                        i3 = -1;
                    }
                } catch (JSONException e3) {
                    e = e3;
                    i2 = -1;
                    i3 = i2;
                    LogUtils.e(this.f207a, e.toString());
                    i4 = -1;
                    if (i == -1) {
                    }
                    LogUtils.w(this.f207a, "handlerDoaModeEventFocus, audioEvent == " + i);
                    switch (i) {
                    }
                    if (i5 != -1) {
                    }
                }
            } catch (JSONException e4) {
                e = e4;
                i = -1;
                i2 = -1;
            }
            if (i == -1) {
                LogUtils.w(this.f207a, "handlerDoaModeEventFocus return, audioEvent == -1");
            }
            LogUtils.w(this.f207a, "handlerDoaModeEventFocus, audioEvent == " + i);
            switch (i) {
                case 0:
                    LogUtils.t(this.f207a, "==+getMode");
                    this.c.getMode();
                    str2 = this.f207a;
                    str3 = "==-getMode";
                    LogUtils.t(str2, str3);
                    i5 = -1;
                    break;
                case 1:
                    LogUtils.t(this.f207a, "==+setModeValue, mode=" + i2);
                    if (i2 != -1) {
                        this.c.setModeValue(i2);
                    }
                    str2 = this.f207a;
                    str3 = "==-setModeValue";
                    LogUtils.t(str2, str3);
                    i5 = -1;
                    break;
                case 2:
                    LogUtils.t(this.f207a, "==+getRegValue, addr=" + i3);
                    i5 = i3 != -1 ? this.c.getRegValue(i3) : -1;
                    str4 = this.f207a;
                    sb = new StringBuilder();
                    str5 = "==-getRegValue, mode_ret:";
                    sb.append(str5);
                    sb.append(i5);
                    LogUtils.t(str4, sb.toString());
                    break;
                case 3:
                    LogUtils.t(this.f207a, "==+setRegValue, addr=" + i3 + ", value=" + i4);
                    i5 = (i3 == -1 || i4 == -1) ? -1 : this.c.setRegValue(i3, i4);
                    str4 = this.f207a;
                    sb = new StringBuilder();
                    str5 = "==-setRegValue, ret:";
                    sb.append(str5);
                    sb.append(i5);
                    LogUtils.t(str4, sb.toString());
                    break;
                case 4:
                    LogUtils.t(this.f207a, "==+getMemoryValue ,addr=" + i3);
                    i5 = i3 != -1 ? this.c.getMemoryValue(i3) : -1;
                    str4 = this.f207a;
                    sb = new StringBuilder();
                    str5 = "==-getMemoryValue, ret:";
                    sb.append(str5);
                    sb.append(i5);
                    LogUtils.t(str4, sb.toString());
                    break;
                case 5:
                    LogUtils.t(this.f207a, "==+setMemoryValue, addr=" + i3 + ", value=" + i4);
                    i5 = (i3 == -1 || i4 == -1) ? -1 : this.c.setMemoryValue(i3, i4);
                    str4 = this.f207a;
                    sb = new StringBuilder();
                    str5 = "==-setMemoryValue, ret:";
                    sb.append(str5);
                    sb.append(i5);
                    LogUtils.t(str4, sb.toString());
                    break;
                default:
                    i5 = -1;
                    break;
            }
            if (i5 != -1) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, i5);
                } catch (JSONException e5) {
                    LogUtils.e(this.f207a, e5.toString());
                }
                LogUtils.t(this.f207a, "-handlerDoaModeEventFocus(Caller:" + str + " ,resut:" + i5);
                return jSONObject2.toString().getBytes();
            }
            str6 = this.f207a;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("-handlerDoaModeEventFocus(Caller:");
            sb4.append(str);
            sb4.append(" ,data:");
            sb4.append(bArr == null ? "null" : new String(bArr));
            sb2 = sb4.toString();
        }
        LogUtils.t(str6, sb2);
        return null;
    }

    public static SSADoaManager getInstance() {
        if (b == null) {
            synchronized (SSADoaManager.class) {
                if (b == null) {
                    b = new SSADoaManager();
                }
            }
        }
        return b;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(this.f207a, "+onSdkServiceConnectEvent, connected:" + z);
        if (this.c != null) {
            a.a().a(ActionCallbackDef.ACTION_DOA_SET_ENABLED, new byte[0]);
        }
        LogUtils.t(this.f207a, "-onSdkServiceConnectEvent, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_DOA_EVENT)) {
            return a(str, bArr);
        }
        return null;
    }

    public void setIIDoaClient(IDoaClient iDoaClient) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setIDoaClient, iDoaClient:");
        sb.append(iDoaClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.c = iDoaClient;
        a.a().a(ActionCallbackDef.ACTION_DOA_SET_ENABLED, new byte[0]);
    }
}
