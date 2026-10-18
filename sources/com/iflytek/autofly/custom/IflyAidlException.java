package com.iflytek.autofly.custom;

/* loaded from: /home/user/work/dex/classes.dex */
public class IflyAidlException extends RuntimeException {
    private static final long serialVersionUID = -3490914503395318014L;

    public IflyAidlException() {
    }

    public IflyAidlException(String str) {
        super(str);
    }

    public IflyAidlException(String str, Throwable th) {
        super(str, th);
    }

    public IflyAidlException(Throwable th) {
        super(th == null ? null : th.toString(), th);
    }
}
