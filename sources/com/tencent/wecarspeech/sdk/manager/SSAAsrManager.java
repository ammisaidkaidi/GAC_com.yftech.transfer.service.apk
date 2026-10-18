package com.tencent.wecarspeech.sdk.manager;

import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.listener.IAsrCommandListener;
import com.tencent.wecarspeech.sdk.listener.IMainWakeupWordSetListener;
import com.tencent.wecarspeech.sdk.listener.ISceneWakeupAsrListener;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SSAAsrManager extends b {
    private static volatile SSAAsrManager b;
    private static ConcurrentHashMap<String, SceneWakeupAsrTool> f = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, String> c = new ConcurrentHashMap<>();
    private CopyOnWriteArrayList<IAsrCommandListener> d = new CopyOnWriteArrayList<>();
    private CopyOnWriteArrayList<IMainWakeupWordSetListener> e = new CopyOnWriteArrayList<>();
    private Boolean g;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SceneWakeupAsrTool {
        private String b;
        private ISceneWakeupAsrListener c;

        /* renamed from: a, reason: collision with root package name */
        protected final String f210a = LogUtils.GLOBAL_LOG_TAG + getClass().getSimpleName();
        private ConcurrentHashMap<String, String> d = new ConcurrentHashMap<>();

        private SceneWakeupAsrTool() {
        }

        public SceneWakeupAsrTool(String str) {
            this.b = str;
            this.d.clear();
        }

        protected ISceneWakeupAsrListener a() {
            return this.c;
        }

        public SceneWakeupAsrTool addWakeupKeywords(ArrayList<String> arrayList, String str) {
            if (arrayList == null || arrayList.isEmpty() || TextUtils.isEmpty(str)) {
                LogUtils.w(this.f210a, "addWakeupKeywords params is invalid");
                return this;
            }
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                this.d.put(it.next(), str);
            }
            return this;
        }

        protected ConcurrentHashMap<String, String> b() {
            return this.d;
        }

        public String getSceneId() {
            return this.b;
        }

        public void setISceneWakeupListener(ISceneWakeupAsrListener iSceneWakeupAsrListener) {
            this.c = iSceneWakeupAsrListener;
        }
    }

    private SSAAsrManager() {
    }

    private void a(SceneWakeupAsrTool sceneWakeupAsrTool) {
        if (sceneWakeupAsrTool == null || TextUtils.isEmpty(sceneWakeupAsrTool.getSceneId())) {
            LogUtils.e(this.f207a, "startWakeupAsrScene return, param 'sceneId' is invalid");
            return;
        }
        LogUtils.t(this.f207a, "+startWakeupAsrSceneInner(), sceneWakeupAsrTool.mSceneId:" + sceneWakeupAsrTool.b);
        if (sceneWakeupAsrTool.b().isEmpty()) {
            LogUtils.e(this.f207a, "startWakeupAsrScene return, param is 'keyword' invalid");
        }
        String sceneId = sceneWakeupAsrTool.getSceneId();
        f.put(sceneId, sceneWakeupAsrTool);
        ConcurrentHashMap<String, String> b2 = sceneWakeupAsrTool.b();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_WAKEUP_SCENE_ID, sceneId);
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<String, String> entry : b2.entrySet()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(ActionCallbackDef.EXTRA_K_WAKEUP_KEYWORD, entry.getKey());
                jSONObject2.put(ActionCallbackDef.EXTRA_K_WAKEUP_SEMANTICS_TAG, entry.getValue());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put(ActionCallbackDef.EXTRA_K_WAKEUP_KEYWORD_SEMANTICS_TAG, jSONArray);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_WAKEUP_SCENE_START, jSONObject.toString().getBytes());
        LogUtils.t(this.f207a, "-startWakeupAsrSceneInner(), sceneWakeupAsrTool.mSceneId:" + sceneWakeupAsrTool.b);
    }

    private void a(ConcurrentHashMap<String, String> concurrentHashMap) {
        if (concurrentHashMap.isEmpty()) {
            LogUtils.w(this.f207a, "registerCommandReconnect params is invalid");
            return;
        }
        LogUtils.t(this.f207a, "+registerCommandInner");
        JSONArray jSONArray = new JSONArray();
        try {
            for (Map.Entry<String, String> entry : concurrentHashMap.entrySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ActionCallbackDef.EXTRA_K_ASR_COMMAND, entry.getKey());
                jSONObject.put(ActionCallbackDef.EXTRA_K_ASR_SEMANTICS_TAG, entry.getValue());
                jSONArray.put(jSONObject);
            }
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_REG_COMMAND, jSONArray.toString().getBytes());
        LogUtils.t(this.f207a, "-registerCommandInner");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c A[LOOP:0: B:13:0x0046->B:15:0x004c, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] a(String str, byte[] bArr) {
        String str2;
        String str3;
        Iterator<IAsrCommandListener> it;
        LogUtils.i(this.f207a, "handlerRegCommandCallback");
        if (this.d.isEmpty()) {
            LogUtils.w(this.f207a, "handlerRegCommandCallback return, mAsrCommandListenerList is empty");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            str2 = jSONObject.optString(ActionCallbackDef.EXTRA_K_ASR_COMMAND);
            try {
                str3 = jSONObject.optString(ActionCallbackDef.EXTRA_K_ASR_SEMANTICS_TAG);
            } catch (JSONException e) {
                e = e;
                LogUtils.e(this.f207a, e.toString());
                str3 = null;
                it = this.d.iterator();
                while (it.hasNext()) {
                }
                return null;
            }
        } catch (JSONException e2) {
            e = e2;
            str2 = null;
        }
        it = this.d.iterator();
        while (it.hasNext()) {
            IAsrCommandListener next = it.next();
            LogUtils.t(this.f207a, "==+onAsrCommand, regCommand:" + str2 + " ,semanticsTag:" + str3);
            next.onAsrCommand(str2, str3);
            LogUtils.t(this.f207a, "==-onAsrCommand, regCommand:" + str2 + " ,semanticsTag:" + str3);
        }
        return null;
    }

    private byte[] b(String str, byte[] bArr) {
        String str2;
        String str3;
        String str4;
        LogUtils.i(this.f207a, "handlerSceneWakeupAsrCallback");
        if (bArr == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            str2 = jSONObject.optString(ActionCallbackDef.EXTRA_K_WAKEUP_SCENE_ID);
            try {
                str3 = jSONObject.optString(ActionCallbackDef.EXTRA_K_WAKEUP_KEYWORD);
                try {
                    str4 = jSONObject.optString(ActionCallbackDef.EXTRA_K_WAKEUP_SEMANTICS_TAG);
                } catch (JSONException e) {
                    e = e;
                    LogUtils.e(this.f207a, e.toString());
                    str4 = null;
                    if (TextUtils.isEmpty(str2)) {
                    }
                    LogUtils.i(this.f207a, "handlerSceneWakeupAsrCallback return, param is invalid");
                    return null;
                }
            } catch (JSONException e2) {
                e = e2;
                str3 = null;
            }
        } catch (JSONException e3) {
            e = e3;
            str2 = null;
            str3 = null;
        }
        if (!TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
            LogUtils.i(this.f207a, "handlerSceneWakeupAsrCallback return, param is invalid");
            return null;
        }
        if (f.containsKey(str2) && f.get(str2).a() != null) {
            LogUtils.t(this.f207a, "==+onWakeupAsr, keyword:" + str3 + ", semanticsTag:" + str4);
            f.get(str2).a().onWakeupAsr(str3, str4);
            LogUtils.t(this.f207a, "==-onWakeupAsr, keyword:" + str3 + ", semanticsTag:" + str4);
        }
        return null;
    }

    private byte[] c(String str, byte[] bArr) {
        String str2;
        LogUtils.i(this.f207a, "handlerSceneWakeupAsrCallback");
        if (bArr == null) {
            return null;
        }
        try {
            str2 = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_ASR_NEW_MAIN_WAKEUP_WORD);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
            str2 = null;
        }
        Iterator<IMainWakeupWordSetListener> it = this.e.iterator();
        while (it.hasNext()) {
            IMainWakeupWordSetListener next = it.next();
            LogUtils.t(this.f207a, "==+onMainWakeupWordSet:" + str2 + ", listener count: " + this.e.size());
            next.onMainWakeupWordSet(str2);
            LogUtils.t(this.f207a, "==-onMainWakeupWordSet:" + str2);
        }
        return null;
    }

    public static SSAAsrManager getInstance() {
        if (b == null) {
            synchronized (SSAAsrManager.class) {
                if (b == null) {
                    b = new SSAAsrManager();
                }
            }
        }
        return b;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(this.f207a, "+onSdkServiceConnectEvent, connected:" + z);
        a(this.c);
        if (this.g != null) {
            enableWakeup(this.g.booleanValue());
        }
        Iterator<SceneWakeupAsrTool> it = f.values().iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        LogUtils.t(this.f207a, "-onSdkServiceConnectEvent, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        if (str2.equals(FocusCallbackDef.CALLBACK_ASR_REG_COMMAND)) {
            return a(str, bArr);
        }
        if (str2.equals(FocusCallbackDef.CALLBACK_WAKEUP_ASR_SCENE)) {
            return b(str, bArr);
        }
        if (str2.equals(FocusCallbackDef.CALLBACK_ASR_NEW_MAIN_WAKEUP_WORD_SET)) {
            return c(str, bArr);
        }
        return null;
    }

    public void addIAsrCommandListener(IAsrCommandListener iAsrCommandListener) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+addIAsrCommandListener, listener:");
        sb.append(iAsrCommandListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.d.contains(iAsrCommandListener)) {
            this.d.add(iAsrCommandListener);
        }
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-addIAsrCommandListener, listener:");
        sb2.append(iAsrCommandListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    @Deprecated
    public void addINewMainWakeupWordListener(IMainWakeupWordSetListener iMainWakeupWordSetListener) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+addINewMainWakeupWordListener, listener:");
        sb.append(iMainWakeupWordSetListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.e.contains(iMainWakeupWordSetListener)) {
            this.e.add(iMainWakeupWordSetListener);
        }
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-addINewMainWakeupWordListener, listener:");
        sb2.append(iMainWakeupWordSetListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void enableAsr(boolean z) {
        LogUtils.t(this.f207a, "+enableAsr, enable:" + z);
        a(ActionCallbackDef.EXTRA_K_ASR_ENABLE, z);
        a.a().a(ActionCallbackDef.ACTION_ASR_ENABLE, a());
        LogUtils.t(this.f207a, "-enableAsr, enable:" + z);
    }

    public void enableWakeup(boolean z) {
        LogUtils.t(this.f207a, "+enableWakeup, enable:" + z);
        this.g = Boolean.valueOf(z);
        a(ActionCallbackDef.EXTRA_K_WAKEUP_ENABLE, z);
        a.a().a(ActionCallbackDef.ACTION_ASR_WAKEUP_ENABLE, a());
        LogUtils.t(this.f207a, "-enableWakeup, enable:" + z);
    }

    public void registerCommand(ArrayList<String> arrayList, String str) {
        if (arrayList == null || arrayList.isEmpty() || TextUtils.isEmpty(str)) {
            LogUtils.w(this.f207a, "registerCommandInner params is invalid");
            return;
        }
        LogUtils.t(this.f207a, "+registerCommand, semanticsTAg:" + str);
        ConcurrentHashMap<String, String> concurrentHashMap = new ConcurrentHashMap<>();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            concurrentHashMap.put(next, str);
            this.c.put(next, str);
        }
        a(concurrentHashMap);
        LogUtils.t(this.f207a, "-registerCommand, semanticsTAg:" + str);
    }

    public void removeIAsrCommandListener(IAsrCommandListener iAsrCommandListener) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+removeIAsrCommandListener, listener:");
        sb.append(iAsrCommandListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.d.contains(iAsrCommandListener)) {
            this.d.remove(iAsrCommandListener);
        }
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-removeIAsrCommandListener, listener:");
        sb2.append(iAsrCommandListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    @Deprecated
    public void removeINewMainWakeupWordListener(IMainWakeupWordSetListener iMainWakeupWordSetListener) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+removeINewMainWakeupWordListener, listener:");
        sb.append(iMainWakeupWordSetListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.e.contains(iMainWakeupWordSetListener)) {
            this.e.remove(iMainWakeupWordSetListener);
        }
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-removeINewMainWakeupWordListener, listener:");
        sb2.append(iMainWakeupWordSetListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void startASR() {
        startASR(null);
    }

    public void startASR(String str) {
        LogUtils.t(this.f207a, "+startASR, ttsTips:" + str);
        a(ActionCallbackDef.EXTRA_K_ASR_TTS_TIPS, str);
        a.a().a(ActionCallbackDef.ACTION_ASR_START, a());
        LogUtils.t(this.f207a, "-startASR, ttsTips:" + str);
    }

    public void startWakeupAsrScene(SceneWakeupAsrTool sceneWakeupAsrTool) {
        String str;
        String str2;
        String str3 = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+startWakeupAsrScene(), sceneWakeupAsrTool:");
        if (sceneWakeupAsrTool == null) {
            str = "null";
        } else {
            str = ".mSceneId:" + sceneWakeupAsrTool.b;
        }
        sb.append(str);
        LogUtils.t(str3, sb.toString());
        a(sceneWakeupAsrTool);
        String str4 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-startWakeupAsrScene(), sceneWakeupAsrTool:");
        if (sceneWakeupAsrTool == null) {
            str2 = "null";
        } else {
            str2 = ".mSceneId:" + sceneWakeupAsrTool.b;
        }
        sb2.append(str2);
        LogUtils.t(str4, sb2.toString());
    }

    public void stopASR() {
        LogUtils.t(this.f207a, "+stopASR");
        a.a().a(ActionCallbackDef.ACTION_ASR_STOP, new byte[0]);
        LogUtils.t(this.f207a, "-stopASR");
    }

    public void stopWakeupAsrScene(SceneWakeupAsrTool sceneWakeupAsrTool) {
        if (sceneWakeupAsrTool == null || TextUtils.isEmpty(sceneWakeupAsrTool.getSceneId())) {
            LogUtils.i(this.f207a, "stopWakeupAsrScene return, param is invalid");
            return;
        }
        LogUtils.t(this.f207a, "+stopWakeupAsrScene(), sceneWakeupAsrTool.mSceneId:" + sceneWakeupAsrTool.b);
        String sceneId = sceneWakeupAsrTool.getSceneId();
        if (f.containsKey(sceneId)) {
            f.remove(sceneId);
        }
        a(ActionCallbackDef.EXTRA_K_WAKEUP_SCENE_ID, sceneId);
        a.a().a(ActionCallbackDef.ACTION_ASR_WAKEUP_SCENE_STOP, a());
        LogUtils.t(this.f207a, "-stopWakeupAsrScene(), sceneWakeupAsrTool.mSceneId:" + sceneWakeupAsrTool.b);
    }

    public void unRegisterCommand(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            LogUtils.w(this.f207a, "unRegisterCommand params is invalid");
            return;
        }
        LogUtils.t(this.f207a, "+unRegisterCommand");
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            this.c.remove(next);
            jSONArray.put(next);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ASR_COMMAND, jSONArray);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_UNREG_COMMAND, jSONObject.toString().getBytes());
        LogUtils.t(this.f207a, "-unRegisterCommand");
    }
}
