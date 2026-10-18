package com.tencent.wecarbase.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tencent.wecarbase.utils.StringUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class TxAccount implements Parcelable {
    public static final Parcelable.Creator<TxAccount> CREATOR = new Parcelable.Creator<TxAccount>() { // from class: com.tencent.wecarbase.model.TxAccount.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TxAccount createFromParcel(Parcel parcel) {
            return new TxAccount(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TxAccount[] newArray(int i) {
            return new TxAccount[i];
        }
    };
    private int isTokenExpired;
    private int loginType;
    private String mAvatarUrl;
    private String mId;
    private String mNickName;
    private String mUserId;
    private String pkgName;
    int TYPE_WX = 2;
    int TYPE_QQ = 1;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int hashCode() {
        return 41;
    }

    public boolean isWX() {
        return this.loginType == this.TYPE_WX;
    }

    public TxAccount() {
    }

    public int getLoginType() {
        return this.loginType;
    }

    public void setLoginType(int i) {
        this.loginType = i;
    }

    public int getTokenExpired() {
        return this.isTokenExpired;
    }

    public void setisTokenExpired(int i) {
        this.isTokenExpired = i;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public String getId() {
        return this.mId;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public String getUserId() {
        return this.mUserId;
    }

    public void setUserId(String str) {
        this.mUserId = str;
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

    public boolean equals(Object obj) {
        String id;
        return obj != null && (obj instanceof TxAccount) && (id = ((TxAccount) obj).getId()) != null && id.equals(this.mId);
    }

    public String toString() {
        return "id: " + this.mId + ", nick: " + this.mNickName + ", userId: " + this.mUserId + ", mAvatarUrl: " + this.mAvatarUrl + ", loginType: " + this.loginType + ", pkgName: " + this.pkgName + ", isTokenExpired:" + this.isTokenExpired;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.loginType);
        parcel.writeString(this.pkgName);
        parcel.writeString(this.mId);
        parcel.writeLong((TextUtils.isEmpty(this.mUserId) || !StringUtils.isInteger(this.mUserId)) ? 0L : Long.parseLong(this.mUserId));
        parcel.writeString(this.mNickName);
        parcel.writeString(this.mAvatarUrl);
        parcel.writeInt(this.isTokenExpired);
        if (this.TYPE_QQ == this.loginType) {
            parcel.writeString(this.mUserId);
        }
    }

    protected TxAccount(Parcel parcel) {
        this.loginType = parcel.readInt();
        this.pkgName = parcel.readString();
        this.mId = parcel.readString();
        long readLong = parcel.readLong();
        this.mUserId = readLong == 0 ? "" : String.valueOf(readLong);
        this.mNickName = parcel.readString();
        this.mAvatarUrl = parcel.readString();
        this.isTokenExpired = parcel.readInt();
        if (this.TYPE_QQ == this.loginType && "".equals(this.mUserId)) {
            this.mUserId = parcel.readString();
        }
    }
}
