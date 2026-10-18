package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.clientsdk.interfaces.ISTTListener;
import com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class STTParams {
    public boolean playSound = false;
    public long speechSilTimeout;
    public long speechTimeout;
    public IStartResultCallback startCallback;
    public ISTTListener sttListener;
    public long vadEndSilTimeout;
}
