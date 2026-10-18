package com.tencent.wecarbase.wecarnavi;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class TNLatLng implements Parcelable {
    public static final int COORDINATE_SYSTEM_GCJ02 = 1;
    public static final int COORDINATE_SYSTEM_WGS84 = 0;
    public static final Parcelable.Creator<TNLatLng> CREATOR = new Parcelable.Creator<TNLatLng>() { // from class: com.tencent.wecarbase.wecarnavi.TNLatLng.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TNLatLng createFromParcel(Parcel parcel) {
            return new TNLatLng(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TNLatLng[] newArray(int i) {
            return new TNLatLng[i];
        }
    };
    public static final double INVALID_VALUE = Double.MIN_VALUE;
    private int mCoordinateSystem;
    private double mLatitude;
    private double mLongitude;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TNLatLng() {
        this.mCoordinateSystem = 0;
        this.mLatitude = Double.MIN_VALUE;
        this.mLongitude = Double.MIN_VALUE;
    }

    public TNLatLng(TNLatLng tNLatLng) {
        this.mCoordinateSystem = 0;
        this.mLatitude = tNLatLng.mLatitude;
        this.mLongitude = tNLatLng.mLongitude;
    }

    public TNLatLng(int i, int i2) {
        this.mCoordinateSystem = 0;
        this.mLatitude = i;
        this.mLongitude = i2;
    }

    public TNLatLng(double d, double d2) {
        this.mCoordinateSystem = 0;
        this.mLatitude = d;
        this.mLongitude = d2;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public void setLatitude(double d) {
        this.mLatitude = d;
    }

    public void setLongitude(double d) {
        this.mLongitude = d;
    }

    public void setCoordinateSystem(int i) {
        this.mCoordinateSystem = i;
    }

    public int getCoordinateSystem() {
        return this.mCoordinateSystem;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        TNLatLng tNLatLng = (TNLatLng) obj;
        return Math.abs(this.mLatitude - tNLatLng.mLatitude) <= 1.0E-6d && Math.abs(this.mLongitude - tNLatLng.mLongitude) <= 1.0E-6d;
    }

    public int hashCode() {
        return (int) (((this.mLatitude + 31.0d) * 31.0d) + this.mLongitude);
    }

    public String toString() {
        return this.mLongitude + "," + this.mLatitude;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.mLatitude);
        parcel.writeDouble(this.mLongitude);
    }

    private TNLatLng(Parcel parcel) {
        this.mCoordinateSystem = 0;
        this.mLatitude = parcel.readDouble();
        this.mLongitude = parcel.readDouble();
    }

    public boolean isValid() {
        return this.mLatitude > 1.0d && this.mLatitude < 180.0d && this.mLongitude > 1.0d && this.mLongitude < 180.0d;
    }
}
