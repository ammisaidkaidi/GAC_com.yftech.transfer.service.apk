package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SegmentText {

    @SerializedName("seg_txt")
    private List<TextItem> mSegmentTxt = new ArrayList();

    public void add(String str, String str2) {
        this.mSegmentTxt.add(new TextItem(str, str2));
    }

    public int size() {
        return this.mSegmentTxt.size();
    }

    public TextItem get(int i) {
        return this.mSegmentTxt.get(i);
    }
}
