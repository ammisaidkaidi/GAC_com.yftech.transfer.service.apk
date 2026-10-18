package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.ISessionStateListener;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class SessionInterruptListener extends ISessionStateListener.Stub {
    @Override // com.tencent.wecarspeech.vframework.ISessionStateListener
    public abstract void onSessionInterrupt();
}
