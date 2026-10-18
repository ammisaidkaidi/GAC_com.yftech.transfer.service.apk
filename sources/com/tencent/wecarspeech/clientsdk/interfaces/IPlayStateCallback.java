package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.IPlayStateCallback;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class IPlayStateCallback extends IPlayStateCallback.Stub {
    int STOP_REASON_DEFAULT = 0;
    int STOP_REASON_WAKEUP = 1;
    int STOP_REASON_SDK = 2;
    int STOP_REASON_URGENT = 3;

    @Override // com.tencent.wecarspeech.vframework.IPlayStateCallback
    public abstract void onPlayBegin();

    @Override // com.tencent.wecarspeech.vframework.IPlayStateCallback
    public abstract void onPlayCompleted();

    @Override // com.tencent.wecarspeech.vframework.IPlayStateCallback
    public abstract void onPlayEnd();

    @Override // com.tencent.wecarspeech.vframework.IPlayStateCallback
    public abstract void onPlayError();

    @Override // com.tencent.wecarspeech.vframework.IPlayStateCallback
    public abstract void onPlayInterrupted(int i);

    @Override // com.tencent.wecarspeech.vframework.IPlayStateCallback
    public abstract void onPlayPause();

    @Override // com.tencent.wecarspeech.vframework.IPlayStateCallback
    public abstract void onPlayResume();

    @Override // com.tencent.wecarspeech.vframework.IPlayStateCallback
    public abstract void onProgress(int i, int i2);
}
