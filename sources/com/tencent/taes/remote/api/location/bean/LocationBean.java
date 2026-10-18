package com.tencent.taes.remote.api.location.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class LocationBean implements Parcelable, Cloneable {
    public static final int COORDINATE_TYPE_GCJ02 = 1;
    public static final int COORDINATE_TYPE_WGS84 = 2;
    public static final Parcelable.Creator<LocationBean> CREATOR = new Parcelable.Creator<LocationBean>() { // from class: com.tencent.taes.remote.api.location.bean.LocationBean.1
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
    public static final double LOCDEFAULT = Double.MIN_VALUE;
    public static final int LOC_TYPE_NETWORK = 1;
    public static final int LOC_TYPE_NMEA = 3;
    public static final int LOC_TYPE_SYSTEM = 2;
    public static final int LOC_TYPE_UNKNOWN = 0;
    public float accuracy;
    public double altitude;
    public double azimuth;
    public String city;
    public float direction;
    public String district;
    public double elevation;
    public int fixmode;
    public int gpsQuality;
    public double hdop;
    public int inPark;
    public int loctype;
    public double pdop;
    public double phonedir;
    public String provider;
    public String province;
    public int satellitesNum;
    public float speed;
    public String street;
    public long time;
    public int type;
    public double vdop;
    public double latitude = Double.MIN_VALUE;
    public double longitude = Double.MIN_VALUE;
    public boolean isSimulateLoc = false;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean isValid() {
        return (isFloatEqual(this.longitude, Double.MIN_VALUE) || isFloatEqual(this.latitude, Double.MIN_VALUE)) ? false : true;
    }

    private boolean isFloatEqual(double d, double d2) {
        return Math.abs(d - d2) < 1.0E-5d;
    }

    public LatLng toGeoPoint() {
        return new LatLng(this.latitude, this.longitude);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeFloat(this.speed);
        parcel.writeFloat(this.direction);
        parcel.writeFloat(this.accuracy);
        parcel.writeInt(this.satellitesNum);
        parcel.writeDouble(this.altitude);
        parcel.writeInt(this.type);
        parcel.writeLong(this.time);
        parcel.writeInt(this.gpsQuality);
        parcel.writeInt(this.loctype);
        parcel.writeByte(this.isSimulateLoc ? (byte) 1 : (byte) 0);
        parcel.writeString(this.provider);
        parcel.writeInt(this.inPark);
        parcel.writeInt(this.fixmode);
        parcel.writeDouble(this.hdop);
        parcel.writeDouble(this.vdop);
        parcel.writeDouble(this.pdop);
        parcel.writeDouble(this.phonedir);
        parcel.writeDouble(this.azimuth);
        parcel.writeDouble(this.elevation);
        parcel.writeString(this.province);
        parcel.writeString(this.city);
        parcel.writeString(this.district);
        parcel.writeString(this.street);
    }

    public void readFromParcel(Parcel parcel) {
        this.latitude = parcel.readDouble();
        this.longitude = parcel.readDouble();
        this.speed = parcel.readFloat();
        this.direction = parcel.readFloat();
        this.accuracy = parcel.readFloat();
        this.satellitesNum = parcel.readInt();
        this.altitude = parcel.readDouble();
        this.type = parcel.readInt();
        this.time = parcel.readLong();
        this.gpsQuality = parcel.readInt();
        this.loctype = parcel.readInt();
        this.isSimulateLoc = parcel.readByte() != 0;
        this.provider = parcel.readString();
        this.inPark = parcel.readInt();
        this.fixmode = parcel.readInt();
        this.hdop = parcel.readDouble();
        this.vdop = parcel.readDouble();
        this.pdop = parcel.readDouble();
        this.phonedir = parcel.readDouble();
        this.azimuth = parcel.readDouble();
        this.elevation = parcel.readDouble();
        this.province = parcel.readString();
        this.city = parcel.readString();
        this.district = parcel.readString();
        this.street = parcel.readString();
    }

    public LocationBean() {
    }

    protected LocationBean(Parcel parcel) {
        readFromParcel(parcel);
    }

    public String toString() {
        return "LocationBean{latitude=" + this.latitude + ", longitude=" + this.longitude + ", speed=" + this.speed + ", direction=" + this.direction + ", accuracy=" + this.accuracy + ", satellitesNum=" + this.satellitesNum + ", altitude=" + this.altitude + ", type=" + this.type + ", time=" + this.time + ", gpsQuality=" + this.gpsQuality + ", loctype=" + this.loctype + ", isSimulateLoc=" + this.isSimulateLoc + ", provider='" + this.provider + "', inPark=" + this.inPark + ", fixmode=" + this.fixmode + ", hdop=" + this.hdop + ", vdop=" + this.vdop + ", hdop=" + this.hdop + ", phonedir=" + this.phonedir + ", azimuth=" + this.azimuth + ", elevation=" + this.elevation + ", province=" + this.province + ", city=" + this.city + ", district=" + this.district + ", street=" + this.street + '}';
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LocationBean m9clone() {
        LocationBean locationBean = new LocationBean();
        synchronized (this) {
            locationBean.latitude = this.latitude;
            locationBean.longitude = this.longitude;
            locationBean.speed = this.speed;
            locationBean.direction = this.direction;
            locationBean.accuracy = this.accuracy;
            locationBean.satellitesNum = this.satellitesNum;
            locationBean.altitude = this.altitude;
            locationBean.type = this.type;
            locationBean.time = this.time;
            locationBean.gpsQuality = this.gpsQuality;
            locationBean.loctype = this.loctype;
            locationBean.isSimulateLoc = this.isSimulateLoc;
            locationBean.provider = this.provider;
            locationBean.inPark = this.inPark;
            locationBean.fixmode = this.fixmode;
            locationBean.hdop = this.hdop;
            locationBean.vdop = this.vdop;
            locationBean.pdop = this.pdop;
            locationBean.phonedir = this.phonedir;
            locationBean.azimuth = this.azimuth;
            locationBean.elevation = this.elevation;
            locationBean.province = this.province;
            locationBean.city = this.city;
            locationBean.district = this.district;
            locationBean.street = this.street;
        }
        return locationBean;
    }
}
