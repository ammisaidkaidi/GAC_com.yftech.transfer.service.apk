package com.desaysv.mixradio.media.data.model.xm;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new Parcelable.Creator<Profile>() { // from class: com.desaysv.mixradio.media.data.model.xm.Profile.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    };
    public int age;
    public String avatarUrl;
    public String city;
    public String gender;
    public int id;
    public String isVip;
    public String nickname;
    public String userTitle;
    public String vip_expire_time;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected Profile(Parcel parcel) {
        this.id = parcel.readInt();
        this.nickname = parcel.readString();
        this.avatarUrl = parcel.readString();
        this.city = parcel.readString();
        this.gender = parcel.readString();
        this.age = parcel.readInt();
        this.userTitle = parcel.readString();
        this.isVip = parcel.readString();
        this.vip_expire_time = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.id);
        parcel.writeString(this.nickname);
        parcel.writeString(this.avatarUrl);
        parcel.writeString(this.city);
        parcel.writeString(this.gender);
        parcel.writeInt(this.age);
        parcel.writeString(this.userTitle);
        parcel.writeString(this.isVip);
        parcel.writeString(this.vip_expire_time);
    }

    public String toString() {
        return "Profile{id=" + this.id + ", nickname='" + this.nickname + "', avatarUrl='" + this.avatarUrl + "', city='" + this.city + "', gender='" + this.gender + "', age=" + this.age + ", userTitle='" + this.userTitle + "', isVip='" + this.isVip + "', vip_expire_time='" + this.vip_expire_time + "'}";
    }
}
