package com.tencent.taes.remote.api.location.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class LocationDistrict implements Parcelable {
    public static final Parcelable.Creator<LocationDistrict> CREATOR = new Parcelable.Creator<LocationDistrict>() { // from class: com.tencent.taes.remote.api.location.bean.LocationDistrict.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationDistrict createFromParcel(Parcel parcel) {
            return new LocationDistrict(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocationDistrict[] newArray(int i) {
            return new LocationDistrict[i];
        }
    };
    public static final int DISTRICT_INVALID_VALUE = -1;
    public static final int DISTRICT_TYPE_CITY = 3;
    public static final int DISTRICT_TYPE_COUNTRY = 1;
    public static final int DISTRICT_TYPE_COUNTY = 4;
    public static final int DISTRICT_TYPE_INVALID = -1;
    public static final int DISTRICT_TYPE_PROVINCE = 2;
    public static final int DISTRICT_TYPE_WORLD = 0;
    public int cityID;
    public String cityName;
    public int districtID;
    public String districtName;
    public String name;
    public int provinceID;
    public String provinceName;
    public int type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeInt(this.districtID);
        parcel.writeInt(this.provinceID);
        parcel.writeInt(this.cityID);
        parcel.writeString(this.name);
        parcel.writeString(this.provinceName);
        parcel.writeString(this.cityName);
        parcel.writeString(this.districtName);
    }

    public void readFromParcel(Parcel parcel) {
        this.type = parcel.readInt();
        this.districtID = parcel.readInt();
        this.provinceID = parcel.readInt();
        this.cityID = parcel.readInt();
        this.name = parcel.readString();
        this.provinceName = parcel.readString();
        this.cityName = parcel.readString();
        this.districtName = parcel.readString();
    }

    public LocationDistrict() {
        this.districtID = -1;
        this.provinceID = -1;
        this.cityID = -1;
    }

    protected LocationDistrict(Parcel parcel) {
        this.districtID = -1;
        this.provinceID = -1;
        this.cityID = -1;
        this.type = parcel.readInt();
        this.districtID = parcel.readInt();
        this.provinceID = parcel.readInt();
        this.cityID = parcel.readInt();
        this.name = parcel.readString();
        this.provinceName = parcel.readString();
        this.cityName = parcel.readString();
        this.districtName = parcel.readString();
    }
}
