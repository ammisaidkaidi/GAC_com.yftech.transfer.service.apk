package com.yftech.hicar.sdk;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class HiCarDeviceEntity implements Parcelable {
    public static final Parcelable.Creator<HiCarDeviceEntity> CREATOR = new Parcelable.Creator<HiCarDeviceEntity>() { // from class: com.yftech.hicar.sdk.HiCarDeviceEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HiCarDeviceEntity createFromParcel(Parcel parcel) {
            return new HiCarDeviceEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HiCarDeviceEntity[] newArray(int i) {
            return new HiCarDeviceEntity[i];
        }
    };
    private int connectType;
    private boolean connected;
    private String lastConnectTime;
    private String phoneBrMac;
    private String phoneId;
    private String phoneName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public HiCarDeviceEntity(String str, String str2, String str3, String str4, boolean z, int i) {
        this.phoneId = str;
        this.phoneName = str2;
        this.phoneBrMac = str3;
        this.lastConnectTime = str4;
        this.connected = z;
        this.connectType = i;
    }

    protected HiCarDeviceEntity(Parcel parcel) {
        this.phoneId = parcel.readString();
        this.phoneName = parcel.readString();
        this.phoneBrMac = parcel.readString();
        this.lastConnectTime = parcel.readString();
        this.connected = parcel.readByte() != 0;
        this.connectType = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.phoneId);
        parcel.writeString(this.phoneName);
        parcel.writeString(this.phoneBrMac);
        parcel.writeString(this.lastConnectTime);
        parcel.writeByte(this.connected ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.connectType);
    }

    public String getPhoneId() {
        return this.phoneId;
    }

    public void setPhoneId(String str) {
        this.phoneId = str;
    }

    public String getPhoneName() {
        return this.phoneName;
    }

    public void setPhoneName(String str) {
        this.phoneName = str;
    }

    public String getPhoneBrMac() {
        return this.phoneBrMac;
    }

    public void setPhoneBrMac(String str) {
        this.phoneBrMac = str;
    }

    public String getLastConnectTime() {
        return this.lastConnectTime;
    }

    public void setLastConnectTime(String str) {
        this.lastConnectTime = str;
    }

    public boolean isConnected() {
        return this.connected;
    }

    public void setConnected(boolean z) {
        this.connected = z;
    }

    public int getConnectType() {
        return this.connectType;
    }

    public void setConnectType(int i) {
        this.connectType = i;
    }
}
