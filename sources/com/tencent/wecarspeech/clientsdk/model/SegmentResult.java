package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SegmentResult {

    @SerializedName("seg_result")
    private List<Word> words;

    public int size() {
        if (this.words == null) {
            return 0;
        }
        return this.words.size();
    }

    public List<TextItem> get(int i) {
        if (this.words == null) {
            return null;
        }
        return this.words.get(i).resultItems;
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class Word {

        @SerializedName("item")
        private List<TextItem> resultItems;

        private Word() {
        }
    }
}
