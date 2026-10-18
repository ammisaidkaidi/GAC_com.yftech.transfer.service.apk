package com.tencent.wecarspeech.clientsdk.exceptions;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class IllegalSceneException extends RuntimeException {
    public IllegalSceneException() {
    }

    public IllegalSceneException(String str) {
        super(str);
    }

    public IllegalSceneException(String str, Throwable th) {
        super(str, th);
    }

    public IllegalSceneException(Throwable th) {
        super(th);
    }
}
