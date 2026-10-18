package com.tencent.wecarspeech.sdk;

import android.util.SparseArray;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASTtsManager {
    public static final int ID_INVALID = 0;
    public static final int PRIORITY_IMPORTANT = 1;
    public static final int PRIORITY_NORMAL = 0;

    /* renamed from: a, reason: collision with root package name */
    private static final String f204a = "TASTtsManager";
    private static volatile TASTtsManager c;
    private SparseArray<TTSPlayListener> b = new SparseArray<>();

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class TTSPlayListener {
        public static final int FLAG_DEFAULT = 0;
        public static final int STATUS_COMPLETED = 2;
        public static final int STATUS_END = 5;
        public static final int STATUS_ERROR = 4;
        public static final int STATUS_INTERRUPT = 3;
        public static final int STATUS_PAUSE = 6;
        public static final int STATUS_RESUME = 7;
        public static final int STATUS_START = 1;
        public static final int STOP_REASON_SDK = 2;
        public static final int STOP_REASON_URGENT = 3;
        public static final int STOP_REASON_WAKEUP = 1;

        public void onProgress(int i, int i2) {
        }

        public abstract void onStatusChange(int i, int i2);
    }

    private TASTtsManager() {
        c.a().a(TASTtsManager.class.getSimpleName(), new c.a() { // from class: com.tencent.wecarspeech.sdk.TASTtsManager.1
            @Override // com.tencent.wecarspeech.sdk.c.a
            public void a(boolean z) {
                LogUtils.t(TASTtsManager.f204a, "+onSdkServiceConnectEvent, connected:" + z);
                LogUtils.t(TASTtsManager.f204a, "-onSdkServiceConnectEvent, connected:" + z);
            }

            @Override // com.tencent.wecarspeech.sdk.c.a
            public byte[] a(String str, String str2, byte[] bArr, int i) {
                if (FocusCallbackDef.CALLBACK_FOCUS_TTS_STATUS.equals(str2)) {
                    return TASTtsManager.this.a(str, bArr);
                }
                FocusCallbackDef.CALLBACK_FOCUS_TTS_PROGRESS.equals(str2);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] a(String str, byte[] bArr) {
        String str2;
        String str3;
        if (this.b.size() == 0) {
            str2 = f204a;
            str3 = "listener list is null";
        } else {
            if (bArr != null) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    int i = jSONObject.getInt("e_tts_id");
                    int i2 = jSONObject.getInt(FocusCallbackDef.EXTRA_K_TTS_STATUS_STATUS);
                    int i3 = jSONObject.getInt(FocusCallbackDef.EXTRA_K_TTS_STATUS_FLAG);
                    LogUtils.d(f204a, "id :" + i + ",status:" + i2 + ",flag:" + i3);
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
            str2 = f204a;
            str3 = "data is null";
        }
        LogUtils.d(str2, str3);
        return null;
    }

    public static void destory() {
        c = null;
    }

    public static TASTtsManager getInstance() {
        if (c == null) {
            synchronized (TASTtsManager.class) {
                if (c == null) {
                    c = new TASTtsManager();
                }
            }
        }
        return c;
    }

    @Deprecated
    public boolean pause(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_tts_id", i);
            a.a().a(ActionCallbackDef.ACTION_TTS_PAUSE, jSONObject.toString().getBytes());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Deprecated
    public boolean resume(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_tts_id", i);
            a.a().a(ActionCallbackDef.ACTION_TTS_RESUME, jSONObject.toString().getBytes());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Deprecated
    public int speak(String str) {
        return speak(str, 0, null);
    }

    @Deprecated
    public int speak(String str, int i, TTSPlayListener tTSPlayListener) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_TTS_TEXT, str);
            jSONObject.put(ActionCallbackDef.EXTRA_K_TTS_PRIORITY, i);
            jSONObject.put(ActionCallbackDef.EXTRA_K_TTS_HAS_CALLBACK, tTSPlayListener != null);
            int parseInt = Integer.parseInt(new String(a.a().a(ActionCallbackDef.ACTION_TTS_PLAY, jSONObject.toString().getBytes())));
            if (tTSPlayListener != null) {
                this.b.append(parseInt, tTSPlayListener);
            }
            return parseInt;
        } catch (NullPointerException e) {
            LogUtils.d(f204a, e.getMessage());
            return 0;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    @Deprecated
    public int speak(String str, TTSPlayListener tTSPlayListener) {
        return speak(str, 0, tTSPlayListener);
    }

    @Deprecated
    public boolean stop(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_tts_id", i);
            a.a().a(ActionCallbackDef.ACTION_TTS_STOP, jSONObject.toString().getBytes());
            return true;
        } catch (JSONException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Deprecated
    public void unInit() {
    }
}
