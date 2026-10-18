package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SSRResult {
    private int interruptReason;
    private String semantic;
    private boolean seriesSession;
    private String timeoutMsg;
    private SSResultType type;

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum SSResultType {
        SR,
        TIMEOUT,
        INTERRUPT,
        REJECT
    }

    public SSRResult(SSResultType sSResultType) {
        this.type = sSResultType;
    }

    public String getSemantic() {
        return this.semantic;
    }

    public String getTimeoutMsg() {
        return this.timeoutMsg;
    }

    public int getInterruptReason() {
        return this.interruptReason;
    }

    public SSResultType getType() {
        return this.type;
    }

    public boolean isSeriesSession() {
        return this.seriesSession;
    }

    public void setSeriesSession(boolean z) {
        this.seriesSession = z;
    }

    public String toString() {
        return "SSRResult{type=" + this.type + ", semantic='" + this.semantic + "', timeoutMsg='" + this.timeoutMsg + "', interruptReason=" + this.interruptReason + ", seriesSession=" + this.seriesSession + '}';
    }
}
