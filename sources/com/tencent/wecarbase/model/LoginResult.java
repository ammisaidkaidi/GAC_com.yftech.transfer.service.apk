package com.tencent.wecarbase.model;

import com.google.gson.annotations.SerializedName;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;

/* loaded from: /home/user/work/dex/classes.dex */
public class LoginResult extends BaseModel {

    @SerializedName("content")
    private Content mContent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Content {

        @SerializedName("nonce")
        private String mNonce;

        @SerializedName(FeedBackConstants.CALLBACK_PARAM_SKEY)
        private String mSessionKey;

        @SerializedName("wecarId")
        private String mWecarId;

        Content() {
        }
    }

    public String getWeCarId() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.mWecarId;
    }

    public String getSessionKey() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.mSessionKey;
    }

    public String getNonce() {
        if (this.mContent == null) {
            return null;
        }
        return this.mContent.mNonce;
    }

    public String toString() {
        return "wecarId: " + getWeCarId() + ", sessionKey: " + getSessionKey();
    }
}
