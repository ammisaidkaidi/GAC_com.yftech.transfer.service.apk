package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SemanticFilterResult {
    public static final int SR_RESULT = 1;
    public static final int UNHOLD_RESULT = 3;
    public static final int WAKE_UP_RESULT = 2;
    private String hitWord;
    private int result;

    public SemanticFilterResult(int i) {
        this.result = i;
    }

    public int getResult() {
        return this.result;
    }

    public void setResult(int i) {
        this.result = i;
    }

    public String getHitWord() {
        return this.hitWord;
    }

    public void setHitWord(String str) {
        this.hitWord = str;
    }
}
