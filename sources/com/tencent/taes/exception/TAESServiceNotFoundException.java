package com.tencent.taes.exception;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAESServiceNotFoundException extends Exception {
    public TAESServiceNotFoundException() {
        super("This service was not found. Please check if the service exists.");
    }

    public TAESServiceNotFoundException(String str) {
        super(str);
    }

    public TAESServiceNotFoundException(String str, Throwable th) {
        super(str, th);
    }
}
