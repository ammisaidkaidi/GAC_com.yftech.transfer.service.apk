package com.tencent.taes.exception;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAESServiceNotConnectException extends Exception {
    public TAESServiceNotConnectException() {
        super("The service is not connected. Please try again later！");
    }

    public TAESServiceNotConnectException(String str) {
        super(str);
    }

    public TAESServiceNotConnectException(String str, Throwable th) {
        super(str, th);
    }
}
