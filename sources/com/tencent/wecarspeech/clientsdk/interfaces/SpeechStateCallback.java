package com.tencent.wecarspeech.clientsdk.interfaces;

import com.tencent.wecarspeech.vframework.ISpeechStateCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class SpeechStateCallback extends ISpeechStateCallback.Stub {
    @Override // com.tencent.wecarspeech.vframework.ISpeechStateCallback
    public abstract void onSpriteTryWord(int i, String str);

    @Override // com.tencent.wecarspeech.vframework.ISpeechStateCallback
    public abstract void onState(int i, int i2);
}
