package com.tencent.wecarspeech.sdk;

import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASIflytekManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f187a = LogUtils.GLOBAL_LOG_TAG + TASIflytekManager.class.getSimpleName();
    private static volatile TASIflytekManager b;
    private IIflytekModeClient c;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IIflytekModeClient {
        int getIFlyTekMicGain();

        int getIFlyTekRecordMode();

        void setIFlyTekMicGain(int i);

        void switchIFlyTekRecordMode(int i);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class IflytekModeConstant {
        public static final int FUNC_MODE_NOISECLEAN = 1;
        public static final int FUNC_MODE_WAKEUP = 3;
    }

    private TASIflytekManager() {
        c.a().a(TASIflytekManager.class.getSimpleName(), new c.a() { // from class: com.tencent.wecarspeech.sdk.TASIflytekManager.1
            @Override // com.tencent.wecarspeech.sdk.c.a
            public void a(boolean z) {
                LogUtils.t(TASIflytekManager.f187a, "+onSdkServiceConnectEvent, connected:" + z);
                if (TASIflytekManager.this.c != null) {
                    a.a().a(ActionCallbackDef.ACTION_IFLYTEK_SET_ENABLED, new byte[0]);
                }
                LogUtils.t(TASIflytekManager.f187a, "-onSdkServiceConnectEvent, connected:" + z);
            }

            @Override // com.tencent.wecarspeech.sdk.c.a
            public byte[] a(String str, String str2, byte[] bArr, int i) {
                if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_IFLYTEK_EVENT)) {
                    return TASIflytekManager.this.a(str, bArr);
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] a(String str, byte[] bArr) {
        int i;
        int i2;
        int i3;
        int i4;
        String str2;
        String str3;
        String str4;
        StringBuilder sb;
        String str5;
        String str6;
        String str7;
        String str8 = f187a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("+handlerIflytekModeEventFocus(Caller:");
        sb2.append(str);
        sb2.append(" ,data:");
        sb2.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str8, sb2.toString());
        if (bArr == null) {
            return null;
        }
        if (this.c == null) {
            str6 = f187a;
            str7 = "-callback mIIflytekModeClient == null";
        } else {
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                i = jSONObject.optInt(FocusCallbackDef.EXTRA_K_IFLYTEK_EVENT, -1);
                try {
                    i2 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_IFLYTEK_MODE_VALUE, -1);
                    try {
                        i3 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_IFLYTEK_GAIN_VALUE, -1);
                    } catch (JSONException e) {
                        e = e;
                        LogUtils.e(f187a, e.toString());
                        i3 = -1;
                        if (i == -1) {
                        }
                        LogUtils.w(f187a, "handlerIflytekModeEventFocus, audioEvent == " + i);
                        switch (i) {
                        }
                        if (i4 == -1) {
                        }
                    }
                } catch (JSONException e2) {
                    e = e2;
                    i2 = -1;
                }
            } catch (JSONException e3) {
                e = e3;
                i = -1;
                i2 = -1;
            }
            if (i == -1) {
                LogUtils.w(f187a, "handlerIflytekModeEventFocus return, audioEvent == -1");
            }
            LogUtils.w(f187a, "handlerIflytekModeEventFocus, audioEvent == " + i);
            switch (i) {
                case 0:
                    LogUtils.t(f187a, "==+switchIFlyTekRecordMode, mode=" + i2);
                    if (i2 != -1) {
                        this.c.switchIFlyTekRecordMode(i2);
                    }
                    str2 = f187a;
                    str3 = "==-switchIFlyTekRecordMode";
                    LogUtils.t(str2, str3);
                    i4 = -1;
                    break;
                case 1:
                    LogUtils.t(f187a, "==+setIFlyTekMicGain, gain=" + i3);
                    if (i3 != -1) {
                        this.c.setIFlyTekMicGain(i3);
                    }
                    str2 = f187a;
                    str3 = "==-setIFlyTekMicGain";
                    LogUtils.t(str2, str3);
                    i4 = -1;
                    break;
                case 2:
                    LogUtils.t(f187a, "==+getIFlyTekRecordMode");
                    i4 = this.c.getIFlyTekRecordMode();
                    str4 = f187a;
                    sb = new StringBuilder();
                    str5 = "==-getIFlyTekRecordMode, mode_ret:";
                    sb.append(str5);
                    sb.append(i4);
                    LogUtils.t(str4, sb.toString());
                    break;
                case 3:
                    LogUtils.t(f187a, "==+getIFlyTekMicGain");
                    i4 = this.c.getIFlyTekMicGain();
                    str4 = f187a;
                    sb = new StringBuilder();
                    str5 = "==-getIFlyTekMicGain, gain_ret:";
                    sb.append(str5);
                    sb.append(i4);
                    LogUtils.t(str4, sb.toString());
                    break;
                default:
                    i4 = -1;
                    break;
            }
            if (i4 == -1) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, i4);
                } catch (JSONException e4) {
                    LogUtils.e(f187a, e4.toString());
                }
                LogUtils.t(f187a, "-handlerAutioEventFocus(Caller:" + str + " ,resut:" + i4);
                return jSONObject2.toString().getBytes();
            }
            str6 = f187a;
            str7 = "-handlerAutioEventFocus(Caller:" + str + " ,data:" + new String(bArr);
        }
        LogUtils.t(str6, str7);
        return null;
    }

    public static TASIflytekManager getInstance() {
        if (b == null) {
            synchronized (TASIflytekManager.class) {
                if (b == null) {
                    b = new TASIflytekManager();
                }
            }
        }
        return b;
    }

    public void setIIflytekModeClient(IIflytekModeClient iIflytekModeClient) {
        String str = f187a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setIIflytekModeClient, videoClient:");
        sb.append(iIflytekModeClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.c = iIflytekModeClient;
        a.a().a(ActionCallbackDef.ACTION_IFLYTEK_SET_ENABLED, new byte[0]);
    }
}
