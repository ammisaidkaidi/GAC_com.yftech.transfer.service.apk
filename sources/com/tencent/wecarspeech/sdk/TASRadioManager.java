package com.tencent.wecarspeech.sdk;

import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.c;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASRadioManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f195a = LogUtils.GLOBAL_LOG_TAG + TASRadioManager.class.getSimpleName();
    private static volatile TASRadioManager b;
    private IRadioClient c;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IRadioClient {
        boolean closeApp(String str);

        boolean openApp(String str);

        @Deprecated
        boolean pauseRadio();

        boolean playAMChannel(String str);

        boolean playChannel(String str, String str2);

        boolean playFMChannel(String str);

        @Deprecated
        boolean playNextChannel();

        @Deprecated
        boolean playPrevChannel();

        @Deprecated
        boolean playRadio();

        boolean startAutoScan();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a implements c.a {
        private a() {
        }

        @Override // com.tencent.wecarspeech.sdk.c.a
        public void a(boolean z) {
            LogUtils.t(TASRadioManager.f195a, "+onSdkServiceConnectEvent, connected:" + z);
            if (TASRadioManager.this.c != null) {
                com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_RADIO_SET_ENABLED, new byte[0]);
            }
            LogUtils.t(TASRadioManager.f195a, "-onSdkServiceConnectEvent, connected:" + z);
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x02cc  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0305  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0308  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0130  */
        @Override // com.tencent.wecarspeech.sdk.c.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public byte[] a(String str, String str2, byte[] bArr, int i) {
            String str3;
            boolean startAutoScan;
            String str4;
            String str5;
            String str6;
            String str7;
            StringBuilder sb;
            String str8;
            String str9;
            StringBuilder sb2;
            String str10;
            String str11 = TASRadioManager.f195a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("+callback, caller:");
            sb3.append(str);
            sb3.append(" ,caller back:");
            sb3.append(str2);
            sb3.append(" ,data:");
            sb3.append(bArr == null ? "null" : new String(bArr));
            LogUtils.t(str11, sb3.toString());
            String str12 = null;
            if (!str2.startsWith(FocusCallbackDef.CALLBACK_FOCUS_RADIO)) {
                str9 = TASRadioManager.f195a;
                sb2 = new StringBuilder();
                sb2.append("-callback, caller:");
                sb2.append(str);
                sb2.append(" ,caller back:");
                sb2.append(str2);
                sb2.append(" ,data:");
                if (bArr != null) {
                    str10 = new String(bArr);
                    sb2.append(str10);
                    LogUtils.t(str9, sb2.toString());
                    return null;
                }
                str10 = "null";
                sb2.append(str10);
                LogUtils.t(str9, sb2.toString());
                return null;
            }
            if (TASRadioManager.this.c == null) {
                LogUtils.w(TASRadioManager.f195a, "handlerRadioFocus return, mIRadioClient == null");
                str9 = TASRadioManager.f195a;
                sb2 = new StringBuilder();
                sb2.append("-callback, caller:");
                sb2.append(str);
                sb2.append(" ,caller back:");
                sb2.append(str2);
                sb2.append(" ,data:");
                if (bArr != null) {
                    str10 = new String(bArr);
                    sb2.append(str10);
                    LogUtils.t(str9, sb2.toString());
                    return null;
                }
                str10 = "null";
                sb2.append(str10);
                LogUtils.t(str9, sb2.toString());
                return null;
            }
            if (bArr == null || bArr.length <= 0) {
                str3 = null;
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    str3 = jSONObject.optString(FocusCallbackDef.EXTRA_K_RADIO_NAME);
                    try {
                        str12 = jSONObject.optString(FocusCallbackDef.EXTRA_K_RADIO_CODE);
                    } catch (JSONException e) {
                        e = e;
                        LogUtils.e(TASRadioManager.f195a, e.toString());
                        if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_FM)) {
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(startAutoScan ? 1 : 0).toJson());
                        String str13 = TASRadioManager.f195a;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("-callback, caller:");
                        sb4.append(str);
                        sb4.append(" ,caller back:");
                        sb4.append(str2);
                        sb4.append(" ,data:");
                        sb4.append(bArr != null ? "null" : new String(bArr));
                        LogUtils.t(str13, sb4.toString());
                        return jSONObject2.toString().getBytes();
                    }
                } catch (JSONException e2) {
                    e = e2;
                    str3 = null;
                }
            }
            if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_FM)) {
                if (str12 != null) {
                    LogUtils.t(TASRadioManager.f195a, "==+playFMChannel(radioCode:" + str12 + ")");
                    startAutoScan = TASRadioManager.this.c.playFMChannel(str12);
                    str4 = TASRadioManager.f195a;
                    sb = new StringBuilder();
                    str8 = "==-playFMChannel(radioCode:";
                    sb.append(str8);
                    sb.append(str12);
                    sb.append(")");
                    str5 = sb.toString();
                    LogUtils.t(str4, str5);
                }
                str6 = TASRadioManager.f195a;
                str7 = "handlerRadioFocus return, radioCode == null";
                LogUtils.w(str6, str7);
                startAutoScan = false;
            } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_AM)) {
                if (str12 != null) {
                    LogUtils.t(TASRadioManager.f195a, "==+playAMChannel(radioCode:" + str12 + ")");
                    startAutoScan = TASRadioManager.this.c.playAMChannel(str12);
                    str4 = TASRadioManager.f195a;
                    sb = new StringBuilder();
                    str8 = "==-playAMChannel(radioCode:";
                    sb.append(str8);
                    sb.append(str12);
                    sb.append(")");
                    str5 = sb.toString();
                    LogUtils.t(str4, str5);
                }
                str6 = TASRadioManager.f195a;
                str7 = "handlerRadioFocus return, radioCode == null";
                LogUtils.w(str6, str7);
                startAutoScan = false;
            } else {
                if (!str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_CHANNEL)) {
                    if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_OPEN)) {
                        LogUtils.t(TASRadioManager.f195a, "==+openApp()");
                        startAutoScan = TASRadioManager.this.c.openApp(str3);
                    } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_CLOSE)) {
                        LogUtils.t(TASRadioManager.f195a, "==+openApp()");
                        startAutoScan = TASRadioManager.this.c.closeApp(str3);
                    } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY)) {
                        LogUtils.t(TASRadioManager.f195a, "==+playRadio()");
                        startAutoScan = TASRadioManager.this.c.playRadio();
                        str4 = TASRadioManager.f195a;
                        str5 = "==-playRadio()";
                    } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PAUSE)) {
                        LogUtils.t(TASRadioManager.f195a, "==+pauseRadio()");
                        startAutoScan = TASRadioManager.this.c.pauseRadio();
                        str4 = TASRadioManager.f195a;
                        str5 = "==-pauseRadio()";
                    } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_PREV)) {
                        LogUtils.t(TASRadioManager.f195a, "==+playPrevChannel()");
                        startAutoScan = TASRadioManager.this.c.playPrevChannel();
                        str4 = TASRadioManager.f195a;
                        str5 = "==-playPrevChannel()";
                    } else if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_PLAY_NEXT)) {
                        LogUtils.t(TASRadioManager.f195a, "==+playNextChannel()");
                        startAutoScan = TASRadioManager.this.c.playNextChannel();
                        str4 = TASRadioManager.f195a;
                        str5 = "==-playNextChannel()";
                    } else {
                        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_RADIO_START_SCAN)) {
                            LogUtils.t(TASRadioManager.f195a, "==+startAutoScan()");
                            startAutoScan = TASRadioManager.this.c.startAutoScan();
                            str4 = TASRadioManager.f195a;
                            str5 = "==-startAutoScan()";
                        }
                        startAutoScan = false;
                    }
                    str4 = TASRadioManager.f195a;
                    str5 = "==-openApp()";
                } else if (str3 == null && str12 == null) {
                    str6 = TASRadioManager.f195a;
                    str7 = "handlerRadioFocus return, radioChannel == null and radioCode == null";
                    LogUtils.w(str6, str7);
                    startAutoScan = false;
                } else {
                    LogUtils.t(TASRadioManager.f195a, "==+playChannel(radioChannel:" + str3 + ", radioCode:" + str12 + " )");
                    startAutoScan = TASRadioManager.this.c.playChannel(str3, str12);
                    str4 = TASRadioManager.f195a;
                    str5 = "==-playChannel(radioChannel:" + str3 + ", radioCode:" + str12 + " )";
                }
                LogUtils.t(str4, str5);
            }
            JSONObject jSONObject22 = new JSONObject();
            try {
                jSONObject22.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(startAutoScan ? 1 : 0).toJson());
            } catch (JSONException e3) {
                LogUtils.e(TASRadioManager.f195a, e3.toString());
            }
            String str132 = TASRadioManager.f195a;
            StringBuilder sb42 = new StringBuilder();
            sb42.append("-callback, caller:");
            sb42.append(str);
            sb42.append(" ,caller back:");
            sb42.append(str2);
            sb42.append(" ,data:");
            sb42.append(bArr != null ? "null" : new String(bArr));
            LogUtils.t(str132, sb42.toString());
            return jSONObject22.toString().getBytes();
        }
    }

    private TASRadioManager() {
        c.a().a(TASRadioManager.class.getSimpleName(), new a());
    }

    public static TASRadioManager getInstance() {
        if (b == null) {
            synchronized (TASRadioManager.class) {
                if (b == null) {
                    b = new TASRadioManager();
                }
            }
        }
        return b;
    }

    public void notifyPlayStatus(boolean z) {
        LogUtils.t(f195a, "+notifyPlayStatus, isPlaying:" + z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_RADIO_PLAY_STATUS, z);
        } catch (JSONException e) {
            LogUtils.e(f195a, e.toString());
        }
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_RADIO_PLAY_STATUS, jSONObject.toString().getBytes());
        LogUtils.t(f195a, "-notifyPlayStatus, isPlaying:" + z);
    }

    public void setRadioClient(IRadioClient iRadioClient) {
        String str = f195a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setRadioClient");
        sb.append(iRadioClient == null ? "" : ":null");
        LogUtils.t(str, sb.toString());
        this.c = iRadioClient;
        com.tencent.wecarspeech.sdk.a.a().a(ActionCallbackDef.ACTION_RADIO_SET_ENABLED, new byte[0]);
        String str2 = f195a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setRadioClient");
        sb2.append(iRadioClient == null ? "" : ":null");
        LogUtils.t(str2, sb2.toString());
    }
}
