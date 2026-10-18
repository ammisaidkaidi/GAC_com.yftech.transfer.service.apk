package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.ICarEventListener;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ICarStatusListener extends ICarEventListener.Stub {
    int POWER_EVENT_ON = 0;
    int POWER_EVENT_OFF = 1;
    int POWER_EVENT_WAKEUP = 2;
    int POWER_EVENT_SLEEP = 3;

    @Override // com.tencent.wecarspeech.vframework.ICarEventListener
    public abstract void onBackCarEvent(boolean z);

    @Override // com.tencent.wecarspeech.vframework.ICarEventListener
    public abstract void onPowerEvent(int i);
}
