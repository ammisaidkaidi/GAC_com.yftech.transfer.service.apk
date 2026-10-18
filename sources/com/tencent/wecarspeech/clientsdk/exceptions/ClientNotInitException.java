package com.tencent.wecarspeech.clientsdk.exceptions;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class ClientNotInitException extends RuntimeException {
    public ClientNotInitException() {
        super("wecar client not init yet !!!");
    }

    public ClientNotInitException(String str) {
        super(str);
    }

    public ClientNotInitException(String str, Throwable th) {
        super(str, th);
    }

    public ClientNotInitException(Throwable th) {
        super(th);
    }
}
