package com.tencent.wecarspeech.vframework;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class StartRecordResult implements Parcelable {
    public static final Parcelable.Creator<StartRecordResult> CREATOR = new Parcelable.Creator<StartRecordResult>() { // from class: com.tencent.wecarspeech.vframework.StartRecordResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StartRecordResult createFromParcel(Parcel parcel) {
            return new StartRecordResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StartRecordResult[] newArray(int i) {
            return new StartRecordResult[i];
        }
    };
    public static final int FAIL_ARBITRATION = -1;
    public static final int FAIL_OTHERS = -3;
    public static final int FAIL_REQUEST_MIC_FOCUS = -2;
    public static final int SUCCESS = 0;
    public String mMsg;
    public int mRet;
    public String mTaskId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private StartRecordResult() {
        this.mRet = -3;
        this.mTaskId = "";
        this.mMsg = "";
    }

    protected StartRecordResult(Parcel parcel) {
        this.mRet = parcel.readInt();
        this.mTaskId = parcel.readString();
        this.mMsg = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mRet);
        parcel.writeString(this.mTaskId);
        parcel.writeString(this.mMsg);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        private int bRet = -3;
        private String bTaskId = "";
        private String bMsg = "";

        public Builder setRet(int i) {
            this.bRet = i;
            return this;
        }

        public Builder setTaskId(String str) {
            this.bTaskId = str;
            return this;
        }

        public Builder setMsg(String str) {
            this.bMsg = str;
            return this;
        }

        public StartRecordResult build() {
            StartRecordResult startRecordResult = new StartRecordResult();
            startRecordResult.mRet = this.bRet;
            startRecordResult.mTaskId = this.bTaskId;
            startRecordResult.mMsg = this.bMsg;
            return startRecordResult;
        }
    }
}
