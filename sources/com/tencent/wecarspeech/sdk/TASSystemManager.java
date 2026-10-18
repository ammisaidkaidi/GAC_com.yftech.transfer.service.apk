package com.tencent.wecarspeech.sdk;

import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class TASSystemManager extends b {
    private static final String b = LogUtils.GLOBAL_LOG_TAG + TASSystemManager.class.getSimpleName();
    private static volatile TASSystemManager c;
    private IVolumeClient d;
    private IScreenClient e;
    private IWirelessClient f;
    private ThirdAppClient g;
    private ISystemClient h;
    private ArrayList<ThirdApp> i = new ArrayList<>();

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IScreenClient {
        boolean decBrightness();

        boolean decBrightnessLevel(int i);

        boolean incBrightness();

        boolean incBrightnessLevel(int i);

        boolean maxBrightness();

        boolean minBrightness();

        boolean muteScreen();

        boolean setBrightness(int i);

        boolean wakeScreen();
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ISystemClient {
        String getSysCurrentNavi();

        boolean openDomainHelp(String str, String str2);

        boolean openGlobalHelp();

        String toggleAction(boolean z, String str, String str2, int i);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IVolumeClient {
        int decVolume(int i);

        int incVolume(int i);

        int maxVolume(int i);

        int minVolume(int i);

        int muteVolume(boolean z, int i);

        int setVolume(int i, int i2);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface IWirelessClient {
        int enableBluetooth(boolean z);

        int enableHotsPot(boolean z);

        int enableMobileNetwork(boolean z);

        int enableWifi(boolean z);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ThirdApp {

        /* renamed from: a, reason: collision with root package name */
        private String f202a;
        private String b;

        public ThirdApp(String str, String str2) {
            this.f202a = str;
            this.b = str2;
        }

        public String getAppName() {
            return this.b;
        }

        public String getPkgName() {
            return this.f202a;
        }
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ThirdAppClient {
        String closeApp(String str);

        String openApp(String str);
    }

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class VolumeChannel {
        public static final int CHANNEL_ALL = 0;
        public static final int CHANNEL_BT_MUSIC = 4;
        public static final int CHANNEL_BT_PHONE = 3;
        public static final int CHANNEL_MEDIA = 2;
        public static final int CHANNEL_NAVI = 1;
        public static final int CHANNEL_RADIO = 5;
        public static final int CHANNEL_SYS = 6;
        public static final int CHANNEL_WECHAT_CALL = 7;
        public static final int CHANNEL_WECHAT_MSG = 8;
    }

    protected TASSystemManager() {
    }

    private byte[] a(String str, String str2, byte[] bArr) {
        boolean z;
        char c2;
        if (this.f == null) {
            LogUtils.w(b, "handlerWireless return, mIWirelessClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerWireless");
        int i = 0;
        try {
            z = new JSONObject(new String(bArr)).optBoolean(FocusCallbackDef.EXTRA_K_SYS_WIRELESS_OPEN_CLOSE);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
            z = false;
        }
        int hashCode = str.hashCode();
        if (hashCode == -1880409693) {
            if (str.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_BT)) {
                c2 = 2;
            }
            c2 = 65535;
        } else if (hashCode == -1724542526) {
            if (str.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_HOTSPOT)) {
                c2 = 3;
            }
            c2 = 65535;
        } else if (hashCode != -949685069) {
            if (hashCode == 1108134950 && str.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_WIFI)) {
                c2 = 0;
            }
            c2 = 65535;
        } else {
            if (str.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_MOBILE_NETWORK)) {
                c2 = 1;
            }
            c2 = 65535;
        }
        switch (c2) {
            case 0:
                i = this.f.enableWifi(z);
                break;
            case 1:
                i = this.f.enableMobileNetwork(z);
                break;
            case 2:
                i = this.f.enableBluetooth(z);
                break;
            case 3:
                i = this.f.enableHotsPot(z);
                break;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(i != 0 ? i == 1 ? 1 : 4 : 2).toJson());
        } catch (JSONException e2) {
            LogUtils.e(b, e2.toString());
        }
        LogUtils.t(b, "-handlerWireless");
        return jSONObject.toString().getBytes();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] a(String str, byte[] bArr) {
        boolean z;
        String str2;
        String closeApp;
        String str3;
        StringBuilder sb;
        String str4;
        JSONObject jSONObject;
        if (this.g == null) {
            LogUtils.w(b, "handlerSysThirdAppFocus return, mThirdAppClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerSysThirdAppFocus");
        boolean z2 = false;
        try {
            jSONObject = new JSONObject(new String(bArr));
            z = jSONObject.optBoolean(FocusCallbackDef.EXTRA_K_SYS_THIRDAPP_OPEN_CLOSE);
        } catch (JSONException e) {
            e = e;
        }
        try {
            str2 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_THIRDAPP_PKG_NAME);
        } catch (JSONException e2) {
            e = e2;
            z2 = z;
            LogUtils.e(b, e.toString());
            z = z2;
            str2 = null;
            if (!TextUtils.isEmpty(str2)) {
            }
            LogUtils.t(b, "-handlerSysThirdAppFocus, feedback = null");
            return null;
        }
        if (!TextUtils.isEmpty(str2)) {
            if (z) {
                LogUtils.t(b, "==+openApp(" + str2 + ")");
                closeApp = this.g.openApp(str2);
                str3 = b;
                sb = new StringBuilder();
                str4 = "==-openApp(";
            } else {
                LogUtils.t(b, "==+closeApp(" + str2 + ")");
                closeApp = this.g.closeApp(str2);
                str3 = b;
                sb = new StringBuilder();
                str4 = "==-closeApp(";
            }
            sb.append(str4);
            sb.append(str2);
            sb.append(")");
            LogUtils.t(str3, sb.toString());
            if (!TextUtils.isEmpty(closeApp)) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = new JSONObject(closeApp);
                    String optString = jSONObject3.optString("message");
                    int optInt = jSONObject3.optInt(NotificationCompat.CATEGORY_STATUS);
                    if (!TextUtils.isEmpty(optString)) {
                        optInt = 5;
                    }
                    jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(optInt, optString).toJson());
                } catch (JSONException e3) {
                    LogUtils.e(b, e3.toString());
                }
                LogUtils.d(b, "handlerSysThirdAppFocus, feedback:" + closeApp);
                return jSONObject2.toString().getBytes();
            }
        }
        LogUtils.t(b, "-handlerSysThirdAppFocus, feedback = null");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0121 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] b(String str, byte[] bArr) {
        boolean z;
        String str2;
        String str3;
        String str4;
        if (this.h == null) {
            LogUtils.w(b, "handlerSysToggleFocus return, mISystemClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerSysToggleFocus");
        int i = 0;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            z = jSONObject.optBoolean(FocusCallbackDef.EXTRA_K_SYS_TOGGLE_OPEN_CLOSE);
            try {
                str2 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_TOGGLE_NAME);
                try {
                    str3 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_RAWTEXT);
                    try {
                        i = jSONObject.optInt(FocusCallbackDef.EXTRA_K_SYS_DOA_DIRECTION);
                    } catch (JSONException e) {
                        e = e;
                        LogUtils.e(b, e.toString());
                        LogUtils.t(b, "==+toggleAction(" + z + ", " + str2 + ", " + str3 + "," + i + ")");
                        str4 = this.h.toggleAction(z, str2, str3, i);
                        LogUtils.t(b, "==-toggleAction(" + z + ", " + str2 + ", " + str3 + "," + i + ")");
                        if (TextUtils.isEmpty(str4)) {
                        }
                    }
                } catch (JSONException e2) {
                    e = e2;
                    str3 = null;
                }
            } catch (JSONException e3) {
                e = e3;
                str2 = null;
                str3 = null;
                LogUtils.e(b, e.toString());
                LogUtils.t(b, "==+toggleAction(" + z + ", " + str2 + ", " + str3 + "," + i + ")");
                str4 = this.h.toggleAction(z, str2, str3, i);
                LogUtils.t(b, "==-toggleAction(" + z + ", " + str2 + ", " + str3 + "," + i + ")");
                if (TextUtils.isEmpty(str4)) {
                }
            }
        } catch (JSONException e4) {
            e = e4;
            z = false;
        }
        LogUtils.t(b, "==+toggleAction(" + z + ", " + str2 + ", " + str3 + "," + i + ")");
        str4 = this.h.toggleAction(z, str2, str3, i);
        LogUtils.t(b, "==-toggleAction(" + z + ", " + str2 + ", " + str3 + "," + i + ")");
        if (TextUtils.isEmpty(str4)) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONObject jSONObject3 = new JSONObject(str4);
            String optString = jSONObject3.optString("message");
            int optInt = jSONObject3.optInt(NotificationCompat.CATEGORY_STATUS);
            String optString2 = jSONObject3.optString("contextInfo");
            if (optInt == 2) {
                optInt = 6;
            } else if (!TextUtils.isEmpty(optString)) {
                optInt = 5;
            }
            jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(optInt, optString, optString2).toJson());
        } catch (JSONException e5) {
            LogUtils.e(b, e5.toString());
        }
        LogUtils.d(b, "handlerSysToggleFocus, feedback:" + str4);
        return jSONObject2.toString().getBytes();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] c(String str, byte[] bArr) {
        String str2;
        String str3;
        boolean openDomainHelp;
        String str4;
        String str5;
        if (this.h == null) {
            LogUtils.w(b, "handlerSysHelpFocus return, mISystemClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerSysHelpFocus");
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            str2 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_HELP_DOMAIN);
            try {
                str3 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_HELP_ACTION);
            } catch (JSONException e) {
                e = e;
                LogUtils.e(b, e.toString());
                str3 = null;
                if (TextUtils.isEmpty(str2)) {
                }
                LogUtils.t(str4, str5);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(!openDomainHelp ? 1 : 0).toJson());
                LogUtils.t(b, "-handlerSysHelpFocus");
                return jSONObject2.toString().getBytes();
            }
        } catch (JSONException e2) {
            e = e2;
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            LogUtils.t(b, "==+openDomainHelp(" + str2 + ")");
            openDomainHelp = this.h.openDomainHelp(str2, str3);
            str4 = b;
            str5 = "==-openDomainHelp(" + str2 + ")";
        } else {
            LogUtils.t(b, "==+openGlobalHelp");
            openDomainHelp = this.h.openGlobalHelp();
            str4 = b;
            str5 = "==-openGlobalHelp";
        }
        LogUtils.t(str4, str5);
        JSONObject jSONObject22 = new JSONObject();
        try {
            jSONObject22.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(!openDomainHelp ? 1 : 0).toJson());
        } catch (JSONException e3) {
            LogUtils.e(b, e3.toString());
        }
        LogUtils.t(b, "-handlerSysHelpFocus");
        return jSONObject22.toString().getBytes();
    }

    private byte[] d(String str, byte[] bArr) {
        if (this.h == null) {
            LogUtils.w(b, "handlerSysCurrentNavi return, mISystemClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerSysCurrentNavi");
        String sysCurrentNavi = this.h.getSysCurrentNavi();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, sysCurrentNavi);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
        }
        LogUtils.t(b, "-handlerSysCurrentNavi");
        return jSONObject.toString().getBytes();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] e(String str, byte[] bArr) {
        int i;
        String str2;
        String str3;
        if (this.e == null) {
            LogUtils.w(b, "handlerSysScreenFocus return, mIScreenClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerSysScreenFocus");
        int i2 = -1;
        boolean z = false;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            int optInt = jSONObject.optInt("e_volume");
            try {
                i = jSONObject.optInt(FocusCallbackDef.EXTRA_K_SYS_SCREEN_LEVEL);
                i2 = optInt;
            } catch (JSONException e) {
                e = e;
                i2 = optInt;
                LogUtils.e(b, e.toString());
                i = 0;
                switch (i2) {
                }
                LogUtils.t(str2, str3);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(!z ? 1 : 2).toJson());
                LogUtils.t(b, "-handlerSysScreenFocus");
                return jSONObject2.toString().getBytes();
            }
        } catch (JSONException e2) {
            e = e2;
        }
        switch (i2) {
            case 0:
                LogUtils.t(b, "==+incBrightness()");
                z = this.e.incBrightness();
                str2 = b;
                str3 = "==-incBrightness()";
                break;
            case 1:
                LogUtils.t(b, "==+decBrightness()");
                z = this.e.decBrightness();
                str2 = b;
                str3 = "==-decBrightness()";
                break;
            case 2:
                LogUtils.t(b, "==+maxBrightness()");
                z = this.e.maxBrightness();
                str2 = b;
                str3 = "==-maxBrightness()";
                break;
            case 3:
                LogUtils.t(b, "==+minBrightness()");
                z = this.e.minBrightness();
                str2 = b;
                str3 = "==-minBrightness()";
                break;
            case 4:
                LogUtils.t(b, "==+muteScreen()");
                z = this.e.muteScreen();
                str2 = b;
                str3 = "==-muteScreen()";
                break;
            case 5:
                LogUtils.t(b, "==+wakeScreen()");
                z = this.e.wakeScreen();
                str2 = b;
                str3 = "==-wakeScreen()";
                break;
            case 6:
                LogUtils.t(b, "==+incBrightnessLevel()");
                z = this.e.incBrightnessLevel(i);
                str2 = b;
                str3 = "==-incBrightnessLevel()";
                break;
            case 7:
                LogUtils.t(b, "==+decBrightnessLevel()");
                z = this.e.decBrightnessLevel(i);
                str2 = b;
                str3 = "==-decBrightnessLevel()";
                break;
            case 8:
                LogUtils.t(b, "==+setBrightness()");
                z = this.e.setBrightness(i);
                str2 = b;
                str3 = "==-setBrightness()";
                break;
        }
        LogUtils.t(str2, str3);
        JSONObject jSONObject22 = new JSONObject();
        try {
            jSONObject22.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(!z ? 1 : 2).toJson());
        } catch (JSONException e3) {
            LogUtils.e(b, e3.toString());
        }
        LogUtils.t(b, "-handlerSysScreenFocus");
        return jSONObject22.toString().getBytes();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0049. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] f(String str, byte[] bArr) {
        int i;
        int i2;
        int i3;
        String str2;
        StringBuilder sb;
        String str3;
        String sb2;
        if (this.d == null) {
            LogUtils.w(b, "handlerSystemVolumeFocus return, mIVolumeClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(b, "+handlerSysVolumeFocus");
        int i4 = 0;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            i2 = jSONObject.optInt("e_volume");
            try {
                i = jSONObject.optInt(FocusCallbackDef.EXTRA_K_SYS_VOLUME_CHANNEL);
                try {
                    i3 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_SYS_VOLUME_VALUE);
                } catch (JSONException e) {
                    e = e;
                    LogUtils.e(b, e.toString());
                    i3 = -1;
                    switch (i2) {
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(i4 != 0 ? i4 == 1 ? 1 : i2 == 6 ? 3 : 2 : -1).toJson());
                    LogUtils.t(b, "-handlerSysVolumeFocus");
                    return jSONObject2.toString().getBytes();
                }
            } catch (JSONException e2) {
                e = e2;
                i = 0;
            }
        } catch (JSONException e3) {
            e = e3;
            i = 0;
            i2 = -1;
        }
        switch (i2) {
            case 0:
                LogUtils.t(b, "==+incVolume(" + i + ")");
                i4 = this.d.incVolume(i);
                str2 = b;
                sb = new StringBuilder();
                str3 = "==-incVolume(";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                sb2 = sb.toString();
                LogUtils.t(str2, sb2);
                break;
            case 1:
                LogUtils.t(b, "==+decVolume(" + i + ")");
                i4 = this.d.decVolume(i);
                str2 = b;
                sb = new StringBuilder();
                str3 = "==-decVolume(";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                sb2 = sb.toString();
                LogUtils.t(str2, sb2);
                break;
            case 2:
                LogUtils.t(b, "==+maxVolume(" + i + ")");
                i4 = this.d.maxVolume(i);
                str2 = b;
                sb = new StringBuilder();
                str3 = "==-maxVolume(";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                sb2 = sb.toString();
                LogUtils.t(str2, sb2);
                break;
            case 3:
                LogUtils.t(b, "==+minVolume(" + i + ")");
                i4 = this.d.minVolume(i);
                str2 = b;
                sb = new StringBuilder();
                str3 = "==-minVolume(";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                sb2 = sb.toString();
                LogUtils.t(str2, sb2);
                break;
            case 4:
                LogUtils.t(b, "==+muteVolume(true, " + i + ")");
                i4 = this.d.muteVolume(true, i);
                str2 = b;
                sb = new StringBuilder();
                str3 = "==-muteVolume(true, ";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                sb2 = sb.toString();
                LogUtils.t(str2, sb2);
                break;
            case 5:
                LogUtils.t(b, "==+muteVolume(false, " + i + ")");
                i4 = this.d.muteVolume(false, i);
                str2 = b;
                sb = new StringBuilder();
                str3 = "==-muteVolume(false, ";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                sb2 = sb.toString();
                LogUtils.t(str2, sb2);
                break;
            case 6:
                LogUtils.t(b, "==+setVolume(" + i3 + ")");
                i4 = this.d.setVolume(i3, i);
                str2 = b;
                sb2 = "==-setVolume(" + i3 + ")";
                LogUtils.t(str2, sb2);
                break;
        }
        JSONObject jSONObject22 = new JSONObject();
        try {
            jSONObject22.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, ActionRet.create(i4 != 0 ? i4 == 1 ? 1 : i2 == 6 ? 3 : 2 : -1).toJson());
        } catch (JSONException e4) {
            LogUtils.e(b, e4.toString());
        }
        LogUtils.t(b, "-handlerSysVolumeFocus");
        return jSONObject22.toString().getBytes();
    }

    public static TASSystemManager getInstance() {
        if (c == null) {
            synchronized (TASSystemManager.class) {
                if (c == null) {
                    c = new TASSystemManager();
                }
            }
        }
        return c;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(b, "+onSdkServiceConnectEvent, connected:" + z);
        if (this.d != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_VOLUME_SET_ENABLED, new byte[0]);
        }
        if (this.e != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_SCREEN_SET_ENABLED, new byte[0]);
        }
        if (this.f != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_WIRELESS_SET_ENABLED, new byte[0]);
        }
        if (this.g != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_THIRDAPP_SET_ENABLED, new byte[0]);
        }
        if (this.h != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_SYSTEM_SET_ENABLED, new byte[0]);
        }
        uploadThirdAppList(this.i);
        LogUtils.t(b, "-onSdkServiceConnectEvent, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        String str3 = b;
        StringBuilder sb = new StringBuilder();
        sb.append("callback, caller:");
        sb.append(str);
        sb.append(" ,callback:");
        sb.append(str2);
        sb.append(" ,data:");
        sb.append(bArr == null ? "null" : new String(bArr));
        LogUtils.t(str3, sb.toString());
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_VOLUME)) {
            return f(str, bArr);
        }
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_SCREEN)) {
            return e(str, bArr);
        }
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_WIFI) || str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_MOBILE_NETWORK) || str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_BT) || str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_HOTSPOT)) {
            return a(str2, str, bArr);
        }
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_THIRDAPP)) {
            return a(str, bArr);
        }
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_TOGGLE)) {
            return b(str, bArr);
        }
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_HELP)) {
            return c(str, bArr);
        }
        if (str2.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_NAVI)) {
            return d(str, bArr);
        }
        return null;
    }

    @Deprecated
    public void actionComplete(long j) {
        LogUtils.t(b, "+actionComplete");
        a.a().a(ActionCallbackDef.ACTION_SYS_ACTION_COMPLETE, String.valueOf(j).getBytes());
        LogUtils.t(b, "-actionComplete");
    }

    @Deprecated
    public boolean isSpeechForground() {
        LogUtils.t(b, "+isSpeechForground");
        byte[] a2 = a.a().a(ActionCallbackDef.ACTION_SYS_IS_FOREGROUND, new byte[0]);
        LogUtils.t(b, "-isSpeechForground");
        try {
            return new JSONObject(new String(a2)).optBoolean(ActionCallbackDef.EXTRA_K_APP_FOREGROUND_STATUS);
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
            return false;
        }
    }

    @Deprecated
    public void openHelpPage() {
        LogUtils.t(b, "+openSRHelpPage");
        a.a().a(ActionCallbackDef.ACTION_SYS_OPEN_HELP_PAGE, new byte[0]);
        LogUtils.t(b, "-openSRHelpPage");
    }

    @Deprecated
    public void setScreenClient(IScreenClient iScreenClient) {
        LogUtils.i(b, "setScreenClient iScreenClient:" + iScreenClient);
        this.e = iScreenClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_SCREEN_SET_ENABLED, new byte[0]);
    }

    @Deprecated
    public void setSystemClient(ISystemClient iSystemClient) {
        String str = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+setSystemClient, client:");
        sb.append(iSystemClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.h = iSystemClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_SYSTEM_SET_ENABLED, new byte[0]);
        String str2 = b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setSystemClient, client:");
        sb2.append(iSystemClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    @Deprecated
    public void setThirdAppClient(ThirdAppClient thirdAppClient) {
        String str = b;
        StringBuilder sb = new StringBuilder();
        sb.append("+setThirdAppClient, client:");
        sb.append(thirdAppClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.g = thirdAppClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_THIRDAPP_SET_ENABLED, new byte[0]);
        String str2 = b;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setThirdAppClient, client:");
        sb2.append(thirdAppClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    @Deprecated
    public void setVolumeClient(IVolumeClient iVolumeClient) {
        LogUtils.i(b, "setVolumeClient iVolumeClient:" + iVolumeClient);
        this.d = iVolumeClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_VOLUME_SET_ENABLED, new byte[0]);
    }

    @Deprecated
    public void setWirelessClient(IWirelessClient iWirelessClient) {
        LogUtils.i(b, "setWirelessClient iWirelessClient:" + iWirelessClient);
        this.f = iWirelessClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_WIRELESS_SET_ENABLED, new byte[0]);
    }

    @Deprecated
    public void uploadThirdAppList(ArrayList<ThirdApp> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            LogUtils.w(b, "uploadThirdAppList return, appList == null");
            return;
        }
        this.i = arrayList;
        LogUtils.t(b, "+uploadThirdAppList");
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<ThirdApp> it = arrayList.iterator();
            while (it.hasNext()) {
                ThirdApp next = it.next();
                if (!TextUtils.isEmpty(next.getAppName())) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(ActionCallbackDef.EXTRA_K_APP_NAME, next.getAppName());
                    jSONObject.put("e_app_pkg_name", next.getPkgName());
                    jSONArray.put(jSONObject);
                }
            }
        } catch (JSONException e) {
            LogUtils.e(b, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_SYS_THIRDAPP_UPLOAD, jSONArray.toString().getBytes());
        LogUtils.t(b, "-uploadThirdAppList");
    }
}
