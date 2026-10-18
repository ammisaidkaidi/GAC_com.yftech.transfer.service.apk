package com.tencent.car.wechatsdk.exceptions;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SDKNotInitException extends RuntimeException {
    public SDKNotInitException() {
        super("sdk not init yet !!!");
    }

    public SDKNotInitException(String str) {
        super(str);
    }

    public SDKNotInitException(String str, Throwable th) {
        super(str, th);
    }

    public SDKNotInitException(Throwable th) {
        super(th);
    }
}
