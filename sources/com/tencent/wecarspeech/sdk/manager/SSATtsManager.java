package com.tencent.wecarspeech.sdk.manager;

import android.util.SparseArray;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.listener.TTSPlayListener;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class SSATtsManager extends b {
    public static final int ID_INVALID = 0;
    public static final int PRIORITY_IMPORTANT = 1;
    public static final int PRIORITY_NORMAL = 0;
    private static volatile SSATtsManager c;
    private SparseArray<TTSPlayListener> b = new SparseArray<>();

    private SSATtsManager() {
    }

    private byte[] a(String str, byte[] bArr) {
        String str2;
        String str3;
        if (this.b.size() == 0) {
            str2 = this.f207a;
            str3 = "listener list is null";
        } else {
            if (bArr != null) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    int i = jSONObject.getInt("e_tts_id");
                    int i2 = jSONObject.getInt(FocusCallbackDef.EXTRA_K_TTS_PROGRESS_INDEX);
                    int i3 = jSONObject.getInt(FocusCallbackDef.EXTRA_K_TTS_PROGRESS_LENGTH);
                    LogUtils.d(this.f207a, "id :" + i + ",index:" + i2 + ",length:" + i3);
                    TTSPlayListener tTSPlayListener = this.b.get(i);
                    if (tTSPlayListener != null) {
                        tTSPlayListener.onProgress(i2, i3);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                return null;
            }
            str2 = this.f207a;
            str3 = "data is null";
        }
        LogUtils.d(str2, str3);
        return null;
    }

    private byte[] b(String str, byte[] bArr) {
        String str2;
        String str3;
        if (this.b.size() == 0) {
            str2 = this.f207a;
            str3 = "listener list is null";
        } else {
            if (bArr != null) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    int i = jSONObject.getInt("e_tts_id");
                    int i2 = jSONObject.getInt(FocusCallbackDef.EXTRA_K_TTS_STATUS_STATUS);
                    int i3 = jSONObject.getInt(FocusCallbackDef.EXTRA_K_TTS_STATUS_FLAG);
                    LogUtils.d(this.f207a, "id :" + i + ",status:" + i2 + ",flag:" + i3);
                    TTSPlayListener tTSPlayListener = this.b.get(i);
                    if (tTSPlayListener != null) {
                        tTSPlayListener.onStatusChange(i2, i3);
                        if (i2 == 5) {
                            this.b.remove(i);
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                return null;
            }
            str2 = this.f207a;
            str3 = "data is null";
        }
        LogUtils.d(str2, str3);
        return null;
    }

    public static void destory() {
        c = null;
    }

    public static SSATtsManager getInstance() {
        if (c == null) {
            synchronized (SSATtsManager.class) {
                if (c == null) {
                    c = new SSATtsManager();
                }
            }
        }
        return c;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(this.f207a, "+onSdkServiceConnectEvent, connected:" + z);
        LogUtils.t(this.f207a, "-onSdkServiceConnectEvent, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        if (FocusCallbackDef.CALLBACK_FOCUS_TTS_STATUS.equals(str2)) {
            return b(str, bArr);
        }
        if (FocusCallbackDef.CALLBACK_FOCUS_TTS_PROGRESS.equals(str2)) {
            return a(str, bArr);
        }
        return null;
    }

    public boolean pause(int i) {
        a("e_tts_id", i);
        a.a().a(ActionCallbackDef.ACTION_TTS_PAUSE, a());
        return true;
    }

    public boolean resume(int i) {
        a("e_tts_id", i);
        a.a().a(ActionCallbackDef.ACTION_TTS_RESUME, a());
        return true;
    }

    public int speak(String str) {
        return speak(str, 0, null);
    }

    public int speak(String str, int i, TTSPlayListener tTSPlayListener) {
        try {
            a(ActionCallbackDef.EXTRA_K_TTS_TEXT, str);
            a(ActionCallbackDef.EXTRA_K_TTS_PRIORITY, i);
            a(ActionCallbackDef.EXTRA_K_TTS_HAS_CALLBACK, tTSPlayListener != null);
            int parseInt = Integer.parseInt(new String(a.a().a(ActionCallbackDef.ACTION_TTS_PLAY, a())));
            if (tTSPlayListener != null) {
                this.b.append(parseInt, tTSPlayListener);
            }
            return parseInt;
        } catch (NullPointerException e) {
            LogUtils.d(this.f207a, e.getMessage());
            return 0;
        }
    }

    public int speak(String str, TTSPlayListener tTSPlayListener) {
        return speak(str, 0, tTSPlayListener);
    }

    public boolean stop(int i) {
        a("e_tts_id", i);
        a.a().a(ActionCallbackDef.ACTION_TTS_STOP, a());
        return true;
    }
}
