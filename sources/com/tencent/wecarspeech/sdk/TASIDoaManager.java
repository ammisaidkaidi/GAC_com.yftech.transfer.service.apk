package com.tencent.wecarspeech.sdk;

import android.support.annotation.NonNull;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASIDoaManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f185a = LogUtils.GLOBAL_LOG_TAG + TASIDoaManager.class.getSimpleName();
    private static volatile TASIDoaManager b;
    private IDoaClient c;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IDoaClient {
        int getMemoryValue(int i);

        int getMode();

        int getRegValue(int i);

        int setMemoryValue(int i, int i2);

        int setModeValue(int i);

        int setRegValue(int i, int i2);
    }

    private TASIDoaManager() {
        c.a().a(TASIDoaManager.class.getSimpleName(), new c.a() { // from class: com.tencent.wecarspeech.sdk.TASIDoaManager.1
            @Override // com.tencent.wecarspeech.sdk.c.a
            public void a(boolean z) {
                LogUtils.t(TASIDoaManager.f185a, "+onSdkServiceConnectEvent, connected:" + z);
                if (TASIDoaManager.this.c != null) {
                    a.a().a(ActionCallbackDef.ACTION_DOA_SET_ENABLED, new byte[0]);
                }
                LogUtils.t(TASIDoaManager.f185a, "-onSdkServiceConnectEvent, connected:" + z);
            }

            @Override // com.tencent.wecarspeech.sdk.c.a
            public byte[] a(String str, String str2, byte[] bArr, int i) {
                if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_DOA_EVENT)) {
                    return TASIDoaManager.this.a(str, bArr);
                }
                return null;
            }
        });
    }

    private int a(int i, int i2) {
        LogUtils.t(f185a, "==+setModeValue, mode=" + i2);
        if (i2 != -1) {
            i = this.c.setModeValue(i2);
        }
        LogUtils.t(f185a, "==-setModeValue");
        return i;
    }

    private int a(int i, int i2, int i3) {
        LogUtils.t(f185a, "==+setRegValue, addr=" + i2 + ", value=" + i3);
        if (i2 != -1 && i3 != -1) {
            i = this.c.setRegValue(i2, i3);
        }
        LogUtils.t(f185a, "==-setRegValue, ret:" + i);
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] a(String str, @NonNull byte[] bArr) {
        int i;
        int i2;
        int i3;
        int i4;
        int b2;
        String str2;
        String str3;
        LogUtils.t(f185a, "+handlerDoaModeEventFocus(Caller:" + str + " ,data:" + new String(bArr));
        if (this.c == null) {
            str2 = f185a;
            str3 = "-callback mIDoaClient == null";
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
                            LogUtils.e(f185a, e.toString());
                            i4 = -1;
                            LogUtils.w(f185a, "handlerDoaModeEventFocus, audioEvent == " + i);
                            switch (i) {
                            }
                            if (b2 != -1) {
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
                    LogUtils.e(f185a, e.toString());
                    i4 = -1;
                    LogUtils.w(f185a, "handlerDoaModeEventFocus, audioEvent == " + i);
                    switch (i) {
                    }
                    if (b2 != -1) {
                    }
                }
            } catch (JSONException e4) {
                e = e4;
                i = -1;
                i2 = -1;
            }
            LogUtils.w(f185a, "handlerDoaModeEventFocus, audioEvent == " + i);
            switch (i) {
                case 0:
                    b2 = b();
                    break;
                case 1:
                    b2 = a(-1, i2);
                    break;
                case 2:
                    b2 = b(-1, i3);
                    break;
                case 3:
                    b2 = a(-1, i3, i4);
                    break;
                case 4:
                    b2 = c(-1, i3);
                    break;
                case 5:
                    b2 = b(-1, i3, i4);
                    break;
                default:
                    b2 = -1;
                    break;
            }
            if (b2 != -1) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, b2);
                } catch (JSONException e5) {
                    LogUtils.e(f185a, e5.toString());
                }
                LogUtils.t(f185a, "-handlerDoaModeEventFocus(Caller:" + str + " ,resut:" + b2);
                return jSONObject2.toString().getBytes();
            }
            str2 = f185a;
            str3 = "-handlerDoaModeEventFocus(Caller:" + str + " ,data:" + new String(bArr);
        }
        LogUtils.t(str2, str3);
        return null;
    }

    private int b() {
        LogUtils.t(f185a, "==+getMode");
        int mode = this.c.getMode();
        LogUtils.t(f185a, "==-getMode");
        return mode;
    }

    private int b(int i, int i2) {
        LogUtils.t(f185a, "==+getRegValue, addr=" + i2);
        if (i2 != -1) {
            i = this.c.getRegValue(i2);
        }
        LogUtils.t(f185a, "==-getRegValue, mode_ret:" + i);
        return i;
    }

    private int b(int i, int i2, int i3) {
        LogUtils.t(f185a, "==+setMemoryValue, addr=" + i2 + ", value=" + i3);
        if (i2 != -1 && i3 != -1) {
            i = this.c.setMemoryValue(i2, i3);
        }
        LogUtils.t(f185a, "==-setMemoryValue, ret:" + i);
        return i;
    }

    private int c(int i, int i2) {
        LogUtils.t(f185a, "==+getMemoryValue ,addr=" + i2);
        if (i2 != -1) {
            i = this.c.getMemoryValue(i2);
        }
        LogUtils.t(f185a, "==-getMemoryValue, ret:" + i);
        return i;
    }

    public static TASIDoaManager getInstance() {
        if (b == null) {
            synchronized (TASIDoaManager.class) {
                if (b == null) {
                    b = new TASIDoaManager();
                }
            }
        }
        return b;
    }

    public void setIIDoaClient(IDoaClient iDoaClient) {
        String str = f185a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setIDoaClient, iDoaClient:");
        sb.append(iDoaClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.c = iDoaClient;
        a.a().a(ActionCallbackDef.ACTION_DOA_SET_ENABLED, new byte[0]);
    }
}
