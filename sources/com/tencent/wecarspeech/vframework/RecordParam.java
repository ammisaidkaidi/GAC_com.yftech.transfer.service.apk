package com.tencent.wecarspeech.vframework;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class RecordParam implements Parcelable {
    public static final Parcelable.Creator<RecordParam> CREATOR = new Parcelable.Creator<RecordParam>() { // from class: com.tencent.wecarspeech.vframework.RecordParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecordParam createFromParcel(Parcel parcel) {
            return new RecordParam(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RecordParam[] newArray(int i) {
            return new RecordParam[i];
        }
    };
    public static final int INFINITE_TIMEOUT = -1;
    private int mAllowRecordInterrupted;
    private String mCancelCmd;
    private String mCompleteCmd;
    private String mPcmPath;
    private long mSilenceTimeout;
    private long mVadEndTimeout;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private RecordParam() {
        this.mSilenceTimeout = 5001L;
        this.mVadEndTimeout = 5000L;
        this.mCancelCmd = null;
        this.mCompleteCmd = null;
        this.mPcmPath = null;
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

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mSilenceTimeout);
        parcel.writeLong(this.mVadEndTimeout);
        parcel.writeString(this.mCancelCmd);
        parcel.writeString(this.mCompleteCmd);
        parcel.writeString(this.mPcmPath);
        parcel.writeInt(this.mAllowRecordInterrupted);
    }

    protected RecordParam(Parcel parcel) {
        this.mSilenceTimeout = parcel.readLong();
        this.mVadEndTimeout = parcel.readLong();
        this.mCancelCmd = parcel.readString();
        this.mCompleteCmd = parcel.readString();
        this.mPcmPath = parcel.readString();
        this.mAllowRecordInterrupted = parcel.readInt();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        private long bSilenceTimeout = 5001;
        private long bVadEndTimeout = 5000;
        private String bCancelCmd = null;
        private String bCompleteCmd = null;
        private String bPcmPath = null;
        private int bAllowRecordInterrupted = 1;

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

        public RecordParam build() {
            RecordParam recordParam = new RecordParam();
            recordParam.mSilenceTimeout = this.bSilenceTimeout;
            recordParam.mVadEndTimeout = this.bVadEndTimeout;
            recordParam.mCancelCmd = this.bCancelCmd;
            recordParam.mCompleteCmd = this.bCompleteCmd;
            recordParam.mPcmPath = this.bPcmPath;
            recordParam.mAllowRecordInterrupted = this.bAllowRecordInterrupted;
            return recordParam;
        }
    }
}
