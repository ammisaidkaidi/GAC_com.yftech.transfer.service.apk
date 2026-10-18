package com.tencent.wecarspeech.clientsdk.exceptions;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class UnsupportedWordException extends RuntimeException {
    public UnsupportedWordException() {
    }

    public UnsupportedWordException(String str) {
        super(str);
    }

    public UnsupportedWordException(String str, Throwable th) {
        super(str, th);
    }

    public UnsupportedWordException(Throwable th) {
        super(th);
    }
}
