package com.tencent.wecarspeech.clientsdk.utils.semantic;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class Audio {

    @SerializedName("metadata")
    private Metadata mMetadata;

    @SerializedName("stream")
    private Stream mStream;

    public Stream getStream() {
        return this.mStream;
    }

    public void setStream(Stream stream) {
        this.mStream = stream;
    }

    public Metadata getMetadata() {
        return this.mMetadata;
    }

    public void setMetadata(Metadata metadata) {
        this.mMetadata = metadata;
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Stream {

        @SerializedName("url")
        private String mUrl;

        public String getUrl() {
            return this.mUrl;
        }

        public void setUrl(String str) {
            this.mUrl = str;
        }
    }

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Metadata {

        @SerializedName("offsetInMilliseconds")
        private int mOffsetInMilliseconds;

        @SerializedName("totalMilliseconds")
        private int mTotalMilliseconds;

        public int getOffsetInMilliseconds() {
            return this.mOffsetInMilliseconds;
        }

        public void setOffsetInMilliseconds(int i) {
            this.mOffsetInMilliseconds = i;
        }

        public int getTotalMilliseconds() {
            return this.mTotalMilliseconds;
        }

        public void setTotalMilliseconds(int i) {
            this.mTotalMilliseconds = i;
        }
    }
}
