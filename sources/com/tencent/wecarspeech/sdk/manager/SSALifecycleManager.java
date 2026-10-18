package com.tencent.wecarspeech.sdk.manager;

import android.text.TextUtils;
import com.tencent.libspeechcommon.def.ActionCallbackDef;
import com.tencent.wecarspeech.sdk.a;
import com.tencent.wecarspeech.sdk.b;
import com.tencent.wecarspeech.sdk.util.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SSALifecycleManager extends b {
    public static final String WECAR_SPEECH_SERVICE = "com.tencent.wecarspeech.service.SR_SERVICE";
    private static final String b = LogUtils.GLOBAL_LOG_TAG + SSALifecycleManager.class.getSimpleName();
    private static volatile SSALifecycleManager c;

    private SSALifecycleManager() {
    }

    public static SSALifecycleManager getInstance() {
        if (c == null) {
            synchronized (SSALifecycleManager.class) {
                if (c == null) {
                    c = new SSALifecycleManager();
                }
            }
        }
        return c;
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected void a(boolean z) {
    }

    @Override // com.tencent.wecarspeech.sdk.b
    protected byte[] a(String str, String str2, byte[] bArr, int i) {
        return new byte[0];
    }

    @Deprecated
    public void notifyBackCarStatus(boolean z) {
        LogUtils.t(b, "+notifyBackCarStatus, backCar:" + z);
        a(ActionCallbackDef.EXTRA_K_BACK_CAR_STATUS, z);
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_BACK_CAR_EVENT, a());
        LogUtils.t(b, "-notifyBackCarStatus, backCar:" + z);
    }

    @Deprecated
    public void notifyPowerEvent(int i) {
        LogUtils.t(b, "+notifyPowerEvent, event:" + i);
        a(ActionCallbackDef.EXTRA_K_POWER_EVENT_ID, i);
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_POWER_EVENT, a());
        LogUtils.t(b, "-notifyPowerEvent, event:" + i);
    }

    public int reallocateSpeechRecord() {
        LogUtils.t(b, "+reallocateSpeechRecord");
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_REALLOCATE_RECORD_FOCUS, new byte[0]);
        LogUtils.t(b, "-reallocateSpeechRecord");
        return 0;
    }

    public int releaseSpeechRecord(String str) {
        LogUtils.t(b, "+releaseSpeechRecord : " + str);
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        a.a().a(ActionCallbackDef.ACTION_LIFECYCLE_RELEASE_RECORD_FOCUS, str.getBytes());
        LogUtils.t(b, "-releaseSpeechRecord : " + str);
        return 0;
    }
}
