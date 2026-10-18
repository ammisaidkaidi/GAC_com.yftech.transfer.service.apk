package com.iflytek.autofly.custom.bluetooth.aidl;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class FlyDevice implements Parcelable {
    public static final Parcelable.Creator<FlyDevice> CREATOR = new Parcelable.Creator<FlyDevice>() { // from class: com.iflytek.autofly.custom.bluetooth.aidl.FlyDevice.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlyDevice[] newArray(int i) {
            return new FlyDevice[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FlyDevice createFromParcel(Parcel parcel) {
            return new FlyDevice(parcel);
        }
    };
    private String mAddress;
    private String mName;
    private int mState;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FlyDevice() {
        this.mName = "unknown";
        this.mAddress = "00:00:00:00:00:00";
        this.mState = 0;
    }

    public String getAddress() {
        return this.mAddress;
    }

    public void setAddress(String str) {
        this.mAddress = str;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public int getState() {
        return this.mState;
    }

    public void setState(int i) {
        this.mState = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mName);
        parcel.writeString(this.mAddress);
        parcel.writeInt(this.mState);
    }

    public FlyDevice(Parcel parcel) {
        this.mName = parcel.readString();
        this.mAddress = parcel.readString();
        this.mState = parcel.readInt();
    }
}
