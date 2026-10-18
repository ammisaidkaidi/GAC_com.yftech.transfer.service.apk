package com.tencent.wecarbase.model;

import com.google.gson.annotations.SerializedName;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.wecarbase.account.AccountLocalHelper;

/* loaded from: /home/user/work/dex/classes.dex */
public class RegisterResult extends BaseModel {

    @SerializedName("content")
    private Content mContent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Content {

        @SerializedName(AccountLocalHelper.DEVICEID_KEY)
        private String mDeviceId;

        @SerializedName("devicetype")
        private int mDeviceType;

        @SerializedName("nonce")
        private long mNonce;

        @SerializedName(FeedBackConstants.CALLBACK_PARAM_SKEY)
        private String mSessionKey;

        @SerializedName(FeedBackConstants.JSON_FIELD_UUID)
        private String mUUID;

        @SerializedName("commonId")
        private String mWecarId;

        @SerializedName("wecarKey")
        private String mWecarKey;

        Content() {
        }
    }

    public String getWeCarId() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.mWecarId;
    }

    public long getNonce() {
        if (this.mContent == null) {
            return 0L;
        }
        return this.mContent.mNonce;
    }

    public String getWeCarKey() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.mWecarKey;
    }

    public String getSessionKey() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.mSessionKey;
    }

    public String getDeviceId() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.mDeviceId;
    }

    public int getDeviceType() {
        if (this.mContent == null) {
            return -1;
        }
        return this.mContent.mDeviceType;
    }

    public String getUUID() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.mUUID;
    }

    public String toString() {
        return "error: " + getErrorCode() + ", wecarId: " + getWeCarId() + ", wecarkey: " + getWeCarKey() + ", sessionKey: " + getSessionKey() + ", deviceId:" + getDeviceId() + ", deviceType:" + getDeviceType() + ", uuid: " + getUUID();
    }
}
