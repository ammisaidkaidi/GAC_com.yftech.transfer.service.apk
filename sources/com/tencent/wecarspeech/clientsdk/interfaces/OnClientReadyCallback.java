package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface OnClientReadyCallback {
    void onClientDisconnect();

    void onClientReady();

    void onInitFailed(int i, String str);
}
