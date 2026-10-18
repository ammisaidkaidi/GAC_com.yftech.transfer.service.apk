package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface ISSRCallback {
    void onInterrupt(long j, int i);

    void onSREvent(long j, String str, int i);

    void onTimeout(long j, String str);
}
