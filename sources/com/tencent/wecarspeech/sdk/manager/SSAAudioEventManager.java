package com.tencent.wecarspeech.sdk.manager;

import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.api.IAudioEventListener;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class SSAAudioEventManager extends b {
    private static volatile SSAAudioEventManager b;
    private CopyOnWriteArrayList<IAudioEventListener> c = new CopyOnWriteArrayList<>();
    private String d;
    private boolean e;

    private SSAAudioEventManager() {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] a(String str, byte[] bArr) {
        int i;
        int i2;
        Iterator<IAudioEventListener> it;
        int i3;
        String str2;
        String str3;
        String str4 = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+handlerAutioEventFocus(Caller:");
        sb.append(str);
        sb.append(" ,data:");
        sb.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str4, sb.toString());
        if (bArr == null) {
            return null;
        }
        boolean z = true;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            i = jSONObject.optInt(FocusCallbackDef.EXTRA_K_EVENT, -1);
            try {
                i2 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_EVENT_TYPE, -1);
                if (i == 11) {
                    try {
                        z = jSONObject.optBoolean(FocusCallbackDef.EXTRA_K_AUDIO_FOCUS_ABANDON_RESTORE_FLAG, true);
                    } catch (JSONException e) {
                        e = e;
                        LogUtils.e(this.f207a, e.toString());
                        if (i == -1) {
                        }
                        LogUtils.w(this.f207a, "handlerAudioEventFocus, audioEvent == " + i);
                        it = this.c.iterator();
                        i3 = -1;
                        while (it.hasNext()) {
                        }
                        if (i3 != -1) {
                        }
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
            LogUtils.w(this.f207a, "handlerAudioEventFocus return, audioEvent == -1");
        }
        LogUtils.w(this.f207a, "handlerAudioEventFocus, audioEvent == " + i);
        it = this.c.iterator();
        i3 = -1;
        while (it.hasNext()) {
            IAudioEventListener next = it.next();
            switch (i) {
                case 0:
                    LogUtils.t(this.f207a, "==+onAsrStartTipBegin");
                    next.onAsrStartTipBegin();
                    str2 = this.f207a;
                    str3 = "==-onAsrStartTipBegin";
                    break;
                case 1:
                    LogUtils.t(this.f207a, "==+onAsrStartTipEnd");
                    next.onAsrStartTipEnd();
                    str2 = this.f207a;
                    str3 = "==-onAsrStartTipEnd";
                    break;
                case 2:
                    LogUtils.t(this.f207a, "==+onAsrBegin");
                    next.onAsrBegin();
                    str2 = this.f207a;
                    str3 = "==-onAsrBegin";
                    break;
                case 3:
                    LogUtils.t(this.f207a, "==+onAsrEnd");
                    next.onAsrEnd();
                    str2 = this.f207a;
                    str3 = "==-onAsrEnd";
                    break;
                case 4:
                    LogUtils.t(this.f207a, "==+onTtsBegin");
                    next.onTtsBegin();
                    str2 = this.f207a;
                    str3 = "==-onTtsBegin";
                    break;
                case 5:
                    LogUtils.t(this.f207a, "==+onTtsEnd");
                    next.onTtsEnd();
                    str2 = this.f207a;
                    str3 = "==-onTtsEnd";
                    break;
                case 6:
                    LogUtils.t(this.f207a, "==+onMusicPlay");
                    next.onMusicPlay();
                    str2 = this.f207a;
                    str3 = "==-onMusicPlay";
                    break;
                case 7:
                    LogUtils.t(this.f207a, "==+onMusicPause");
                    next.onMusicPause();
                    str2 = this.f207a;
                    str3 = "==-onMusicPause";
                    break;
                case 8:
                    LogUtils.t(this.f207a, "==+onCallBegin");
                    next.onCallBegin();
                    str2 = this.f207a;
                    str3 = "==-onCallBegin";
                    break;
                case 9:
                    LogUtils.t(this.f207a, "==+onCallEnd");
                    next.onCallEnd();
                    str2 = this.f207a;
                    str3 = "==-onCallEnd";
                    break;
                case 10:
                    LogUtils.t(this.f207a, "==+onRequestAudioFocus");
                    i3 = next.onRequestAudioFocus(i2);
                    str2 = this.f207a;
                    str3 = "==-onRequestAudioFocus";
                    break;
                case 11:
                    LogUtils.t(this.f207a, "==+onAbandonAudioFocus restore = " + z);
                    i3 = next.onAbandonAudioFocus(z, i2);
                    str2 = this.f207a;
                    str3 = "==-onAbandonAudioFocus restore = " + z;
                    break;
            }
            LogUtils.t(str2, str3);
        }
        if (i3 != -1) {
            String str5 = this.f207a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-handlerAutioEventFocus(Caller:");
            sb2.append(str);
            sb2.append(" ,data:");
            sb2.append(bArr == null ? "null" : new String(bArr));
            LogUtils.t(str5, sb2.toString());
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, i3);
        } catch (JSONException e4) {
            LogUtils.e(this.f207a, e4.toString());
        }
        LogUtils.t(this.f207a, "-handlerAutioEventFocus(Caller:" + str + " ,resut:" + i3);
        return jSONObject2.toString().getBytes();
    }

    public static SSAAudioEventManager getInstance() {
        if (b == null) {
            synchronized (SSAAudioEventManager.class) {
                if (b == null) {
                    b = new SSAAudioEventManager();
                }
            }
        }
        return b;
    }

    public void NotifyAudioFocusChange(String str, boolean z) {
        LogUtils.t(this.f207a, "+NotifyAudioFocusChange, packangeName = " + str + ", isRequest = " + z);
        this.d = str;
        this.e = z;
        a(ActionCallbackDef.EXTRA_K_AUDIO_EVENT_PACKAGE_NAME, str);
        a(ActionCallbackDef.EXTRA_K_AUDIO_EVENT_IS_REQUEST, z);
        a.a().a(ActionCallbackDef.ACTION_AUDIO_EVENT_NOTIFY, a());
        LogUtils.t(this.f207a, "-NotifyAudioFocusChange");
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        if (this.d != null) {
            NotifyAudioFocusChange(this.d, this.e);
            this.d = null;
        }
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_AUDIO_EVENT)) {
            return a(str, bArr);
        }
        return null;
    }

    public void addIAudioEventListener(IAudioEventListener iAudioEventListener) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+addIAudioEventListener, audioEventListener:");
        sb.append(iAudioEventListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.c.contains(iAudioEventListener)) {
            this.c.add(iAudioEventListener);
        }
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-addIAudioEventListener, audioEventListener:");
        sb2.append(iAudioEventListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void removeIAudioEventListener(IAudioEventListener iAudioEventListener) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+removeIAudioEventListener, audioEventListener:");
        sb.append(iAudioEventListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.c.contains(iAudioEventListener)) {
            this.c.remove(iAudioEventListener);
        }
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-removeIAudioEventListener, audioEventListener:");
        sb2.append(iAudioEventListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }
}
