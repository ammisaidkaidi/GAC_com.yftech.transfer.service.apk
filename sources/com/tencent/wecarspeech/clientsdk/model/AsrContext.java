package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class AsrContext {
    private String mAsrContext;
    private int mAsrType;

    public void setAsrType(int i) {
        this.mAsrType = i;
    }

    public void setAsrContext(String str) {
        this.mAsrContext = str;
    }

    public int getAsrType() {
        return this.mAsrType;
    }

    public String getAsrContext() {
        return this.mAsrContext;
    }

    public String toString() {
        return "AsrContext{, mAsrType='" + this.mAsrType + "', mAsrContext='" + this.mAsrContext + "'}";
    }
}
