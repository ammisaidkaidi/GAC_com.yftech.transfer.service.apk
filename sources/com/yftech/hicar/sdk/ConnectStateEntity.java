package com.yftech.hicar.sdk;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class ConnectStateEntity implements Parcelable {
    public static final Parcelable.Creator<ConnectStateEntity> CREATOR = new Parcelable.Creator<ConnectStateEntity>() { // from class: com.yftech.hicar.sdk.ConnectStateEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectStateEntity createFromParcel(Parcel parcel) {
            return new ConnectStateEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectStateEntity[] newArray(int i) {
            return new ConnectStateEntity[i];
        }
    };
    private int connectType;
    private boolean connected;
    private String deviceName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ConnectStateEntity(boolean z, String str, int i) {
        this.connected = z;
        this.deviceName = str;
        this.connectType = i;
    }

    protected ConnectStateEntity(Parcel parcel) {
        this.connected = parcel.readByte() != 0;
        this.deviceName = parcel.readString();
        this.connectType = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.connected ? (byte) 1 : (byte) 0);
        parcel.writeString(this.deviceName);
        parcel.writeInt(this.connectType);
    }

    public String toString() {
        return "ConnectStateEntity{connected=" + this.connected + ", deviceName='" + this.deviceName + "', connectType=" + this.connectType + '}';
    }

    public boolean isConnected() {
        return this.connected;
    }

    public void setConnected(boolean z) {
        this.connected = z;
    }

    public String getDeviceName() {
        return this.deviceName;
    }

    public void setDeviceName(String str) {
        this.deviceName = str;
    }

    public int getConnectType() {
        return this.connectType;
    }

    public void setConnectType(int i) {
        this.connectType = i;
    }
}
