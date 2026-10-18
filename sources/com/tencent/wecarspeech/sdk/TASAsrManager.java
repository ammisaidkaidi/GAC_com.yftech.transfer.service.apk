package com.tencent.wecarspeech.sdk;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASAsrManager {
    private static volatile TASAsrManager b;
    private CopyOnWriteArrayList<IAsrJsonResultListener> c = new CopyOnWriteArrayList<>();
    private ConcurrentHashMap<String, String> d = new ConcurrentHashMap<>();
    private CopyOnWriteArrayList<IAsrCommandListener> e = new CopyOnWriteArrayList<>();
    private CopyOnWriteArrayList<IMainWakeupWordSetListener> f = new CopyOnWriteArrayList<>();
    private Boolean h;

    /* renamed from: a, reason: collision with root package name */
    private static final String f172a = LogUtils.GLOBAL_LOG_TAG + TASAsrManager.class.getSimpleName();
    private static ConcurrentHashMap<String, SceneWakeupAsrTool> g = new ConcurrentHashMap<>();

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IAsrCommandListener {
        void onAsrCommand(String str, String str2);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IAsrJsonResultListener {
        String onAsrJsonResult(String str, int i);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IMainWakeupWordSetListener {
        void onMainWakeupWordSet(String str);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ISceneWakeupAsrListener {
        void onWakeupAsr(String str, String str2);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SceneWakeupAsrTool {

        /* renamed from: a, reason: collision with root package name */
        private String f174a;
        private ISceneWakeupAsrListener b;
        private ConcurrentHashMap<String, String> c = new ConcurrentHashMap<>();

        private SceneWakeupAsrTool() {
        }

        public SceneWakeupAsrTool(String str) {
            this.f174a = str;
            this.c.clear();
        }

        public SceneWakeupAsrTool addWakeupKeywords(ArrayList<String> arrayList, String str) {
            if (arrayList == null || arrayList.isEmpty() || TextUtils.isEmpty(str)) {
                LogUtils.w(TASAsrManager.f172a, "addWakeupKeywords params is invalid");
                return this;
            }
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                this.c.put(it.next(), str);
            }
            return this;
        }

        public ISceneWakeupAsrListener getISceneWakeupAsrListener() {
            return this.b;
        }

        public String getSceneId() {
            return this.f174a;
        }

        public ConcurrentHashMap<String, String> getWakeupKeywordsTagMap() {
            return this.c;
        }

        public void setISceneWakeupListener(ISceneWakeupAsrListener iSceneWakeupAsrListener) {
            this.b = iSceneWakeupAsrListener;
        }
    }

    private TASAsrManager() {
        c.a().a(TASAsrManager.class.getSimpleName(), new c.a() { // from class: com.tencent.wecarspeech.sdk.TASAsrManager.1
            @Override // com.tencent.wecarspeech.sdk.c.a
            public void a(boolean z) {
                LogUtils.t(TASAsrManager.f172a, "+onSdkServiceConnectEvent, connected:" + z);
                TASAsrManager.this.a((ConcurrentHashMap<String, String>) TASAsrManager.this.d);
                if (TASAsrManager.this.h != null) {
                    TASAsrManager.this.enableWakeup(TASAsrManager.this.h.booleanValue());
                }
                Iterator it = TASAsrManager.g.values().iterator();
                while (it.hasNext()) {
                    TASAsrManager.this.a((SceneWakeupAsrTool) it.next());
                }
                LogUtils.t(TASAsrManager.f172a, "-onSdkServiceConnectEvent, connected:" + z);
            }

            @Override // com.tencent.wecarspeech.sdk.c.a
            public byte[] a(String str, String str2, byte[] bArr, int i) {
                if (str2.equals(FocusCallbackDef.CALLBACK_ASR_JSON_RESULT)) {
                    return TASAsrManager.this.a(str, bArr, i);
                }
                if (str2.equals(FocusCallbackDef.CALLBACK_ASR_REG_COMMAND)) {
                    return TASAsrManager.this.a(str, bArr);
                }
                if (str2.equals(FocusCallbackDef.CALLBACK_WAKEUP_ASR_SCENE)) {
                    return TASAsrManager.this.b(str, bArr);
                }
                if (str2.equals(FocusCallbackDef.CALLBACK_ASR_NEW_MAIN_WAKEUP_WORD_SET)) {
                    return TASAsrManager.this.c(str, bArr);
                }
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SceneWakeupAsrTool sceneWakeupAsrTool) {
        if (sceneWakeupAsrTool == null || TextUtils.isEmpty(sceneWakeupAsrTool.getSceneId())) {
            LogUtils.e(f172a, "startWakeupAsrScene return, param 'sceneId' is invalid");
            return;
        }
        LogUtils.t(f172a, "+startWakeupAsrSceneInner(), sceneWakeupAsrTool.mSceneId:" + sceneWakeupAsrTool.f174a);
        if (sceneWakeupAsrTool.getWakeupKeywordsTagMap().isEmpty()) {
            LogUtils.e(f172a, "startWakeupAsrScene return, param is 'keyword' invalid");
        }
        String sceneId = sceneWakeupAsrTool.getSceneId();
        g.put(sceneId, sceneWakeupAsrTool);
        ConcurrentHashMap<String, String> wakeupKeywordsTagMap = sceneWakeupAsrTool.getWakeupKeywordsTagMap();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_WAKEUP_SCENE_ID, sceneId);
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<String, String> entry : wakeupKeywordsTagMap.entrySet()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(ActionCallbackDef.EXTRA_K_WAKEUP_KEYWORD, entry.getKey());
                jSONObject2.put(ActionCallbackDef.EXTRA_K_WAKEUP_SEMANTICS_TAG, entry.getValue());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put(ActionCallbackDef.EXTRA_K_WAKEUP_KEYWORD_SEMANTICS_TAG, jSONArray);
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_WAKEUP_SCENE_START, jSONObject.toString().getBytes());
        LogUtils.t(f172a, "-startWakeupAsrSceneInner(), sceneWakeupAsrTool.mSceneId:" + sceneWakeupAsrTool.f174a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ConcurrentHashMap<String, String> concurrentHashMap) {
        if (concurrentHashMap.isEmpty()) {
            LogUtils.w(f172a, "registerCommandReconnect params is invalid");
            return;
        }
        LogUtils.t(f172a, "+registerCommandInner");
        JSONArray jSONArray = new JSONArray();
        try {
            for (Map.Entry<String, String> entry : concurrentHashMap.entrySet()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ActionCallbackDef.EXTRA_K_ASR_COMMAND, entry.getKey());
                jSONObject.put(ActionCallbackDef.EXTRA_K_ASR_SEMANTICS_TAG, entry.getValue());
                jSONArray.put(jSONObject);
            }
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_REG_COMMAND, jSONArray.toString().getBytes());
        LogUtils.t(f172a, "-registerCommandInner");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004c A[LOOP:0: B:13:0x0046->B:15:0x004c, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] a(String str, byte[] bArr) {
        String str2;
        String str3;
        Iterator<IAsrCommandListener> it;
        LogUtils.i(f172a, "handlerRegCommandCallback");
        if (this.e.isEmpty()) {
            LogUtils.w(f172a, "handlerRegCommandCallback return, mAsrCommandListenerList is empty");
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
                LogUtils.e(f172a, e.toString());
                str3 = null;
                it = this.e.iterator();
                while (it.hasNext()) {
                }
                return null;
            }
        } catch (JSONException e2) {
            e = e2;
            str2 = null;
        }
        it = this.e.iterator();
        while (it.hasNext()) {
            IAsrCommandListener next = it.next();
            LogUtils.t(f172a, "==+onAsrCommand, regCommand:" + str2 + " ,semanticsTag:" + str3);
            next.onAsrCommand(str2, str3);
            LogUtils.t(f172a, "==-onAsrCommand, regCommand:" + str2 + " ,semanticsTag:" + str3);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] a(String str, byte[] bArr, int i) {
        LogUtils.i(f172a, "handlerJsonResultCallback");
        if (this.c.isEmpty()) {
            LogUtils.w(f172a, "handlerJsonResultCallback return, mAsrJsonResultListenerList is empty");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        String str2 = new String(bArr);
        Iterator<IAsrJsonResultListener> it = this.c.iterator();
        String str3 = null;
        while (it.hasNext()) {
            IAsrJsonResultListener next = it.next();
            LogUtils.t(f172a, "==+onAsrjson:" + str2 + ", listener count: " + this.c.size());
            str3 = next.onAsrJsonResult(str2, i);
            if (!TextUtils.isEmpty(str3)) {
                break;
            }
            LogUtils.t(f172a, "==-onAsrjson:" + str2);
        }
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject(str3);
            String optString = jSONObject2.optString("message");
            int optInt = jSONObject2.optInt(NotificationCompat.CATEGORY_STATUS);
            String optString2 = jSONObject2.optString("contextInfo");
            if (optInt == 2) {
                optInt = 6;
            } else if (!TextUtils.isEmpty(optString)) {
                optInt = 5;
            }
            jSONObject.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(optInt, optString, optString2).toJson());
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
        }
        LogUtils.d(f172a, "handlerJsonResultCallback, feedback: " + str3);
        return jSONObject.toString().getBytes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] b(String str, byte[] bArr) {
        String str2;
        String str3;
        String str4;
        LogUtils.i(f172a, "handlerSceneWakeupAsrCallback");
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
                    LogUtils.e(f172a, e.toString());
                    str4 = null;
                    if (TextUtils.isEmpty(str2)) {
                    }
                    LogUtils.i(f172a, "handlerSceneWakeupAsrCallback return, param is invalid");
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
            LogUtils.i(f172a, "handlerSceneWakeupAsrCallback return, param is invalid");
            return null;
        }
        if (g.containsKey(str2) && g.get(str2).getISceneWakeupAsrListener() != null) {
            LogUtils.t(f172a, "==+onWakeupAsr, keyword:" + str3 + ", semanticsTag:" + str4);
            g.get(str2).getISceneWakeupAsrListener().onWakeupAsr(str3, str4);
            LogUtils.t(f172a, "==-onWakeupAsr, keyword:" + str3 + ", semanticsTag:" + str4);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] c(String str, byte[] bArr) {
        String str2;
        LogUtils.i(f172a, "handlerSceneWakeupAsrCallback");
        if (bArr == null) {
            return null;
        }
        try {
            str2 = new JSONObject(new String(bArr)).optString(FocusCallbackDef.EXTRA_K_ASR_NEW_MAIN_WAKEUP_WORD);
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
            str2 = null;
        }
        Iterator<IMainWakeupWordSetListener> it = this.f.iterator();
        while (it.hasNext()) {
            IMainWakeupWordSetListener next = it.next();
            LogUtils.t(f172a, "==+onMainWakeupWordSet:" + str2 + ", listener count: " + this.c.size());
            next.onMainWakeupWordSet(str2);
            LogUtils.t(f172a, "==-onMainWakeupWordSet:" + str2);
        }
        return null;
    }

    public static TASAsrManager getInstance() {
        if (b == null) {
            synchronized (TASAsrManager.class) {
                if (b == null) {
                    b = new TASAsrManager();
                }
            }
        }
        return b;
    }

    public void addIAsrCommandListener(IAsrCommandListener iAsrCommandListener) {
        String str = f172a;
        StringBuilder sb = new StringBuilder();
        sb.append("+addIAsrCommandListener, listener:");
        sb.append(iAsrCommandListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.e.contains(iAsrCommandListener)) {
            this.e.add(iAsrCommandListener);
        }
        String str2 = f172a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-addIAsrCommandListener, listener:");
        sb2.append(iAsrCommandListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void addIAsrJsonResultListener(IAsrJsonResultListener iAsrJsonResultListener) {
        String str = f172a;
        StringBuilder sb = new StringBuilder();
        sb.append("+addIAsrJsonResultListener, listener:");
        sb.append(iAsrJsonResultListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.c.contains(iAsrJsonResultListener)) {
            this.c.add(iAsrJsonResultListener);
        }
        String str2 = f172a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-addIAsrJsonResultListener, listener:");
        sb2.append(iAsrJsonResultListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void addINewMainWakeupWordListener(IMainWakeupWordSetListener iMainWakeupWordSetListener) {
        String str = f172a;
        StringBuilder sb = new StringBuilder();
        sb.append("+addINewMainWakeupWordListener, listener:");
        sb.append(iMainWakeupWordSetListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.f.contains(iMainWakeupWordSetListener)) {
            this.f.add(iMainWakeupWordSetListener);
        }
        String str2 = f172a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-addINewMainWakeupWordListener, listener:");
        sb2.append(iMainWakeupWordSetListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void enableAsr(boolean z) {
        LogUtils.t(f172a, "+enableAsr, enable:" + z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ASR_ENABLE, z);
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_ENABLE, jSONObject.toString().getBytes());
        LogUtils.t(f172a, "-enableAsr, enable:" + z);
    }

    public void enableWakeup(boolean z) {
        LogUtils.t(f172a, "+enableWakeup, enable:" + z);
        this.h = Boolean.valueOf(z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_WAKEUP_ENABLE, z);
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_WAKEUP_ENABLE, jSONObject.toString().getBytes());
        LogUtils.t(f172a, "-enableWakeup, enable:" + z);
    }

    public void registerCommand(ArrayList<String> arrayList, String str) {
        if (arrayList == null || arrayList.isEmpty() || TextUtils.isEmpty(str)) {
            LogUtils.w(f172a, "registerCommandInner params is invalid");
            return;
        }
        LogUtils.t(f172a, "+registerCommand, semanticsTAg:" + str);
        ConcurrentHashMap<String, String> concurrentHashMap = new ConcurrentHashMap<>();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            concurrentHashMap.put(next, str);
            this.d.put(next, str);
        }
        a(concurrentHashMap);
        LogUtils.t(f172a, "-registerCommand, semanticsTAg:" + str);
    }

    public void removeIAsrCommandListener(IAsrCommandListener iAsrCommandListener) {
        String str = f172a;
        StringBuilder sb = new StringBuilder();
        sb.append("+removeIAsrCommandListener, listener:");
        sb.append(iAsrCommandListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.e.contains(iAsrCommandListener)) {
            this.e.remove(iAsrCommandListener);
        }
        String str2 = f172a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-removeIAsrCommandListener, listener:");
        sb2.append(iAsrCommandListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void removeIAsrJsonResultListener(IAsrJsonResultListener iAsrJsonResultListener) {
        String str = f172a;
        StringBuilder sb = new StringBuilder();
        sb.append("+removeIAsrJsonResultListener, listener:");
        sb.append(iAsrJsonResultListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.c.contains(iAsrJsonResultListener)) {
            this.c.remove(iAsrJsonResultListener);
        }
        String str2 = f172a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-removeIAsrJsonResultListener, listener:");
        sb2.append(iAsrJsonResultListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void removeINewMainWakeupWordListener(IMainWakeupWordSetListener iMainWakeupWordSetListener) {
        String str = f172a;
        StringBuilder sb = new StringBuilder();
        sb.append("+removeINewMainWakeupWordListener, listener:");
        sb.append(iMainWakeupWordSetListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.f.contains(iMainWakeupWordSetListener)) {
            this.f.remove(iMainWakeupWordSetListener);
        }
        String str2 = f172a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-removeINewMainWakeupWordListener, listener:");
        sb2.append(iMainWakeupWordSetListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void startASR() {
        startASR(null);
    }

    public void startASR(String str) {
        LogUtils.t(f172a, "+startASR, ttsTips:" + str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ASR_TTS_TIPS, str);
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_START, jSONObject.toString().getBytes());
        LogUtils.t(f172a, "-startASR, ttsTips:" + str);
    }

    public void startWakeupAsrScene(SceneWakeupAsrTool sceneWakeupAsrTool) {
        String str;
        String str2;
        String str3 = f172a;
        StringBuilder sb = new StringBuilder();
        sb.append("+startWakeupAsrScene(), sceneWakeupAsrTool:");
        if (sceneWakeupAsrTool == null) {
            str = "null";
        } else {
            str = ".mSceneId:" + sceneWakeupAsrTool.f174a;
        }
        sb.append(str);
        LogUtils.t(str3, sb.toString());
        a(sceneWakeupAsrTool);
        String str4 = f172a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-startWakeupAsrScene(), sceneWakeupAsrTool:");
        if (sceneWakeupAsrTool == null) {
            str2 = "null";
        } else {
            str2 = ".mSceneId:" + sceneWakeupAsrTool.f174a;
        }
        sb2.append(str2);
        LogUtils.t(str4, sb2.toString());
    }

    public void stopASR() {
        LogUtils.t(f172a, "+stopASR");
        a.a().a(ActionCallbackDef.ACTION_ASR_STOP, new byte[0]);
        LogUtils.t(f172a, "-stopASR");
    }

    public void stopWakeupAsrScene(SceneWakeupAsrTool sceneWakeupAsrTool) {
        if (sceneWakeupAsrTool == null || TextUtils.isEmpty(sceneWakeupAsrTool.getSceneId())) {
            LogUtils.i(f172a, "stopWakeupAsrScene return, param is invalid");
            return;
        }
        LogUtils.t(f172a, "+stopWakeupAsrScene(), sceneWakeupAsrTool.mSceneId:" + sceneWakeupAsrTool.f174a);
        String sceneId = sceneWakeupAsrTool.getSceneId();
        if (g.containsKey(sceneId)) {
            g.remove(sceneId);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_WAKEUP_SCENE_ID, sceneId);
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_WAKEUP_SCENE_STOP, jSONObject.toString().getBytes());
        LogUtils.t(f172a, "-stopWakeupAsrScene(), sceneWakeupAsrTool.mSceneId:" + sceneWakeupAsrTool.f174a);
    }

    public void unRegisterCommand(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            LogUtils.w(f172a, "unRegisterCommand params is invalid");
            return;
        }
        LogUtils.t(f172a, "+unRegisterCommand");
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            this.d.remove(next);
            jSONArray.put(next);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ASR_COMMAND, jSONArray);
        } catch (JSONException e) {
            LogUtils.e(f172a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_ASR_UNREG_COMMAND, jSONObject.toString().getBytes());
        LogUtils.t(f172a, "-unRegisterCommand");
    }
}
