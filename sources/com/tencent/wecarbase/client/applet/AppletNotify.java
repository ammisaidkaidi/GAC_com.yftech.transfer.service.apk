package com.tencent.wecarbase.client.applet;

import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.client.SpeechManager;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.common.ReflectUtils;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import com.tencent.wecarbase.helper.AsrHelper;
import com.tencent.wecarbase.speech.WakeupListener;
import com.tencent.wecarbase.taibaseui.popupview.IPopupViewListener;
import com.tencent.wecarbase.taibaseui.popupview.PopupViewManager;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.ThreadUtils;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppletNotify {
    private static final String NEGATIVE_SEMANTIC = "negative_semantic";
    private static final String POSITIVE_SEMANTIC = "positive_semantic";
    private static final String SCENE_ID = "scene_popup_view";
    private static volatile AppletNotify sInstance;
    private AsrHelper mAsrHelper;
    private final String TAG = getClass().getSimpleName();
    private final long MAX_PASS_TIME = 120;

    public void init() {
    }

    public static AppletNotify getInstance() {
        if (sInstance == null) {
            synchronized (AppletNotify.class) {
                if (sInstance == null) {
                    sInstance = new AppletNotify();
                }
            }
        }
        return sInstance;
    }

    public void handleMessage(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            LogUtils.d(this.TAG, "content = " + jSONObject2.toString());
            Long valueOf = Long.valueOf(jSONObject2.getLong("event_time"));
            LogUtils.d(this.TAG, "pass time = " + Math.abs((Long.valueOf(System.currentTimeMillis()).longValue() / 1000) - valueOf.longValue()));
            JSONObject jSONObject3 = jSONObject2.getJSONObject("tips_message");
            String string = jSONObject3.getString("tips");
            if (string.equals("")) {
                return;
            }
            String string2 = jSONObject3.getString("tts");
            String string3 = jSONObject3.getString("next_action");
            JSONObject jSONObject4 = jSONObject2.getJSONObject("mini_program");
            String string4 = jSONObject4.getString("url");
            String string5 = jSONObject4.getString("icon_url");
            HashMap hashMap = new HashMap();
            try {
                SpeechManager.getInstance().init(ContextHolder.getContext().getApplicationContext());
                if (this.mAsrHelper == null) {
                    this.mAsrHelper = new AsrHelper();
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(string3);
                hashMap.put(POSITIVE_SEMANTIC, arrayList);
            } catch (NoClassDefFoundError e) {
                Log.e(this.TAG, "NoClassDefFoundError:" + e.getMessage());
            }
            ReflectUtils.playTTS(string2);
            showPopupView(string, string2, string3, null, string5, new AnonymousClass1(string4, hashMap));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: com.tencent.wecarbase.client.applet.AppletNotify$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class AnonymousClass1 implements IPopupViewListener {
        final /* synthetic */ HashMap val$fMap;
        final /* synthetic */ String val$url;

        AnonymousClass1(String str, HashMap hashMap) {
            this.val$url = str;
            this.val$fMap = hashMap;
        }

        @Override // com.tencent.wecarbase.taibaseui.popupview.IPopupViewListener
        public void onPositiveSelection(boolean z) {
            LogUtils.d(AppletNotify.this.TAG, "onPositiveSelection isTouch " + z);
            PopupViewManager.getInstance().dismissPopupWindows();
            if (TextUtils.isEmpty(this.val$url) || !this.val$url.startsWith("moss://")) {
                return;
            }
            TaiAppletEntry.startAppletService(null, null, this.val$url);
        }

        @Override // com.tencent.wecarbase.taibaseui.popupview.IPopupViewListener
        public void onNegativeSelection(boolean z) {
            LogUtils.d(AppletNotify.this.TAG, "onNegativeSelection isTouch " + z);
            PopupViewManager.getInstance().dismissPopupWindows();
        }

        @Override // com.tencent.wecarbase.taibaseui.popupview.IPopupViewListener
        public void onPopupViewDismiss() {
            LogUtils.d(AppletNotify.this.TAG, "onPopupViewDismiss");
        }

        @Override // com.tencent.wecarbase.taibaseui.popupview.IPopupViewListener
        public void onAttachedToWindow() {
            TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.client.applet.AppletNotify.1.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (AppletNotify.this.mAsrHelper != null) {
                            AppletNotify.this.mAsrHelper.setWakeupGroup(AnonymousClass1.this.val$fMap);
                            AppletNotify.this.mAsrHelper.startWakeupScene(AppletNotify.SCENE_ID, new WakeupListener() { // from class: com.tencent.wecarbase.client.applet.AppletNotify.1.1.1
                                public void onWakeupAsr(String str, String str2) {
                                    LogUtils.d(AppletNotify.this.TAG, "onWakeupAsr, keyword = " + str + ", semanticsTag = " + str2);
                                    if (((str2.hashCode() == -1515901620 && str2.equals(AppletNotify.POSITIVE_SEMANTIC)) ? (char) 0 : (char) 65535) != 0) {
                                        return;
                                    }
                                    LogUtils.d(AppletNotify.this.TAG, "START_FLIGHT_AI_PUSH");
                                    ReflectUtils.playTTS("好的，为您打开小程序");
                                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.wecarbase.client.applet.AppletNotify.1.1.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            PopupViewManager.getInstance().dismissPopupWindows();
                                        }
                                    });
                                    if (TextUtils.isEmpty(AnonymousClass1.this.val$url) || !AnonymousClass1.this.val$url.startsWith("moss://")) {
                                        return;
                                    }
                                    TaiAppletEntry.startAppletService(null, null, AnonymousClass1.this.val$url);
                                }
                            });
                        }
                    } catch (NoClassDefFoundError e) {
                        Log.e(AppletNotify.this.TAG, "NoClassDefFoundError:" + e.getMessage());
                    }
                }
            });
            LogUtils.d(AppletNotify.this.TAG, "onAttachedToWindow ");
        }

        @Override // com.tencent.wecarbase.taibaseui.popupview.IPopupViewListener
        public void onDetachedFromWindow() {
            LogUtils.d(AppletNotify.this.TAG, "onDetachedFromWindow ");
            try {
                if (AppletNotify.this.mAsrHelper != null) {
                    AppletNotify.this.mAsrHelper.stopWakeupScene();
                }
            } catch (NoClassDefFoundError e) {
                Log.e(AppletNotify.this.TAG, "NoClassDefFoundError:" + e.getMessage());
            }
        }
    }

    public void showPopupView(String str, String str2, String str3, Integer num, String str4, IPopupViewListener iPopupViewListener) {
        PopupViewManager.getInstance().showPopupWebAppAutoClose(str, str2, str3, num, str4, iPopupViewListener);
    }
}
