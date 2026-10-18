package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.IStartResultCallback;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class IStartResultCallback extends IStartResultCallback.Stub {
    public abstract void onStartFailed(int i, String str);

    public abstract void onStartSuccess();
}
