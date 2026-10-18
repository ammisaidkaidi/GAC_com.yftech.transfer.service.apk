package com.tencent.wecarspeech.clientsdk.utils.semantic;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class ListItem {

    @SerializedName("audio")
    private Audio mAudio;

    @SerializedName("textContent")
    private String mTextContent;

    @SerializedName(FeedBackConstants.PROP_BUG_TITLE)
    private String mTitle;

    @SerializedName("selfData")
    private Object selfData;

    public String getTitle() {
        return this.mTitle;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public String getTextContent() {
        return this.mTextContent;
    }

    public void setTextContent(String str) {
        this.mTextContent = str;
    }

    public Audio getAudio() {
        return this.mAudio;
    }

    public void setAudio(Audio audio) {
        this.mAudio = audio;
    }

    public Object getSelfData() {
        return this.selfData;
    }

    public void setSelfData(Object obj) {
        this.selfData = obj;
    }
}
