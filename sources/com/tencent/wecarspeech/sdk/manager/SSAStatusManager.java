package com.tencent.wecarspeech.sdk.manager;

import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.listener.ISpeechStatusListener;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SSAStatusManager extends b {
    private static final String b = LogUtils.GLOBAL_LOG_TAG + SSAStatusManager.class.getSimpleName();
    private static volatile SSAStatusManager c;
    private CopyOnWriteArrayList<ISpeechStatusListener> d = new CopyOnWriteArrayList<>();

    private SSAStatusManager() {
    }

    private void a(String str, byte[] bArr) {
        LogUtils.i(b, "handleStatusCallback");
        if (bArr != null) {
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                int optInt = jSONObject.optInt(FocusCallbackDef.EXTRA_K_STATUS_TYPE);
                int optInt2 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_STATUS_CODE);
                Iterator<ISpeechStatusListener> it = this.d.iterator();
                while (it.hasNext()) {
                    it.next().onSpeechStatusCallBack(optInt, optInt2);
                }
            } catch (JSONException e) {
                LogUtils.e(b, e.toString());
            }
        }
    }

    public static SSAStatusManager getInstance() {
        if (c == null) {
            synchronized (SSAStatusManager.class) {
                if (c == null) {
                    c = new SSAStatusManager();
                }
            }
        }
        return c;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        if (!z || this.d.size() <= 0) {
            return;
        }
        a.a().a(ActionCallbackDef.ACTION_STATUS_ENABLE, new byte[0]);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        if (str2.equals(FocusCallbackDef.CALLBACK_STATUS_SPEECH_STATUS)) {
            a(str, bArr);
        }
        return new byte[0];
    }

    public void registerSpeechStatusListener(ISpeechStatusListener iSpeechStatusListener) {
        String str = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+registerSpeechStatusListener, listener:");
        sb.append(iSpeechStatusListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.d.contains(iSpeechStatusListener)) {
            this.d.add(iSpeechStatusListener);
            a.a().a(ActionCallbackDef.ACTION_STATUS_ENABLE, new byte[0]);
        }
        String str2 = b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("+registerSpeechStatusListener, listener:");
        sb2.append(iSpeechStatusListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void unregisterSpeechStatusListener(ISpeechStatusListener iSpeechStatusListener) {
        String str = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+unregisterSpeechStatusListener, listener:");
        sb.append(iSpeechStatusListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.d.contains(iSpeechStatusListener)) {
            this.d.remove(iSpeechStatusListener);
        }
        String str2 = b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("+unregisterSpeechStatusListener, listener:");
        sb2.append(iSpeechStatusListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }
}
