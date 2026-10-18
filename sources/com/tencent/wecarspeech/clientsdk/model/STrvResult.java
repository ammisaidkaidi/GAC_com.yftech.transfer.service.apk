package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class STrvResult {
    private int interruptReason;
    private String semantic;
    private String timeoutMsg;
    private STrvResultType type;
    private String word;

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum STrvResultType {
        SR,
        WAKEUP,
        TIMEOUT,
        INTERRUPT,
        REJECT
    }

    public STrvResult(STrvResultType sTrvResultType) {
        this.type = sTrvResultType;
    }

    public String getSemantic() {
        return this.semantic;
    }

    public void setWord(String str) {
        this.word = str;
    }

    public String getWord() {
        return this.word;
    }

    public String getTimeoutMsg() {
        return this.timeoutMsg;
    }

    public int getInterruptReason() {
        return this.interruptReason;
    }

    public STrvResultType getType() {
        return this.type;
    }

    public String toString() {
        return "STrvResult{type=" + this.type + ", semantic='" + this.semantic + "', word='" + this.word + "', timeoutMsg='" + this.timeoutMsg + "', interruptReason=" + this.interruptReason + '}';
    }
}
