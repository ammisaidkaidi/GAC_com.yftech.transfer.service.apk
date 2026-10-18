package com.tencent.wecarspeech.clientsdk.exceptions;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class IllegalDomainException extends RuntimeException {
    public IllegalDomainException() {
    }

    public IllegalDomainException(String str) {
        super(str);
    }

    public IllegalDomainException(String str, Throwable th) {
        super(str, th);
    }

    public IllegalDomainException(Throwable th) {
        super(th);
    }
}
