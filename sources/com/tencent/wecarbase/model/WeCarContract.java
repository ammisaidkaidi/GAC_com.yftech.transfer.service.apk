package com.tencent.wecarbase.model;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarContract implements Parcelable {
    public static final Parcelable.Creator<WeCarContract> CREATOR = new Parcelable.Creator<WeCarContract>() { // from class: com.tencent.wecarbase.model.WeCarContract.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WeCarContract createFromParcel(Parcel parcel) {
            return new WeCarContract(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WeCarContract[] newArray(int i) {
            return new WeCarContract[i];
        }
    };
    private int auth;
    private boolean available;
    private long endTime;
    private long remainTime;
    private long startTime;
    private String wxSign;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public WeCarContract(int i, long j, long j2, long j3, String str, boolean z) {
        this.auth = i;
        this.startTime = j;
        this.endTime = j2;
        this.remainTime = j3;
        this.wxSign = str;
        this.available = z;
    }

    public int getAuth() {
        return this.auth;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public long getEndTime() {
        return this.endTime;
    }

    public long getRemainTime() {
        return this.remainTime;
    }

    public String getWxSign() {
        return this.wxSign;
    }

    public boolean isAvailable() {
        return this.available;
    }

    public String toString() {
        return "WeCarContract{startTime=" + this.startTime + ", endTime=" + this.endTime + ", remainTime=" + this.remainTime + ", wxSign='" + this.wxSign + "', available=" + this.available + '}';
    }

    protected WeCarContract(Parcel parcel) {
        this.auth = parcel.readInt();
        this.startTime = parcel.readLong();
        this.endTime = parcel.readLong();
        this.remainTime = parcel.readLong();
        this.wxSign = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.auth);
        parcel.writeLong(this.startTime);
        parcel.writeLong(this.endTime);
        parcel.writeLong(this.remainTime);
        parcel.writeString(this.wxSign);
    }
}
