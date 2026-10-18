package com.desaysv.mixmedia.media.data.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.yftech.transfer.service.CarAppList;

/* loaded from: /home/user/work/dex/classes.dex */
public class User implements Parcelable {
    public static final Parcelable.Creator<User> CREATOR = new Parcelable.Creator<User>() { // from class: com.desaysv.mixmedia.media.data.bean.User.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public User createFromParcel(Parcel parcel) {
            return new User(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public User[] newArray(int i) {
            return new User[i];
        }
    };
    private String avatar;
    private String expireTime;
    private boolean isBind;
    private boolean isLogin;
    private boolean isVip;
    private String nickName;
    private String token;
    private String userId;
    private String vipEndTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public User(String str, String str2, String str3, String str4, String str5, String str6, boolean z, boolean z2) {
        this.userId = str;
        this.token = str2;
        this.nickName = str3;
        this.avatar = str4;
        this.expireTime = str5;
        this.vipEndTime = str6;
        this.isVip = z;
        this.isLogin = z2;
    }

    public User() {
        this("", "", "guest", "", CarAppList.MediaPage.PAGE_FM, "", false, false);
    }

    protected User(Parcel parcel) {
        this.userId = parcel.readString();
        this.token = parcel.readString();
        this.nickName = parcel.readString();
        this.avatar = parcel.readString();
        this.expireTime = parcel.readString();
        this.vipEndTime = parcel.readString();
        this.isVip = parcel.readByte() != 0;
        this.isLogin = parcel.readByte() != 0;
        this.isBind = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.userId);
        parcel.writeString(this.token);
        parcel.writeString(this.nickName);
        parcel.writeString(this.avatar);
        parcel.writeString(this.expireTime);
        parcel.writeString(this.vipEndTime);
        parcel.writeByte(this.isVip ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isLogin ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isBind ? (byte) 1 : (byte) 0);
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String getNickName() {
        return this.nickName;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public String getExpireTime() {
        return this.expireTime;
    }

    public void setExpireTime(String str) {
        this.expireTime = str;
    }

    public String getVipEndTime() {
        return this.vipEndTime;
    }

    public void setVipEndTime(String str) {
        this.vipEndTime = str;
    }

    public boolean isVip() {
        return this.isVip;
    }

    public void setVip(boolean z) {
        this.isVip = z;
    }

    public boolean isLogin() {
        return this.isLogin;
    }

    public void setLogin(boolean z) {
        this.isLogin = z;
    }

    public boolean isBind() {
        return this.isBind;
    }

    public void setBind(boolean z) {
        this.isBind = z;
    }

    public String toString() {
        return "User{userId='" + this.userId + "', nickName='" + this.nickName + "', avatar='" + this.avatar + "', expireTime='" + this.expireTime + "', vipEndTime='" + this.vipEndTime + "', isVip=" + this.isVip + ", isLogin=" + this.isLogin + ", isBind=" + this.isBind + '}';
    }
}
