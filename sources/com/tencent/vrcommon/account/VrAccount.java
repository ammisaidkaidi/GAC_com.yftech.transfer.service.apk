package com.tencent.vrcommon.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class VrAccount implements Parcelable {
    public static final Parcelable.Creator<VrAccount> CREATOR = new Parcelable.Creator<VrAccount>() { // from class: com.tencent.vrcommon.account.VrAccount.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VrAccount createFromParcel(Parcel parcel) {
            return new VrAccount(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VrAccount[] newArray(int i) {
            return new VrAccount[i];
        }
    };
    private String mAvatarUrl;
    private String mNickName;
    private String mUserId;
    private String mWeCarId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VrAccount() {
    }

    protected VrAccount(Parcel parcel) {
        this.mNickName = parcel.readString();
        this.mAvatarUrl = parcel.readString();
        this.mWeCarId = parcel.readString();
        this.mUserId = parcel.readString();
    }

    public String getNickName() {
        return this.mNickName;
    }

    public void setNickName(String str) {
        this.mNickName = str;
    }

    public String getAvatarUrl() {
        return this.mAvatarUrl;
    }

    public void setAvatarUrl(String str) {
        this.mAvatarUrl = str;
    }

    public String getWeCarId() {
        return this.mWeCarId;
    }

    public void setWeCarId(String str) {
        this.mWeCarId = str;
    }

    public String getUserId() {
        return this.mUserId;
    }

    public void setUserId(String str) {
        this.mUserId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mNickName);
        parcel.writeString(this.mAvatarUrl);
        parcel.writeString(this.mWeCarId);
        parcel.writeString(this.mUserId);
    }
}
