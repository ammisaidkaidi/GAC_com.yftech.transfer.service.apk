package com.tencent.taes.exception;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAESNotInitException extends Exception {
    public TAESNotInitException() {
        super("Not initialized, please check it a little.");
    }

    public TAESNotInitException(String str) {
        super(str);
    }

    public TAESNotInitException(String str, Throwable th) {
        super(str, th);
    }
}
