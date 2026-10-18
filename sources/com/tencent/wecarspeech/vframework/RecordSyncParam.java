package com.tencent.wecarspeech.vframework;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.taiutils.TimeUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class RecordSyncParam implements Parcelable {
    public static final Parcelable.Creator<RecordSyncParam> CREATOR = new Parcelable.Creator<RecordSyncParam>() { // from class: com.tencent.wecarspeech.vframework.RecordSyncParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecordSyncParam createFromParcel(Parcel parcel) {
            return new RecordSyncParam(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecordSyncParam[] newArray(int i) {
            return new RecordSyncParam[i];
        }
    };
    public static final int INFINITE_TIMEOUT = -1;
    public static final int TYPE_MINIPROGRAM_PASSTHROUGH = 12;
    public static final int TYPE_MINIPROGRAM_VR = 13;
    public static final int TYPE_OTHER_PASSTHROUGH = 14;
    public static final int TYPE_OTHER_VR = 15;
    public static final int TYPE_UNDEFINED = -2;
    public static final int TYPE_WECHAT_PASSTHROUGH = 10;
    public static final int TYPE_WECHAT_VR = 11;
    private int mAllowRecordInterrupted;
    private String mCancelCmd;
    private String mCompleteCmd;
    private String mPcmPath;
    private long mSilenceTimeout;
    public long mSpeechTimeout;
    private int mType;
    private long mVadEndTimeout;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private RecordSyncParam() {
        this.mSilenceTimeout = 5001L;
        this.mVadEndTimeout = 5000L;
        this.mCancelCmd = null;
        this.mCompleteCmd = null;
        this.mPcmPath = null;
        this.mAllowRecordInterrupted = 1;
        this.mSpeechTimeout = TimeUtils.MINUTE_MILLIS;
        this.mType = -2;
    }

    public long getSilenceTimeout() {
        return this.mSilenceTimeout;
    }

    public long getVadEndTimeout() {
        return this.mVadEndTimeout;
    }

    public String getCancelCmd() {
        return this.mCancelCmd;
    }

    public String getCompleteCmd() {
        return this.mCompleteCmd;
    }

    public String getPcmPath() {
        return this.mPcmPath;
    }

    public boolean getAllowRecordInterrupted() {
        return this.mAllowRecordInterrupted == 1;
    }

    public long getSpeechTimeout() {
        return this.mSpeechTimeout;
    }

    public int getType() {
        return this.mType;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mSilenceTimeout);
        parcel.writeLong(this.mVadEndTimeout);
        parcel.writeString(this.mCancelCmd);
        parcel.writeString(this.mCompleteCmd);
        parcel.writeString(this.mPcmPath);
        parcel.writeInt(this.mAllowRecordInterrupted);
        parcel.writeLong(this.mSpeechTimeout);
        parcel.writeInt(this.mType);
    }

    protected RecordSyncParam(Parcel parcel) {
        this.mSilenceTimeout = parcel.readLong();
        this.mVadEndTimeout = parcel.readLong();
        this.mCancelCmd = parcel.readString();
        this.mCompleteCmd = parcel.readString();
        this.mPcmPath = parcel.readString();
        this.mAllowRecordInterrupted = parcel.readInt();
        this.mSpeechTimeout = parcel.readLong();
        this.mType = parcel.readInt();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        private long bSilenceTimeout = 5001;
        private long bVadEndTimeout = 5000;
        private String bCancelCmd = null;
        private String bCompleteCmd = null;
        private String bPcmPath = null;
        private int bAllowRecordInterrupted = 1;
        private long bSpeechTimeout = TimeUtils.MINUTE_MILLIS;
        private int bType = -2;

        public Builder setSilenceTimeout(long j) {
            this.bSilenceTimeout = j;
            return this;
        }

        public Builder setVadEndTimeout(long j) {
            this.bVadEndTimeout = j;
            return this;
        }

        public Builder setCompleteCmd(String str) {
            this.bCompleteCmd = str;
            return this;
        }

        public Builder setCancelCmd(String str) {
            this.bCancelCmd = str;
            return this;
        }

        public Builder setPCMPath(String str) {
            this.bPcmPath = str;
            return this;
        }

        public Builder setAllowRecordInterrupted(boolean z) {
            this.bAllowRecordInterrupted = z ? 1 : 0;
            return this;
        }

        public Builder setSpeechTimeout(long j) {
            this.bSpeechTimeout = j;
            return this;
        }

        public Builder setType(int i) {
            this.bType = i;
            return this;
        }

        public RecordSyncParam build() {
            RecordSyncParam recordSyncParam = new RecordSyncParam();
            recordSyncParam.mSilenceTimeout = this.bSilenceTimeout;
            recordSyncParam.mVadEndTimeout = this.bVadEndTimeout;
            recordSyncParam.mCancelCmd = this.bCancelCmd;
            recordSyncParam.mCompleteCmd = this.bCompleteCmd;
            recordSyncParam.mPcmPath = this.bPcmPath;
            recordSyncParam.mAllowRecordInterrupted = this.bAllowRecordInterrupted;
            recordSyncParam.mSpeechTimeout = this.bSpeechTimeout;
            recordSyncParam.mType = this.bType;
            return recordSyncParam;
        }
    }
}
