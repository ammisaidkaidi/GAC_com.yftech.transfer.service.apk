package com.tencent.wecarspeech.sdk;

import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.TASSystemManager;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASMediaManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f190a = LogUtils.GLOBAL_LOG_TAG + TASMediaManager.class.getSimpleName();
    private static volatile TASMediaManager b;
    private IVideoClient c;
    private IMediaControlClient d;
    private boolean f;
    private String g;
    private String h;
    private ArrayList<TASSystemManager.ThirdApp> e = new ArrayList<>();
    private c.a i = new c.a() { // from class: com.tencent.wecarspeech.sdk.TASMediaManager.1
        @Override // com.tencent.wecarspeech.sdk.c.a
        public void a(boolean z) {
            LogUtils.t(TASMediaManager.f190a, "+onSdkServiceConnectEvent, connected:" + z);
            if (TASMediaManager.this.c != null) {
                com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_VIDEO_SET_ENABLED, new byte[0]);
            }
            if (TASMediaManager.this.d != null) {
                TASMediaManager.this.setMediaControlClient(TASMediaManager.this.d, TASMediaManager.this.e);
            }
            if (TASMediaManager.this.f && !TextUtils.isEmpty(TASMediaManager.this.h)) {
                TASMediaManager.this.notifyPlayStatus(TASMediaManager.this.h, TASMediaManager.this.f);
                TASMediaManager.this.f = false;
            }
            if (!TextUtils.isEmpty(TASMediaManager.this.g) && !TextUtils.isEmpty(TASMediaManager.this.h)) {
                TASMediaManager.this.notifyMediaPlayInfo(TASMediaManager.this.h, TASMediaManager.this.g);
                TASMediaManager.this.g = null;
            }
            TASMediaManager.this.h = null;
            LogUtils.t(TASMediaManager.f190a, "-onSdkServiceConnectEvent, connected:" + z);
        }

        @Override // com.tencent.wecarspeech.sdk.c.a
        public byte[] a(String str, String str2, byte[] bArr, int i) {
            String str3;
            String str4;
            String str5 = TASMediaManager.f190a;
            StringBuilder sb = new StringBuilder();
            sb.append("+callback, caller:");
            sb.append(str);
            sb.append(" ,caller back:");
            sb.append(str2);
            sb.append(" ,data:");
            sb.append(bArr == null ? "null" : new String(bArr));
            LogUtils.t(str5, sb.toString());
            byte[] bArr2 = null;
            if ((!str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_VIDEO) || TASMediaManager.this.c != null) && (!str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_CONTROL) || TASMediaManager.this.d != null)) {
                String a2 = str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_VIDEO) ? TASMediaManager.this.a(bArr) : "";
                char c = 65535;
                switch (str2.hashCode()) {
                    case -2112786181:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_VIDEO_PLAY_USB)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1298285339:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_VIDEO_PLAY)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -237865193:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_CANCEL_FAVORITE)) {
                            c = '\t';
                            break;
                        }
                        break;
                    case -160375333:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_GET_PLAY_STATUS)) {
                            c = 7;
                            break;
                        }
                        break;
                    case 461129130:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_PRE)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 762975037:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_PAUSE)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1410029772:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_NEXT)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1410095373:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_PLAY)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1553156316:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_GET_CURRENT_INFO)) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1795181858:
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_ADD_FAVORITE)) {
                            c = '\b';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        LogUtils.t(TASMediaManager.f190a, "==+playVideo");
                        TASMediaManager.this.c.playVideo();
                        str3 = TASMediaManager.f190a;
                        str4 = "==-playVideo";
                        break;
                    case 1:
                        LogUtils.t(TASMediaManager.f190a, "==+playUSBVideo");
                        TASMediaManager.this.c.playUSBVideo();
                        str3 = TASMediaManager.f190a;
                        str4 = "==-playUSBVideo";
                        break;
                    case 2:
                        LogUtils.t(TASMediaManager.f190a, "==+play");
                        TASMediaManager.this.d.play(a2);
                        str3 = TASMediaManager.f190a;
                        str4 = "==-play";
                        break;
                    case 3:
                        LogUtils.t(TASMediaManager.f190a, "==+pause");
                        TASMediaManager.this.d.pause(a2);
                        str3 = TASMediaManager.f190a;
                        str4 = "==-pause";
                        break;
                    case 4:
                        LogUtils.t(TASMediaManager.f190a, "==+next");
                        TASMediaManager.this.d.next(a2);
                        str3 = TASMediaManager.f190a;
                        str4 = "==-next";
                        break;
                    case 5:
                        LogUtils.t(TASMediaManager.f190a, "==+pre");
                        TASMediaManager.this.d.pre(a2);
                        str3 = TASMediaManager.f190a;
                        str4 = "==-pre";
                        break;
                    case 6:
                        LogUtils.t(TASMediaManager.f190a, "==+getCurrentPlayInfo");
                        TASMediaManager.this.d.getCurrentPlayInfo(a2);
                        str3 = TASMediaManager.f190a;
                        str4 = "==-getCurrentPlayInfo";
                        break;
                    case 7:
                        LogUtils.t(TASMediaManager.f190a, "==+getPlayStatus");
                        TASMediaManager.this.d.getPlayStatus(a2);
                        str3 = TASMediaManager.f190a;
                        str4 = "==-getPlayStatus";
                        break;
                    case '\b':
                        LogUtils.t(TASMediaManager.f190a, "==+addFavorite");
                        bArr2 = TASMediaManager.this.a(TASMediaManager.this.d.addFavorite(a2));
                        str3 = TASMediaManager.f190a;
                        str4 = "==-addFavorite";
                        break;
                    case '\t':
                        LogUtils.t(TASMediaManager.f190a, "==+cancelFavorite");
                        bArr2 = TASMediaManager.this.a(TASMediaManager.this.d.cancelFavorite(a2));
                        str3 = TASMediaManager.f190a;
                        str4 = "==-cancelFavorite";
                        break;
                }
            } else {
                str3 = TASMediaManager.f190a;
                str4 = "-callback mIVideoClient OR mIMediaControlClient == null";
            }
            LogUtils.t(str3, str4);
            String str6 = TASMediaManager.f190a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-callback, caller:");
            sb2.append(str);
            sb2.append(" ,caller back:");
            sb2.append(str2);
            sb2.append(" ,data:");
            sb2.append(bArr == null ? "null" : new String(bArr));
            LogUtils.t(str6, sb2.toString());
            return bArr2;
        }
    };

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IMediaControlClient {
        int addFavorite(String str);

        int cancelFavorite(String str);

        void getCurrentPlayInfo(String str);

        @Deprecated
        void getPlayStatus(String str);

        void next(String str);

        void pause(String str);

        void play(String str);

        void pre(String str);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IVideoClient {
        void playUSBVideo();

        void playVideo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends Thread {

        /* renamed from: a, reason: collision with root package name */
        String f192a;
        String b;

        a(String str, String str2) {
            this.f192a = str;
            this.b = str2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            TASMediaManager.this.a(this.f192a, this.b);
        }
    }

    private TASMediaManager() {
        c.a().a(TASMediaManager.class.getSimpleName(), this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return new JSONObject(new String(bArr)).optString("e_app_pkg_name");
        } catch (JSONException e) {
            LogUtils.e(f190a, e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        String str3 = f190a;
        StringBuilder sb = new StringBuilder();
        sb.append("+notifyMediaPlayInfo, packageName: + ");
        sb.append(str);
        sb.append(";  playinfo:");
        sb.append(str2 == null ? "null" : str2);
        LogUtils.t(str3, sb.toString());
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_app_pkg_name", str);
            jSONObject.put(ActionCallbackDef.EXTRA_K_MEDIA_PLAY_INFO, str2);
        } catch (JSONException e) {
            LogUtils.e(f190a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MEDIA_CONTROL_INFO, jSONObject.toString().getBytes());
        String str4 = f190a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-notifyMediaPlayInfo, playinfo:");
        if (str2 == null) {
            str2 = "null";
        }
        sb2.append(str2);
        LogUtils.t(str4, sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] a(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(i).toJson());
        } catch (JSONException e) {
            LogUtils.e(f190a, e.toString());
        }
        return jSONObject.toString().getBytes();
    }

    public static TASMediaManager getInstance() {
        if (b == null) {
            synchronized (TASMediaManager.class) {
                if (b == null) {
                    b = new TASMediaManager();
                }
            }
        }
        return b;
    }

    public void notifyMediaPlayInfo(String str, String str2) {
        this.h = str;
        this.g = str2;
        new a(str, str2).start();
    }

    public void notifyPlayStatus(String str, boolean z) {
        LogUtils.t(f190a, "+notifyPlayStatus, packageName: + " + str + "; isPlaying:" + z);
        if (str == null) {
            return;
        }
        this.h = str;
        this.f = z;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("e_app_pkg_name", str);
            jSONObject.put(ActionCallbackDef.EXTRA_K_MEDIA_PLAY_STATUS, z);
        } catch (JSONException e) {
            LogUtils.e(f190a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MEDIA_CONTROL_PLAY_STATUS, jSONObject.toString().getBytes());
        LogUtils.t(f190a, "-notifyPlayStatus, isPlaying:" + z);
    }

    public void setMediaControlClient(IMediaControlClient iMediaControlClient, ArrayList<TASSystemManager.ThirdApp> arrayList) {
        String str = f190a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setMediaControlClient, mediaControlClient:");
        sb.append(iMediaControlClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.d = iMediaControlClient;
        this.e = arrayList;
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<TASSystemManager.ThirdApp> it = arrayList.iterator();
            while (it.hasNext()) {
                TASSystemManager.ThirdApp next = it.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("e_app_pkg_name", next.getPkgName());
                jSONObject2.put(ActionCallbackDef.EXTRA_K_APP_NAME, next.getAppName());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put(ActionCallbackDef.EXTRA_K_MEDIA_CONTROL_APPS, jSONArray);
        } catch (JSONException e) {
            LogUtils.e(f190a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MEDIA_CONTROL_SET_ENABLED, jSONObject.toString().getBytes());
        String str2 = f190a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setMediaControlClient, mediaClient:");
        sb2.append(iMediaControlClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void setVideoClient(IVideoClient iVideoClient) {
        String str = f190a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setVideoClient, videoClient:");
        sb.append(iVideoClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.c = iVideoClient;
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_VIDEO_SET_ENABLED, new byte[0]);
        String str2 = f190a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setVideoClient, videoClient:");
        sb2.append(iVideoClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }
}
