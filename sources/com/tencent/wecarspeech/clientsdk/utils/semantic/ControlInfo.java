package com.tencent.wecarspeech.clientsdk.utils.semantic;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class ControlInfo {
    public static final String TYPE_AUDIO = "AUDIO";
    public static final String TYPE_TEXT = "TEXT";

    @SerializedName("audioConsole")
    private String mAudioConsole;

    @SerializedName("backgroundImageValid")
    private String mBackgroundImageValid;

    @SerializedName("orientation")
    private String mOrientation;

    @SerializedName("textSpeak")
    private String mTextSpeak;

    @SerializedName("titleSpeak")
    private String mTitleSpeak;

    @SerializedName("type")
    private String mType;

    @SerializedName(DeviceHelper.JSON_FIELD_VERSION)
    private String mVersion;

    public String getVersion() {
        return this.mVersion;
    }

    public void setVersion(String str) {
        this.mVersion = str;
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public String getTextSpeak() {
        return this.mTextSpeak;
    }

    public void setTextSpeak(String str) {
        this.mTextSpeak = str;
    }

    public String getTitleSpeak() {
        return this.mTitleSpeak;
    }

    public void setTitleSpeak(String str) {
        this.mTitleSpeak = str;
    }

    public String getAudioConsole() {
        return this.mAudioConsole;
    }

    public void setAudioConsole(String str) {
        this.mAudioConsole = str;
    }

    public String getOrientation() {
        return this.mOrientation;
    }

    public void setOrientation(String str) {
        this.mOrientation = str;
    }

    public String getBackgroundImageValid() {
        return this.mBackgroundImageValid;
    }

    public void setBackgroundImageValid(String str) {
        this.mBackgroundImageValid = str;
    }
}
