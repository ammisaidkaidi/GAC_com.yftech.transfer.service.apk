package com.tencent.taes.remote.api.account.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class WeCarContract implements Parcelable {
    public static final Parcelable.Creator<WeCarContract> CREATOR = new Parcelable.Creator<WeCarContract>() { // from class: com.tencent.taes.remote.api.account.bean.WeCarContract.1
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
    private String brandName;
    private String carModel;
    private long endTime;
    private String productId;
    private long remainTime;
    private long startTime;
    private String wxRegDid;
    private String wxSign;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public WeCarContract(int i, long j, long j2, long j3, String str, String str2, boolean z) {
        this.auth = i;
        this.startTime = j;
        this.endTime = j2;
        this.remainTime = j3;
        this.wxSign = str;
        this.wxRegDid = str2;
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

    public String getWxRegDid() {
        return this.wxRegDid;
    }

    public boolean isAvailable() {
        return this.available;
    }

    public String getProductId() {
        return this.productId;
    }

    public void setProductId(String str) {
        this.productId = str;
    }

    public String getBrandName() {
        return this.brandName;
    }

    public void setBrandName(String str) {
        this.brandName = str;
    }

    public String getCarModel() {
        return this.carModel;
    }

    public void setCarModel(String str) {
        this.carModel = str;
    }

    public String toString() {
        return "WeCarContract{startTime=" + this.startTime + ", endTime=" + this.endTime + ", remainTime=" + this.remainTime + ", wxSign=" + this.wxSign + ", wxRegDid=" + this.wxRegDid + ", available=" + this.available + ", productId=" + this.productId + ", brandName=" + this.brandName + ", carModel=" + this.carModel + '}';
    }

    protected WeCarContract(Parcel parcel) {
        this.auth = parcel.readInt();
        this.startTime = parcel.readLong();
        this.endTime = parcel.readLong();
        this.remainTime = parcel.readLong();
        this.wxSign = parcel.readString();
        this.wxRegDid = parcel.readString();
        this.available = parcel.readInt() != 0;
        this.productId = parcel.readString();
        this.brandName = parcel.readString();
        this.carModel = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.auth);
        parcel.writeLong(this.startTime);
        parcel.writeLong(this.endTime);
        parcel.writeLong(this.remainTime);
        parcel.writeString(this.wxSign);
        parcel.writeString(this.wxRegDid);
        parcel.writeInt(this.available ? 1 : 0);
        parcel.writeString(this.productId);
        parcel.writeString(this.brandName);
        parcel.writeString(this.carModel);
    }
}
