package com.tencent.taes.remote.api.routeguide.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class WecarPoi implements Parcelable {
    public static final Parcelable.Creator<WecarPoi> CREATOR = new Parcelable.Creator<WecarPoi>() { // from class: com.tencent.taes.remote.api.routeguide.bean.WecarPoi.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WecarPoi createFromParcel(Parcel parcel) {
            return new WecarPoi(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WecarPoi[] newArray(int i) {
            return new WecarPoi[i];
        }
    };
    public String address;
    public String id;
    public double latitude;
    public double longitude;
    public String name;
    public String type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public WecarPoi() {
        this.name = "";
        this.address = "";
        this.id = "";
        this.type = "";
    }

    protected WecarPoi(Parcel parcel) {
        this.name = "";
        this.address = "";
        this.id = "";
        this.type = "";
        this.latitude = parcel.readDouble();
        this.longitude = parcel.readDouble();
        this.name = parcel.readString();
        this.address = parcel.readString();
        this.id = parcel.readString();
        this.type = parcel.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeString(this.name);
        parcel.writeString(this.address);
        parcel.writeString(this.id);
        parcel.writeString(this.type);
    }

    public String toString() {
        return "SearchPoi{latitude=" + this.latitude + ", longitude=" + this.longitude + "name=" + this.name + ", address=" + this.address + "id=" + this.id + ", type=" + this.type + '}';
    }
}
