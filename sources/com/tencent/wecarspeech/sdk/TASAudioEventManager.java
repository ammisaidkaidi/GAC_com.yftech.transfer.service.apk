package com.tencent.wecarspeech.sdk;

import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASAudioEventManager extends b {
    private static final String b = LogUtils.GLOBAL_LOG_TAG + TASAudioEventManager.class.getSimpleName();
    private static volatile TASAudioEventManager c;
    private CopyOnWriteArrayList<IAudioEventListener> d = new CopyOnWriteArrayList<>();
    private String e;
    private boolean f;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IAudioEventListener {
        int onAbandonAudioFocus(boolean z, int i);

        void onAsrBegin();

        void onAsrEnd();

        void onAsrStartTipBegin();

        void onAsrStartTipEnd();

        void onCallBegin();

        void onCallEnd();

        void onMusicPause();

        void onMusicPlay();

        int onRequestAudioFocus(int i);

        void onTtsBegin();

        void onTtsEnd();
    }

    private TASAudioEventManager() {
    }

    private int a(int i, int i2, boolean z) {
        String str;
        String str2;
        LogUtils.w(b, "handlerAudioEventFocus, audioEvent == " + i);
        Iterator<IAudioEventListener> it = this.d.iterator();
        int i3 = -1;
        while (it.hasNext()) {
            IAudioEventListener next = it.next();
            switch (i) {
                case 0:
                    LogUtils.t(b, "==+onAsrStartTipBegin");
                    next.onAsrStartTipBegin();
                    str = b;
                    str2 = "==-onAsrStartTipBegin";
                    break;
                case 1:
                    LogUtils.t(b, "==+onAsrStartTipEnd");
                    next.onAsrStartTipEnd();
                    str = b;
                    str2 = "==-onAsrStartTipEnd";
                    break;
                case 2:
                    LogUtils.t(b, "==+onAsrBegin");
                    next.onAsrBegin();
                    str = b;
                    str2 = "==-onAsrBegin";
                    break;
                case 3:
                    LogUtils.t(b, "==+onAsrEnd");
                    next.onAsrEnd();
                    str = b;
                    str2 = "==-onAsrEnd";
                    break;
                case 4:
                    LogUtils.t(b, "==+onTtsBegin");
                    next.onTtsBegin();
                    str = b;
                    str2 = "==-onTtsBegin";
                    break;
                case 5:
                    LogUtils.t(b, "==+onTtsEnd");
                    next.onTtsEnd();
                    str = b;
                    str2 = "==-onTtsEnd";
                    break;
                case 6:
                    LogUtils.t(b, "==+onMusicPlay");
                    next.onMusicPlay();
                    str = b;
                    str2 = "==-onMusicPlay";
                    break;
                case 7:
                    LogUtils.t(b, "==+onMusicPause");
                    next.onMusicPause();
                    str = b;
                    str2 = "==-onMusicPause";
                    break;
                case 8:
                    LogUtils.t(b, "==+onCallBegin");
                    next.onCallBegin();
                    str = b;
                    str2 = "==-onCallBegin";
                    break;
                case 9:
                    LogUtils.t(b, "==+onCallEnd");
                    next.onCallEnd();
                    str = b;
                    str2 = "==-onCallEnd";
                    break;
                case 10:
                    LogUtils.t(b, "==+onRequestAudioFocus");
                    i3 = next.onRequestAudioFocus(i2);
                    str = b;
                    str2 = "==-onRequestAudioFocus";
                    break;
                case 11:
                    LogUtils.t(b, "==+onAbandonAudioFocus restore = " + z);
                    i3 = next.onAbandonAudioFocus(z, i2);
                    str = b;
                    str2 = "==-onAbandonAudioFocus restore = " + z;
                    break;
            }
            LogUtils.t(str, str2);
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] a(String str, byte[] bArr) {
        int i;
        int i2;
        int a2;
        String str2 = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+handlerAutioEventFocus(Caller:");
        sb.append(str);
        sb.append(" ,data:");
        sb.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str2, sb.toString());
        if (bArr != null) {
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
                            LogUtils.e(b, e.toString());
                            if (i == -1) {
                            }
                            a2 = a(i, i2, z);
                            if (a2 != -1) {
                            }
                            String str3 = b;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("-handlerAutioEventFocus(Caller:");
                            sb2.append(str);
                            sb2.append(" ,data:");
                            sb2.append(bArr != null ? "null" : new String(bArr));
                            LogUtils.t(str3, sb2.toString());
                            return null;
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
                LogUtils.w(b, "handlerAudioEventFocus return, audioEvent == -1");
            }
            a2 = a(i, i2, z);
            if (a2 != -1) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, a2);
                } catch (JSONException e4) {
                    LogUtils.e(b, e4.toString());
                }
                LogUtils.t(b, "-handlerAutioEventFocus(Caller:" + str + " ,resut:" + a2);
                return jSONObject2.toString().getBytes();
            }
        }
        String str32 = b;
        StringBuilder sb22 = new StringBuilder();
        sb22.append("-handlerAutioEventFocus(Caller:");
        sb22.append(str);
        sb22.append(" ,data:");
        sb22.append(bArr != null ? "null" : new String(bArr));
        LogUtils.t(str32, sb22.toString());
        return null;
    }

    public static TASAudioEventManager getInstance() {
        if (c == null) {
            synchronized (TASAudioEventManager.class) {
                if (c == null) {
                    c = new TASAudioEventManager();
                }
            }
        }
        return c;
    }

    public void NotifyAudioFocusChange(String str, boolean z) {
        LogUtils.t(b, "+NotifyAudioFocusChange, packangeName = " + str + ", isRequest = " + z);
        this.e = str;
        this.f = z;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_AUDIO_EVENT_PACKAGE_NAME, str);
            jSONObject.put(ActionCallbackDef.EXTRA_K_AUDIO_EVENT_IS_REQUEST, z);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_AUDIO_EVENT_NOTIFY, jSONObject.toString().getBytes());
        LogUtils.t(b, "-NotifyAudioFocusChange");
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        if (this.e != null) {
            NotifyAudioFocusChange(this.e, this.f);
            this.e = null;
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
        String str = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+addIAudioEventListener, audioEventListener:");
        sb.append(iAudioEventListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.d.contains(iAudioEventListener)) {
            this.d.add(iAudioEventListener);
        }
        String str2 = b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-addIAudioEventListener, audioEventListener:");
        sb2.append(iAudioEventListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void removeIAudioEventListener(IAudioEventListener iAudioEventListener) {
        String str = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+removeIAudioEventListener, audioEventListener:");
        sb.append(iAudioEventListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.d.contains(iAudioEventListener)) {
            this.d.remove(iAudioEventListener);
        }
        String str2 = b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-removeIAudioEventListener, audioEventListener:");
        sb2.append(iAudioEventListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }
}
