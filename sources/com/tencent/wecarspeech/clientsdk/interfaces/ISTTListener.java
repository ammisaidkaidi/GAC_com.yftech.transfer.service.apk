package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface ISTTListener {
    void onInterrupt(long j, int i);

    void onSTTResult(String str, boolean z);

    void onTimeout(long j, String str);
}
