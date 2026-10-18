package com.tencent.wecarspeech.sdk.listener;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface SSAInitListener {
    public static final int ERR_ID_FAILED = 1;
    public static final int ERR_ID_SUCCESS = 0;

    void onInit(int i, String str);
}
