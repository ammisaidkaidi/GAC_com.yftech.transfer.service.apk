package com.tencent.vrcommon.semantic;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class LocationBean implements Parcelable {
    public static final Parcelable.Creator<LocationBean> CREATOR = new Parcelable.Creator<LocationBean>() { // from class: com.tencent.vrcommon.semantic.LocationBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationBean createFromParcel(Parcel parcel) {
            return new LocationBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationBean[] newArray(int i) {
            return new LocationBean[i];
        }
    };
    public static final double INVALID_VALUE = Double.MIN_VALUE;
    private double mLatitude;
    private double mLongitude;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LocationBean() {
        this.mLatitude = Double.MIN_VALUE;
        this.mLongitude = Double.MIN_VALUE;
    }

    public LocationBean(LocationBean locationBean) {
        this.mLatitude = locationBean.mLatitude;
        this.mLongitude = locationBean.mLongitude;
    }

    public LocationBean(int i, int i2) {
        this.mLatitude = i;
        this.mLongitude = i2;
    }

    public LocationBean(double d, double d2) {
        this.mLatitude = d;
        this.mLongitude = d2;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public void setLatitude(int i) {
        this.mLatitude = i;
    }

    public void setLongitude(int i) {
        this.mLongitude = i;
    }

    public void setLatitude(double d) {
        this.mLatitude = d;
    }

    public void setLongitude(double d) {
        this.mLongitude = d;
    }

    public int getLatitudeE6() {
        return (int) (this.mLatitude * 1000000.0d);
    }

    public int getLongitudeE6() {
        return (int) (this.mLongitude * 1000000.0d);
    }

    public void setLatitudeE6(int i) {
        this.mLatitude = i / 1000000.0d;
    }

    public void setLongitudeE6(int i) {
        this.mLongitude = i / 1000000.0d;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        LocationBean locationBean = (LocationBean) obj;
        return Math.abs(this.mLatitude - locationBean.mLatitude) <= 1.0E-6d && Math.abs(this.mLongitude - locationBean.mLongitude) <= 1.0E-6d;
    }

    public int hashCode() {
        return (int) (((this.mLatitude + 31.0d) * 31.0d) + this.mLongitude);
    }

    public String toString() {
        return this.mLongitude + "," + this.mLatitude;
    }

    public static LocationBean formString(String str) {
        LocationBean locationBean = new LocationBean();
        if (str != null) {
            try {
                String[] split = str.split(",");
                if (split != null && split.length == 2) {
                    locationBean.mLongitude = Double.parseDouble(split[0]);
                    locationBean.mLatitude = Double.parseDouble(split[1]);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return locationBean;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.mLatitude);
        parcel.writeDouble(this.mLongitude);
    }

    private LocationBean(Parcel parcel) {
        this.mLatitude = parcel.readDouble();
        this.mLongitude = parcel.readDouble();
    }

    public boolean isValid() {
        return this.mLatitude > 1.0d && this.mLatitude < 180.0d && this.mLongitude > 1.0d && this.mLongitude < 180.0d;
    }
}
