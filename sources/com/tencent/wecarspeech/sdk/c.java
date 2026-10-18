package com.tencent.wecarspeech.sdk;

import android.content.Context;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.manager.SSAAsrManager;
import com.tencent.wecarspeech.sdk.manager.SSAAudioEventManager;
import com.tencent.wecarspeech.sdk.manager.SSAConfigManager;
import com.tencent.wecarspeech.sdk.manager.SSACustomPageManager;
import com.tencent.wecarspeech.sdk.manager.SSADoaManager;
import com.tencent.wecarspeech.sdk.manager.SSAMediaManager;
import com.tencent.wecarspeech.sdk.manager.SSAMusicManager;
import com.tencent.wecarspeech.sdk.manager.SSARadioManager;
import com.tencent.wecarspeech.sdk.manager.SSAStatusManager;
import com.tencent.wecarspeech.sdk.manager.SSASystemManager;
import com.tencent.wecarspeech.sdk.manager.SSATelManager;
import com.tencent.wecarspeech.sdk.manager.SSATtsManager;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f209a = LogUtils.GLOBAL_LOG_TAG + c.class.getSimpleName();
    private static volatile c c;
    private ConcurrentHashMap<String, a> b = new ConcurrentHashMap<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(boolean z);

        byte[] a(String str, String str2, byte[] bArr, int i);
    }

    private c() {
    }

    public static c a() {
        if (c == null) {
            synchronized (c.class) {
                if (c == null) {
                    c = new c();
                }
            }
        }
        return c;
    }

    public void a(Context context) {
    }

    public void a(String str, a aVar) {
        this.b.put(str, aVar);
    }

    public void a(boolean z) {
        LogUtils.i(f209a, "handlerServiceConnect connected:" + z);
        Iterator<a> it = this.b.values().iterator();
        while (it.hasNext()) {
            it.next().a(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0100, code lost:
    
        if (r0 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0102, code lost:
    
        r3 = r3.b;
        r0 = com.tencent.wecarspeech.sdk.TASMediaManager.class;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x011e, code lost:
    
        if (r0 == null) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] a(String str, String str2, byte[] bArr, int i) {
        a aVar;
        ConcurrentHashMap<String, a> concurrentHashMap;
        Class cls;
        a aVar2;
        LogUtils.i(f209a, "sdk handler Callback caller:" + str + " callback:" + str2 + " data:" + new String(bArr));
        byte[] bArr2 = null;
        if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_AUDIO_EVENT)) {
            aVar2 = this.b.get(SSAAudioEventManager.class.getSimpleName());
            if (aVar2 == null) {
                concurrentHashMap = this.b;
                cls = TASAudioEventManager.class;
                aVar = concurrentHashMap.get(cls.getSimpleName());
            }
            aVar = aVar2;
        } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_ASR)) {
            aVar2 = this.b.get(SSAAsrManager.class.getSimpleName());
            if (aVar2 == null) {
                concurrentHashMap = this.b;
                cls = TASAsrManager.class;
                aVar = concurrentHashMap.get(cls.getSimpleName());
            }
            aVar = aVar2;
        } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_SYS)) {
            aVar2 = this.b.get(SSASystemManager.class.getSimpleName());
            if (aVar2 == null) {
                concurrentHashMap = this.b;
                cls = TASSystemManager.class;
                aVar = concurrentHashMap.get(cls.getSimpleName());
            }
            aVar = aVar2;
        } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_TEL)) {
            aVar2 = this.b.get(SSATelManager.class.getSimpleName());
            if (aVar2 == null) {
                concurrentHashMap = this.b;
                cls = TASTelManager.class;
                aVar = concurrentHashMap.get(cls.getSimpleName());
            }
            aVar = aVar2;
        } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_RADIO)) {
            aVar2 = this.b.get(SSARadioManager.class.getSimpleName());
            if (aVar2 == null) {
                concurrentHashMap = this.b;
                cls = TASRadioManager.class;
                aVar = concurrentHashMap.get(cls.getSimpleName());
            }
            aVar = aVar2;
        } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_MUSIC)) {
            aVar2 = this.b.get(SSAMusicManager.class.getSimpleName());
            if (aVar2 == null) {
                concurrentHashMap = this.b;
                cls = TASMusicManager.class;
                aVar = concurrentHashMap.get(cls.getSimpleName());
            }
            aVar = aVar2;
        } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_VIDEO)) {
            aVar2 = this.b.get(SSAMediaManager.class.getSimpleName());
        } else {
            if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_CONTROL)) {
                aVar2 = this.b.get(SSAMediaManager.class.getSimpleName());
            } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_DOA_EVENT)) {
                aVar2 = this.b.get(SSADoaManager.class.getSimpleName());
                if (aVar2 == null) {
                    concurrentHashMap = this.b;
                    cls = TASIDoaManager.class;
                    aVar = concurrentHashMap.get(cls.getSimpleName());
                }
            } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_TTS)) {
                aVar2 = this.b.get(SSATtsManager.class.getSimpleName());
                if (aVar2 == null) {
                    concurrentHashMap = this.b;
                    cls = TASTtsManager.class;
                    aVar = concurrentHashMap.get(cls.getSimpleName());
                }
            } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_CONFIG)) {
                aVar2 = this.b.get(SSAConfigManager.class.getSimpleName());
                if (aVar2 == null) {
                    concurrentHashMap = this.b;
                    cls = TASConfigManager.class;
                    aVar = concurrentHashMap.get(cls.getSimpleName());
                }
            } else {
                if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_SETTING_PAGE)) {
                    aVar2 = this.b.get(SSACustomPageManager.class.getSimpleName());
                    if (aVar2 == null) {
                        concurrentHashMap = this.b;
                        cls = TASSettingPageManager.class;
                    }
                } else if (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_STATUS)) {
                    concurrentHashMap = this.b;
                    cls = SSAStatusManager.class;
                } else {
                    aVar = null;
                }
                aVar = concurrentHashMap.get(cls.getSimpleName());
            }
            aVar = aVar2;
        }
        if (aVar != null) {
            bArr2 = aVar.a(str, str2, bArr, i);
            String str3 = f209a;
            StringBuilder sb = new StringBuilder();
            sb.append("on callback result: ");
            sb.append(bArr2 == null ? "null" : new String(bArr2));
            LogUtils.d(str3, sb.toString());
        } else {
            LogUtils.w(f209a, "no callback listener found!");
        }
        return bArr2;
    }
}
