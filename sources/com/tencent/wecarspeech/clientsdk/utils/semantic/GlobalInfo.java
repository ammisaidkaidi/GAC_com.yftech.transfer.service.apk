package com.tencent.wecarspeech.clientsdk.utils.semantic;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class GlobalInfo {
    public static final String LIST = "LIST";
    public static final String LIST_CYCLE = "LIST_CYCLE";
    public static final String RANDOM = "RANDOM";
    public static final String SINGLE_CYCLE = "SINGLE_CYCLE";

    @SerializedName("backgroundAudio")
    private Audio mBackgroundAudio;

    @SerializedName("playMode")
    private String mPlayMode;

    public Audio getBackgroundAudio() {
        return this.mBackgroundAudio;
    }

    public void setBackgroundAudio(Audio audio) {
        this.mBackgroundAudio = audio;
    }

    public String getPlayMode() {
        return this.mPlayMode;
    }

    public void setPlayMode(String str) {
        this.mPlayMode = str;
    }
}
