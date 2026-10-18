package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class RecordConfig {
    private int mAudioFormat;
    private int mSampleRate;
    private int mVoiceRegion;

    public RecordConfig(int i, int i2, int i3) {
        this.mAudioFormat = i;
        this.mVoiceRegion = i2;
        this.mSampleRate = i3;
    }

    public int getAudioFormat() {
        return this.mAudioFormat;
    }

    public void setAudioFormat(int i) {
        this.mAudioFormat = i;
    }

    public int getVoiceRegion() {
        return this.mVoiceRegion;
    }

    public void setVoiceRegion(int i) {
        this.mVoiceRegion = i;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public void setSampleRate(int i) {
        this.mSampleRate = i;
    }
}
