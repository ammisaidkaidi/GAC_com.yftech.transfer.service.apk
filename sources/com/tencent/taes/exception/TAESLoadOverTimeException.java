package com.tencent.taes.exception;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAESLoadOverTimeException extends Exception {
    public TAESLoadOverTimeException() {
        super("Component loading timeout, optimize component initialization process");
    }

    public TAESLoadOverTimeException(String str) {
        super(str);
    }

    public TAESLoadOverTimeException(String str, Throwable th) {
        super(str, th);
    }
}
