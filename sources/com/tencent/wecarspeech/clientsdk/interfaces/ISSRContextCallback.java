package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.IGeneralCtrlResultCallback;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface ISSRContextCallback extends ISSRCallback {
    void onGeneralCtrl(long j, int i, IGeneralCtrlResultCallback iGeneralCtrlResultCallback);
}
