package com.tencent.wecarspeech.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.wecarspeech.sdk.util.LogUtils;
import com.tencent.wecarspeech.sdk.util.ServiceUtils;
import com.tencent.wecarspeech.sdk.util.SpeechServerTool;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class TASLifecycleManager {
    public static final String WECAR_SPEECH_SERVICE = "com.tencent.wecarspeech.service.SR_SERVICE";

    /* renamed from: a, reason: collision with root package name */
    private static final String f189a = LogUtils.GLOBAL_LOG_TAG + TASLifecycleManager.class.getSimpleName();
    private static volatile TASLifecycleManager b;
    private Context c;

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PowerEvent {
        public static final int POWER_EVENT_OFF = 1;
        public static final int POWER_EVENT_ON = 0;
        public static final int POWER_EVENT_SLEEP = 3;
        public static final int POWER_EVENT_WAKEUP = 2;
    }

    private TASLifecycleManager() {
    }

    public static TASLifecycleManager getInstance() {
        if (b == null) {
            synchronized (TASLifecycleManager.class) {
                if (b == null) {
                    b = new TASLifecycleManager();
                }
            }
        }
        return b;
    }

    @Deprecated
    public void destroyTASSpeech() {
        LogUtils.t(f189a, "+destroyTASSpeech");
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_DESTROY_TAS, new byte[0]);
        if (this.c != null) {
            ServiceUtils.stopService(this.c, "com.tencent.wecarspeech.service.SR_SERVICE", SpeechServerTool.getServerPackage(this.c));
        }
        LogUtils.t(f189a, "-destroyTASSpeech");
    }

    @Deprecated
    public void initialzeTASSpeech(Context context) {
        LogUtils.t(f189a, "+initialzeTASSpeech");
        this.c = context.getApplicationContext();
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_INIT_TAS, new byte[0]);
        ServiceUtils.startService(context, "com.tencent.wecarspeech.service.SR_SERVICE", SpeechServerTool.getServerPackage(context));
        LogUtils.t(f189a, "-initialzeTASSpeech");
    }

    public void notifyBackCarStatus(boolean z) {
        LogUtils.t(f189a, "+notifyBackCarStatus, backCar:" + z);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_BACK_CAR_STATUS, z);
        } catch (JSONException e) {
            LogUtils.e(f189a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_BACK_CAR_EVENT, jSONObject.toString().getBytes());
        LogUtils.t(f189a, "-notifyBackCarStatus, backCar:" + z);
    }

    public void notifyPowerEvent(int i) {
        LogUtils.t(f189a, "+notifyPowerEvent, event:" + i);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ActionCallbackDef.EXTRA_K_POWER_EVENT_ID, i);
        } catch (JSONException e) {
            LogUtils.e(f189a, e.toString());
        }
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_POWER_EVENT, jSONObject.toString().getBytes());
        LogUtils.t(f189a, "-notifyPowerEvent, event:" + i);
    }

    public int reallocateSpeechRecord() {
        LogUtils.t(f189a, "+reallocateSpeechRecord");
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_REALLOCATE_RECORD_FOCUS, new byte[0]);
        LogUtils.t(f189a, "-reallocateSpeechRecord");
        return 0;
    }

    public int releaseSpeechRecord(String str) {
        LogUtils.t(f189a, "+releaseSpeechRecord : " + str);
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_RELEASE_RECORD_FOCUS, str.getBytes());
        LogUtils.t(f189a, "-releaseSpeechRecord : " + str);
        return 0;
    }
}
