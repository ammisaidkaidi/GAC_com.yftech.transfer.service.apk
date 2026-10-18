package com.tencent.wecarspeech.clientsdk.exceptions;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class DuplicatedWakeupWordException extends RuntimeException {
    public DuplicatedWakeupWordException() {
    }

    public DuplicatedWakeupWordException(String str) {
        super(str);
    }

    public DuplicatedWakeupWordException(String str, Throwable th) {
        super(str, th);
    }

    public DuplicatedWakeupWordException(Throwable th) {
        super(th);
    }
}
