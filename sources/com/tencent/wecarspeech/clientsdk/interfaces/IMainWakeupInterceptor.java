package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.IWakeupInterceptor;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class IMainWakeupInterceptor extends IWakeupInterceptor.Stub {
    @Override // com.tencent.wecarspeech.vframework.IWakeupInterceptor
    public abstract void onWakeupIntercept(String str);
}
