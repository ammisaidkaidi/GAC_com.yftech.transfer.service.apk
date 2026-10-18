package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SemanticContext {
    private String mCurrentDomain;
    private String mCurrentIntent;
    private String mSemanticJsonContext;

    public String getCurrentDomain() {
        return this.mCurrentDomain;
    }

    public void setCurrentDomain(String str) {
        this.mCurrentDomain = str;
    }

    public String getCurrentIntent() {
        return this.mCurrentIntent;
    }

    public void setCurrentIntent(String str) {
        this.mCurrentIntent = str;
    }

    public String getSemanticJsonContext() {
        return this.mSemanticJsonContext;
    }

    public void setSemanticJsonContext(String str) {
        this.mSemanticJsonContext = str;
    }

    public String toString() {
        return "SemanticContext{mCurrentDomain='" + this.mCurrentDomain + "', mCurrentIntent='" + this.mCurrentIntent + "', mSemanticContext='" + this.mSemanticJsonContext + "'}";
    }
}
