package com.tencent.wecarspeech.sdk.manager;

import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.BNRemoteConstants;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.libspeechcommon.def.FocusCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.api.IAsrJsonResultListener;
import com.tencent.wecarspeech.sdk.api.IScreenClient;
import com.tencent.wecarspeech.sdk.api.ISystemClient;
import com.tencent.wecarspeech.sdk.api.IVolumeClient;
import com.tencent.wecarspeech.sdk.api.IWirelessClient;
import com.tencent.wecarspeech.sdk.api.ThirdAppClient;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.model.ThirdApp;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class SSASystemManager extends b {
    private static volatile SSASystemManager b;
    private IVolumeClient<ActionRet> c;
    private IScreenClient<ActionRet> d;
    private IWirelessClient<ActionRet> e;
    private ThirdAppClient<ActionRet> f;
    private ISystemClient<ActionRet> g;
    private ArrayList<ThirdApp> h = new ArrayList<>();
    private CopyOnWriteArrayList<IAsrJsonResultListener<ActionRet>> i = new CopyOnWriteArrayList<>();

    protected SSASystemManager() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
    
        if (r5.equals(com.tencent.libspeechcommon.def.FocusCallbackDef.CALLBACK_FOCUS_SYS_WIFI) == false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] a(String str, String str2, byte[] bArr) {
        boolean z;
        ActionRet enableWifi;
        if (this.e == null) {
            LogUtils.w(this.f207a, "handlerWireless return, mIWirelessClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerWireless");
        char c = 0;
        ActionRet create = ActionRet.create(0);
        try {
            z = new JSONObject(new String(bArr)).optBoolean(FocusCallbackDef.EXTRA_K_SYS_WIRELESS_OPEN_CLOSE);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
            z = false;
        }
        int hashCode = str.hashCode();
        if (hashCode == -1880409693) {
            if (str.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_BT)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode == -1724542526) {
            if (str.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_HOTSPOT)) {
                c = 3;
            }
            c = 65535;
        } else if (hashCode != -949685069) {
            if (hashCode == 1108134950) {
            }
            c = 65535;
        } else {
            if (str.equals(FocusCallbackDef.CALLBACK_FOCUS_SYS_MOBILE_NETWORK)) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                enableWifi = this.e.enableWifi(z);
                break;
            case 1:
                enableWifi = this.e.enableMobileNetwork(z);
                break;
            case 2:
                enableWifi = this.e.enableBluetooth(z);
                break;
            case 3:
                enableWifi = this.e.enableHotsPot(z);
                break;
        }
        create = enableWifi;
        LogUtils.t(this.f207a, "-handlerWireless");
        return a(create);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] a(String str, byte[] bArr) {
        boolean z;
        String str2;
        ActionRet closeApp;
        String str3;
        StringBuilder sb;
        String str4;
        JSONObject jSONObject;
        if (this.f == null) {
            LogUtils.w(this.f207a, "handlerSysThirdAppFocus return, mThirdAppClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerSysThirdAppFocus");
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
            LogUtils.e(this.f207a, e.toString());
            z = z2;
            str2 = null;
            if (!TextUtils.isEmpty(str2)) {
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            LogUtils.t(this.f207a, "-handlerSysThirdAppFocus, feedback = null");
            return null;
        }
        if (z) {
            LogUtils.t(this.f207a, "==+openApp(" + str2 + ")");
            closeApp = this.f.openApp(str2);
            str3 = this.f207a;
            sb = new StringBuilder();
            str4 = "==-openApp(";
        } else {
            LogUtils.t(this.f207a, "==+closeApp(" + str2 + ")");
            closeApp = this.f.closeApp(str2);
            str3 = this.f207a;
            sb = new StringBuilder();
            str4 = "==-closeApp(";
        }
        sb.append(str4);
        sb.append(str2);
        sb.append(")");
        LogUtils.t(str3, sb.toString());
        String str5 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("handlerSysThirdAppFocus, feedback:");
        sb2.append(closeApp);
        LogUtils.d(str5, sb2.toString() == null ? "" : closeApp.toJson());
        return a(closeApp);
    }

    private byte[] a(String str, byte[] bArr, int i) {
        LogUtils.i(this.f207a, "handlerJsonResultCallback");
        ActionRet actionRet = null;
        if (this.i.isEmpty()) {
            LogUtils.w(this.f207a, "handlerJsonResultCallback return, mAsrJsonResultListenerList is empty");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        String str2 = new String(bArr);
        Iterator<IAsrJsonResultListener<ActionRet>> it = this.i.iterator();
        while (it.hasNext()) {
            IAsrJsonResultListener<ActionRet> next = it.next();
            LogUtils.t(this.f207a, "==+onAsrjson:" + str2 + ", listener count: " + this.i.size());
            actionRet = next.onAsrJsonResult(str2, i);
            if (actionRet != null) {
                break;
            }
            LogUtils.t(this.f207a, "==-onAsrjson:" + str2);
        }
        String str3 = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("handlerJsonResultCallback, feedback: ");
        sb.append(actionRet == null ? "" : actionRet.toJson());
        LogUtils.d(str3, sb.toString());
        return a(actionRet);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] b(String str, byte[] bArr) {
        String str2;
        String str3;
        boolean z;
        boolean z2;
        JSONObject jSONObject;
        if (this.g == null) {
            LogUtils.w(this.f207a, "handlerSysToggleFocus return, mISystemClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerSysToggleFocus");
        int i = 0;
        try {
            jSONObject = new JSONObject(new String(bArr));
            z2 = jSONObject.optBoolean(FocusCallbackDef.EXTRA_K_SYS_TOGGLE_OPEN_CLOSE);
            try {
                str2 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_TOGGLE_NAME);
                try {
                    str3 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_RAWTEXT);
                } catch (JSONException e) {
                    e = e;
                    str3 = null;
                    z = z2;
                    e = e;
                    LogUtils.e(this.f207a, e.toString());
                    z2 = z;
                    LogUtils.t(this.f207a, "==+toggleAction(" + z2 + ", " + str2 + ", " + str3 + "," + i + ")");
                    ActionRet actionRet = this.g.toggleAction(z2, str2, str3, i);
                    LogUtils.t(this.f207a, "==-toggleAction(" + z2 + ", " + str2 + ", " + str3 + "," + i + ")");
                    String str4 = this.f207a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("handlerSysToggleFocus, feedback:");
                    sb.append(actionRet);
                    LogUtils.d(str4, sb.toString() == null ? "" : actionRet.toJson());
                    return a(actionRet);
                }
            } catch (JSONException e2) {
                e = e2;
                str2 = null;
                str3 = null;
            }
        } catch (JSONException e3) {
            e = e3;
            str2 = null;
            str3 = null;
            z = false;
        }
        try {
            i = jSONObject.optInt(FocusCallbackDef.EXTRA_K_SYS_DOA_DIRECTION);
        } catch (JSONException e4) {
            z = z2;
            e = e4;
            LogUtils.e(this.f207a, e.toString());
            z2 = z;
            LogUtils.t(this.f207a, "==+toggleAction(" + z2 + ", " + str2 + ", " + str3 + "," + i + ")");
            ActionRet actionRet2 = this.g.toggleAction(z2, str2, str3, i);
            LogUtils.t(this.f207a, "==-toggleAction(" + z2 + ", " + str2 + ", " + str3 + "," + i + ")");
            String str42 = this.f207a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("handlerSysToggleFocus, feedback:");
            sb2.append(actionRet2);
            LogUtils.d(str42, sb2.toString() == null ? "" : actionRet2.toJson());
            return a(actionRet2);
        }
        LogUtils.t(this.f207a, "==+toggleAction(" + z2 + ", " + str2 + ", " + str3 + "," + i + ")");
        ActionRet actionRet22 = this.g.toggleAction(z2, str2, str3, i);
        LogUtils.t(this.f207a, "==-toggleAction(" + z2 + ", " + str2 + ", " + str3 + "," + i + ")");
        String str422 = this.f207a;
        StringBuilder sb22 = new StringBuilder();
        sb22.append("handlerSysToggleFocus, feedback:");
        sb22.append(actionRet22);
        LogUtils.d(str422, sb22.toString() == null ? "" : actionRet22.toJson());
        return a(actionRet22);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] c(String str, byte[] bArr) {
        String str2;
        String str3;
        ActionRet openDomainHelp;
        if (this.g == null) {
            LogUtils.w(this.f207a, "handlerSysHelpFocus return, mISystemClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerSysHelpFocus");
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            str2 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_HELP_DOMAIN);
            try {
                str3 = jSONObject.optString(FocusCallbackDef.EXTRA_K_SYS_HELP_ACTION);
            } catch (JSONException e) {
                e = e;
                LogUtils.e(this.f207a, e.toString());
                str3 = null;
                if (TextUtils.isEmpty(str2)) {
                }
                LogUtils.t(this.f207a, "-handlerSysHelpFocus");
                return a(openDomainHelp);
            }
        } catch (JSONException e2) {
            e = e2;
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            LogUtils.t(this.f207a, "==+openDomainHelp(" + str2 + ")");
            openDomainHelp = this.g.openDomainHelp(str2, str3);
            LogUtils.t(this.f207a, "==-openDomainHelp(" + str2 + ")");
        } else {
            LogUtils.t(this.f207a, "==+openGlobalHelp");
            openDomainHelp = this.g.openGlobalHelp();
            LogUtils.t(this.f207a, "==-openGlobalHelp");
        }
        LogUtils.t(this.f207a, "-handlerSysHelpFocus");
        return a(openDomainHelp);
    }

    private byte[] d(String str, byte[] bArr) {
        if (this.g == null) {
            LogUtils.w(this.f207a, "handlerSysCurrentNavi return, mISystemClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerSysCurrentNavi");
        String sysCurrentNavi = this.g.getSysCurrentNavi();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_ACTION_RET_VALUE, sysCurrentNavi);
        } catch (JSONException e) {
            LogUtils.e(this.f207a, e.toString());
        }
        LogUtils.t(this.f207a, "-handlerSysCurrentNavi");
        return jSONObject.toString().getBytes();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] e(String str, byte[] bArr) {
        String str2;
        String str3;
        if (this.d == null) {
            LogUtils.w(this.f207a, "handlerSysScreenFocus return, mIScreenClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerSysScreenFocus");
        int i = -1;
        int i2 = 0;
        ActionRet create = ActionRet.create(0);
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            int optInt = jSONObject.optInt("e_volume");
            try {
                i2 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_SYS_SCREEN_LEVEL);
                i = optInt;
            } catch (JSONException e) {
                e = e;
                i = optInt;
                LogUtils.e(this.f207a, e.toString());
                switch (i) {
                }
                LogUtils.t(str2, str3);
                LogUtils.t(this.f207a, "-handlerSysScreenFocus");
                return a(create);
            }
        } catch (JSONException e2) {
            e = e2;
        }
        switch (i) {
            case 0:
                LogUtils.t(this.f207a, "==+incBrightness()");
                create = this.d.incBrightness();
                str2 = this.f207a;
                str3 = "==-incBrightness()";
                break;
            case 1:
                LogUtils.t(this.f207a, "==+decBrightness()");
                create = this.d.decBrightness();
                str2 = this.f207a;
                str3 = "==-decBrightness()";
                break;
            case 2:
                LogUtils.t(this.f207a, "==+maxBrightness()");
                create = this.d.maxBrightness();
                str2 = this.f207a;
                str3 = "==-maxBrightness()";
                break;
            case 3:
                LogUtils.t(this.f207a, "==+minBrightness()");
                create = this.d.minBrightness();
                str2 = this.f207a;
                str3 = "==-minBrightness()";
                break;
            case 4:
                LogUtils.t(this.f207a, "==+muteScreen()");
                create = this.d.muteScreen();
                str2 = this.f207a;
                str3 = "==-muteScreen()";
                break;
            case 5:
                LogUtils.t(this.f207a, "==+wakeScreen()");
                create = this.d.wakeScreen();
                str2 = this.f207a;
                str3 = "==-wakeScreen()";
                break;
            case 6:
                LogUtils.t(this.f207a, "==+incBrightnessLevel()");
                create = this.d.incBrightnessLevel(i2);
                str2 = this.f207a;
                str3 = "==-incBrightnessLevel()";
                break;
            case 7:
                LogUtils.t(this.f207a, "==+decBrightnessLevel()");
                create = this.d.decBrightnessLevel(i2);
                str2 = this.f207a;
                str3 = "==-decBrightnessLevel()";
                break;
            case 8:
                LogUtils.t(this.f207a, "==+setBrightness()");
                create = this.d.setBrightness(i2);
                str2 = this.f207a;
                str3 = "==-setBrightness()";
                break;
        }
        LogUtils.t(str2, str3);
        LogUtils.t(this.f207a, "-handlerSysScreenFocus");
        return a(create);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x004c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0170  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private byte[] f(String str, byte[] bArr) {
        int i;
        int i2;
        String str2;
        StringBuilder sb;
        String str3;
        if (this.c == null) {
            LogUtils.w(this.f207a, "handlerSystemVolumeFocus return, mIVolumeClient == null");
            return null;
        }
        if (bArr == null) {
            return null;
        }
        LogUtils.t(this.f207a, "+handlerSysVolumeFocus");
        ActionRet create = ActionRet.create(0);
        int i3 = -1;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            i2 = jSONObject.optInt("e_volume");
            try {
                i = jSONObject.optInt(FocusCallbackDef.EXTRA_K_SYS_VOLUME_CHANNEL);
                try {
                    i3 = jSONObject.optInt(FocusCallbackDef.EXTRA_K_SYS_VOLUME_VALUE);
                } catch (JSONException e) {
                    e = e;
                    LogUtils.e(this.f207a, e.toString());
                    switch (i2) {
                    }
                    LogUtils.t(this.f207a, "-handlerSysVolumeFocus");
                    return a(create);
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
                LogUtils.t(this.f207a, "==+incVolume(" + i + ")");
                create = this.c.incVolume(i);
                str2 = this.f207a;
                sb = new StringBuilder();
                str3 = "==-incVolume(";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                LogUtils.t(str2, sb.toString());
                break;
            case 1:
                LogUtils.t(this.f207a, "==+decVolume(" + i + ")");
                create = this.c.decVolume(i);
                str2 = this.f207a;
                sb = new StringBuilder();
                str3 = "==-decVolume(";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                LogUtils.t(str2, sb.toString());
                break;
            case 2:
                LogUtils.t(this.f207a, "==+maxVolume(" + i + ")");
                create = this.c.maxVolume(i);
                str2 = this.f207a;
                sb = new StringBuilder();
                str3 = "==-maxVolume(";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                LogUtils.t(str2, sb.toString());
                break;
            case 3:
                LogUtils.t(this.f207a, "==+minVolume(" + i + ")");
                create = this.c.minVolume(i);
                str2 = this.f207a;
                sb = new StringBuilder();
                str3 = "==-minVolume(";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                LogUtils.t(str2, sb.toString());
                break;
            case 4:
                LogUtils.t(this.f207a, "==+muteVolume(true, " + i + ")");
                create = this.c.muteVolume(true, i);
                str2 = this.f207a;
                sb = new StringBuilder();
                str3 = "==-muteVolume(true, ";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                LogUtils.t(str2, sb.toString());
                break;
            case 5:
                LogUtils.t(this.f207a, "==+muteVolume(false, " + i + ")");
                create = this.c.muteVolume(false, i);
                str2 = this.f207a;
                sb = new StringBuilder();
                str3 = "==-muteVolume(false, ";
                sb.append(str3);
                sb.append(i);
                sb.append(")");
                LogUtils.t(str2, sb.toString());
                break;
            case 6:
                LogUtils.t(this.f207a, "==+setVolume(" + i3 + ")");
                create = this.c.setVolume(i3, i);
                str2 = this.f207a;
                sb = new StringBuilder();
                sb.append("==-setVolume(");
                sb.append(i3);
                sb.append(")");
                LogUtils.t(str2, sb.toString());
                break;
        }
        LogUtils.t(this.f207a, "-handlerSysVolumeFocus");
        return a(create);
    }

    public static SSASystemManager getInstance() {
        if (b == null) {
            synchronized (SSASystemManager.class) {
                if (b == null) {
                    b = new SSASystemManager();
                }
            }
        }
        return b;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
        LogUtils.t(this.f207a, "+onSdkServiceConnectEvent, connected:" + z);
        if (this.c != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_VOLUME_SET_ENABLED, new byte[0]);
        }
        if (this.d != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_SCREEN_SET_ENABLED, new byte[0]);
        }
        if (this.e != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_WIRELESS_SET_ENABLED, new byte[0]);
        }
        if (this.f != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_THIRDAPP_SET_ENABLED, new byte[0]);
        }
        if (this.g != null) {
            a.a().a(ActionCallbackDef.ACTION_SYS_SYSTEM_SET_ENABLED, new byte[0]);
        }
        uploadThirdAppList(this.h);
        LogUtils.t(this.f207a, "-onSdkServiceConnectEvent, connected:" + z);
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        String str3 = this.f207a;
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
        if (str2.equals(FocusCallbackDef.CALLBACK_SYS_JSON_RESULT)) {
            return a(str, bArr, i);
        }
        return null;
    }

    public void actionComplete(long j) {
        LogUtils.t(this.f207a, "+actionComplete");
        a.a().a(ActionCallbackDef.ACTION_SYS_ACTION_COMPLETE, String.valueOf(j).getBytes());
        LogUtils.t(this.f207a, "-actionComplete");
    }

    public void addIAsrJsonResultListener(IAsrJsonResultListener<ActionRet> iAsrJsonResultListener) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+addIAsrJsonResultListener, listener:");
        sb.append(iAsrJsonResultListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (!this.i.contains(iAsrJsonResultListener)) {
            this.i.add(iAsrJsonResultListener);
        }
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-addIAsrJsonResultListener, listener:");
        sb2.append(iAsrJsonResultListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    @Deprecated
    public void openHelpPage() {
        LogUtils.t(this.f207a, "+openSRHelpPage");
        a.a().a(ActionCallbackDef.ACTION_SYS_OPEN_HELP_PAGE, new byte[0]);
        LogUtils.t(this.f207a, "-openSRHelpPage");
    }

    public void removeIAsrJsonResultListener(IAsrJsonResultListener<ActionRet> iAsrJsonResultListener) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+removeIAsrJsonResultListener, listener:");
        sb.append(iAsrJsonResultListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        if (this.i.contains(iAsrJsonResultListener)) {
            this.i.remove(iAsrJsonResultListener);
        }
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-removeIAsrJsonResultListener, listener:");
        sb2.append(iAsrJsonResultListener == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    @Deprecated
    public void setScreenClient(IScreenClient<ActionRet> iScreenClient) {
        LogUtils.i(this.f207a, "setScreenClient iScreenClient:" + iScreenClient);
        this.d = iScreenClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_SCREEN_SET_ENABLED, new byte[0]);
    }

    public void setSystemClient(ISystemClient<ActionRet> iSystemClient) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setSystemClient, client:");
        sb.append(iSystemClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.g = iSystemClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_SYSTEM_SET_ENABLED, new byte[0]);
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setSystemClient, client:");
        sb2.append(iSystemClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    public void setThirdAppClient(ThirdAppClient<ActionRet> thirdAppClient) {
        String str = this.f207a;
        StringBuilder sb = new StringBuilder();
        sb.append("+setThirdAppClient, client:");
        sb.append(thirdAppClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str, sb.toString());
        this.f = thirdAppClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_THIRDAPP_SET_ENABLED, new byte[0]);
        String str2 = this.f207a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("-setThirdAppClient, client:");
        sb2.append(thirdAppClient == null ? "null" : BNRemoteConstants.ERROR_DEFAULT_STR);
        LogUtils.t(str2, sb2.toString());
    }

    @Deprecated
    public void setVolumeClient(IVolumeClient<ActionRet> iVolumeClient) {
        LogUtils.i(this.f207a, "setVolumeClient iVolumeClient:" + iVolumeClient);
        this.c = iVolumeClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_VOLUME_SET_ENABLED, new byte[0]);
    }

    @Deprecated
    public void setWirelessClient(IWirelessClient<ActionRet> iWirelessClient) {
        LogUtils.i(this.f207a, "setWirelessClient iWirelessClient:" + iWirelessClient);
        this.e = iWirelessClient;
        a.a().a(ActionCallbackDef.ACTION_SYS_WIRELESS_SET_ENABLED, new byte[0]);
    }

    public void uploadThirdAppList(ArrayList<ThirdApp> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            LogUtils.w(this.f207a, "uploadThirdAppList return, appList == null");
            return;
        }
        this.h = arrayList;
        LogUtils.t(this.f207a, "+uploadThirdAppList");
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
            LogUtils.e(this.f207a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_SYS_THIRDAPP_UPLOAD, jSONArray.toString().getBytes());
        LogUtils.t(this.f207a, "-uploadThirdAppList");
    }
}
