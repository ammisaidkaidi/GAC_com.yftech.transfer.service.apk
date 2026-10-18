package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.ISpeechActiveListener;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ISpeechActiveListener extends ISpeechActiveListener.Stub {
    @Override // com.tencent.wecarspeech.vframework.ISpeechActiveListener
    public abstract void onActive();

    @Override // com.tencent.wecarspeech.vframework.ISpeechActiveListener
    public abstract void onQuiet();
}
