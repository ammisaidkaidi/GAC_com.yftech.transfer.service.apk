package com.baidu.navisdk.hudsdk.socket;

import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public class SocketChannelException extends IOException {
    private static final long serialVersionUID = 1;
    private int mExceptionCode;
    private String mExceptionReason;

    public SocketChannelException(int i, String str) {
        this.mExceptionCode = i;
        this.mExceptionReason = str;
    }

    public int getExceptionCode() {
        return this.mExceptionCode;
    }

    public String getExceptionReason() {
        return this.mExceptionReason;
    }
}
