package com.tencent.wecarspeech.sdk.manager;

import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.api.IMediaControlClient;
import com.tencent.wecarspeech.sdk.api.IVideoClient;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.model.ThirdApp;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SSAMediaManager extends b {
    private static volatile SSAMediaManager b;
    private IVideoClient<ActionRet> c;
    private IMediaControlClient<ActionRet> d;
    private ArrayList<ThirdApp> e = new ArrayList<>();
    private boolean f;
    private String g;
    private String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class a extends Thread {

        /* renamed from: a, reason: collision with root package name */
        String f221a;
        String b;

        a(String str, String str2) {
            this.f221a = str;
            this.b = str2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SSAMediaManager.this.a(this.f221a, this.b);
        }
    }

    private SSAMediaManager() {
    }

    private String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return new JSONObject(new String(bArr)).optString("e_app_pkg_name");
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        String str3 = this.f207a;
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
            LogUtils.e(this.f207a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MEDIA_CONTROL_INFO, jSONObject.toString().getBytes());
        String str4 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-notifyMediaPlayInfo, playinfo:");
        if (str2 == null) {
            str2 = "null";
        }
        sb2.append(str2);
        LogUtils.t(str4, sb2.toString());
    }

    public static SSAMediaManager getInstance() {
        if (b == null) {
            synchronized (SSAMediaManager.class) {
                if (b == null) {
                    b = new SSAMediaManager();
                }
            }
        }
        return b;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(this.f207a, "+onSdkServiceConnectEvent, connected:" + z);
        if (this.c != null) {
            com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_VIDEO_SET_ENABLED, new byte[0]);
        }
        if (this.d != null) {
            setMediaControlClient(this.d, this.e);
        }
        if (this.f && !TextUtils.isEmpty(this.h)) {
            notifyPlayStatus(this.h, this.f);
            this.f = false;
        }
        if (!TextUtils.isEmpty(this.g) && !TextUtils.isEmpty(this.h)) {
            notifyMediaPlayInfo(this.h, this.g);
            this.g = null;
        }
        this.h = null;
        LogUtils.t(this.f207a, "-onSdkServiceConnectEvent, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        String str3;
        String str4;
        String str5 = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+callback, caller:");
        sb.append(str);
        sb.append(" ,caller back:");
        sb.append(str2);
        sb.append(" ,data:");
        sb.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str5, sb.toString());
        ActionRet actionRet = null;
        if ((str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_VIDEO) && this.c == null) || (str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_CONTROL) && this.d == null)) {
            LogUtils.t(this.f207a, "-callback mIVideoClient OR mIMediaControlClient == null");
            return null;
        }
        String a2 = str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_VIDEO) ? a(bArr) : "";
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
            case 1795181858:
                if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_MEDIA_ADD_FAVORITE)) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                LogUtils.t(this.f207a, "==+playVideo");
                actionRet = this.c.playVideo();
                str3 = this.f207a;
                str4 = "==-playVideo";
                break;
            case 1:
                LogUtils.t(this.f207a, "==+playUSBVideo");
                actionRet = this.c.playUSBVideo();
                str3 = this.f207a;
                str4 = "==-playUSBVideo";
                break;
            case 2:
                LogUtils.t(this.f207a, "==+play");
                actionRet = this.d.play(a2);
                str3 = this.f207a;
                str4 = "==-play";
                break;
            case 3:
                LogUtils.t(this.f207a, "==+pause");
                actionRet = this.d.pause(a2);
                str3 = this.f207a;
                str4 = "==-pause";
                break;
            case 4:
                LogUtils.t(this.f207a, "==+next");
                actionRet = this.d.next(a2);
                str3 = this.f207a;
                str4 = "==-next";
                break;
            case 5:
                LogUtils.t(this.f207a, "==+pre");
                actionRet = this.d.pre(a2);
                str3 = this.f207a;
                str4 = "==-pre";
                break;
            case 6:
                LogUtils.t(this.f207a, "==+addFavorite");
                actionRet = this.d.addFavorite(a2);
                str3 = this.f207a;
                str4 = "==-addFavorite";
                break;
            case 7:
                LogUtils.t(this.f207a, "==+cancelFavorite");
                actionRet = this.d.cancelFavorite(a2);
                str3 = this.f207a;
                str4 = "==-cancelFavorite";
                break;
        }
        LogUtils.t(str3, str4);
        String str6 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-callback, caller:");
        sb2.append(str);
        sb2.append(" ,caller back:");
        sb2.append(str2);
        sb2.append(" ,data:");
        sb2.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str6, sb2.toString());
        return a(actionRet);
    }

    public void notifyMediaPlayInfo(String str, String str2) {
        this.h = str;
        this.g = str2;
        new a(str, str2).start();
    }

    public void notifyPlayStatus(String str, boolean z) {
        LogUtils.t(this.f207a, "+notifyPlayStatus, packageName: + " + str + "; isPlaying:" + z);
        if (str == null) {
            return;
        }
        this.h = str;
        this.f = z;
        a("e_app_pkg_name", (Object) str);
        a(ActionCallbackDef.EXTRA_K_MEDIA_PLAY_STATUS, z);
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MEDIA_CONTROL_PLAY_STATUS, a());
        LogUtils.t(this.f207a, "-notifyPlayStatus, isPlaying:" + z);
    }

    public void setMediaControlClient(IMediaControlClient<ActionRet> iMediaControlClient, ArrayList<ThirdApp> arrayList) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setMediaControlClient, mediaControlClient:");
        sb.append(iMediaControlClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.d = iMediaControlClient;
        this.e = arrayList;
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<ThirdApp> it = arrayList.iterator();
            while (it.hasNext()) {
                ThirdApp next = it.next();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("e_app_pkg_name", next.getPkgName());
                jSONObject2.put(ActionCallbackDef.EXTRA_K_APP_NAME, next.getAppName());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put(ActionCallbackDef.EXTRA_K_MEDIA_CONTROL_APPS, jSONArray);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_MEDIA_CONTROL_SET_ENABLED, jSONObject.toString().getBytes());
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setMediaControlClient, mediaClient:");
        sb2.append(iMediaControlClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void setVideoClient(IVideoClient<ActionRet> iVideoClient) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setVideoClient, videoClient:");
        sb.append(iVideoClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.c = iVideoClient;
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_VIDEO_SET_ENABLED, new byte[0]);
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setVideoClient, videoClient:");
        sb2.append(iVideoClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }
}
