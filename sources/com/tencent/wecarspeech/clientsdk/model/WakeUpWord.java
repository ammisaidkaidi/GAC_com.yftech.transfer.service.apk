package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class WakeUpWord {
    private static final int DEFAULT_THRESHOLD = 0;
    private int threshold;
    private String word;

    public WakeUpWord(String str) {
        this(str, 0);
    }

    public WakeUpWord(String str, int i) {
        this.word = str;
        this.threshold = i;
    }

    public String getWord() {
        return this.word;
    }

    public int getThreshold() {
        return this.threshold;
    }

    public boolean equals(Object obj) {
        if (obj instanceof WakeUpWord) {
            return this.word.equals(((WakeUpWord) obj).word);
        }
        return super.equals(obj);
    }

    public int hashCode() {
        return this.word.hashCode();
    }
}
