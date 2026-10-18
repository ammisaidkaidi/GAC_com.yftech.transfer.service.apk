package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.ISpriteInterruptedListener;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class VrSpriteInterruptedListener extends ISpriteInterruptedListener.Stub {
    @Override // com.tencent.wecarspeech.vframework.ISpriteInterruptedListener
    public abstract void onVrSpriteInterrupted(long j);
}
