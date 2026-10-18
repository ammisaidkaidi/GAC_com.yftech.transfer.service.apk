package com.tencent.taes.exception;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAESApiNotSupportException extends Exception {
    public TAESApiNotSupportException() {
        super("This api not support. please check it a little.");
    }

    public TAESApiNotSupportException(String str) {
        super(str);
    }

    public TAESApiNotSupportException(String str, Throwable th) {
        super(str, th);
    }
}
