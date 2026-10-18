package com.tencent.wecarbase.wecarnavi;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class TNPoi implements Parcelable {
    public static final Parcelable.Creator<TNPoi> CREATOR = new Parcelable.Creator<TNPoi>() { // from class: com.tencent.wecarbase.wecarnavi.TNPoi.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TNPoi createFromParcel(Parcel parcel) {
            return new TNPoi(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TNPoi[] newArray(int i) {
            return new TNPoi[i];
        }
    };
    private String address;
    private int childPoiCount;
    private ArrayList<TNPoi> childPoiList;
    private TNLatLng coordinate;
    private float distanceToCenter;
    private int districtID;
    private boolean isHasStreetScape;
    private TNLatLng naviCoordinate;
    private String poiAliasName;
    private String poiID;
    private String poiName;
    private String poiType;
    private String telephone;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TNPoi() {
        this.coordinate = new TNLatLng();
        this.naviCoordinate = new TNLatLng();
        this.address = "";
        this.poiName = "";
    }

    public TNPoi(TNPoi tNPoi) {
        this.coordinate = new TNLatLng();
        this.naviCoordinate = new TNLatLng();
        copy(tNPoi);
    }

    private TNPoi(Parcel parcel) {
        this.coordinate = new TNLatLng();
        this.naviCoordinate = new TNLatLng();
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.poiID = parcel.readString();
        this.poiName = parcel.readString();
        this.poiType = parcel.readString();
        this.coordinate.setLatitude(parcel.readDouble());
        this.coordinate.setLongitude(parcel.readDouble());
        this.naviCoordinate.setLatitude(parcel.readDouble());
        this.naviCoordinate.setLongitude(parcel.readDouble());
        this.districtID = parcel.readInt();
        this.telephone = parcel.readString();
        this.address = parcel.readString();
        this.distanceToCenter = parcel.readFloat();
        this.isHasStreetScape = parcel.readByte() != 0;
    }

    public String toString() {
        return "TNPoi{poiID='" + this.poiID + "', poiName='" + this.poiName + "', poiType=" + this.poiType + ", coordinate=" + this.coordinate.toString() + ", naviCoordinate=" + this.naviCoordinate.toString() + ", districtID=" + this.districtID + ", telephone='" + this.telephone + "', address='" + this.address + "', distanceToCenter=" + this.distanceToCenter + ", isHasStreetScape=" + this.isHasStreetScape + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.poiID == null ? "" : this.poiID);
        parcel.writeString(this.poiName == null ? "" : this.poiName);
        parcel.writeString(this.poiType == null ? "" : this.poiType);
        parcel.writeDouble(this.coordinate.getLatitude());
        parcel.writeDouble(this.coordinate.getLongitude());
        parcel.writeDouble(this.naviCoordinate.getLatitude());
        parcel.writeDouble(this.naviCoordinate.getLongitude());
        parcel.writeInt(this.districtID);
        parcel.writeString(this.telephone == null ? "" : this.telephone);
        parcel.writeString(this.address == null ? "" : this.address);
        parcel.writeFloat(this.distanceToCenter);
        parcel.writeByte(this.isHasStreetScape ? (byte) 1 : (byte) 0);
    }

    public void copy(TNPoi tNPoi) {
        if (tNPoi == null) {
            return;
        }
        if (!TextUtils.isEmpty(tNPoi.poiID)) {
            this.poiID = new String(tNPoi.poiID);
        } else {
            this.poiID = "";
        }
        if (!TextUtils.isEmpty(tNPoi.poiName)) {
            this.poiName = new String(tNPoi.poiName);
        } else {
            this.poiName = "";
        }
        if (!TextUtils.isEmpty(tNPoi.poiType)) {
            this.poiType = new String(tNPoi.poiType);
        } else {
            this.poiType = "";
        }
        if (tNPoi.coordinate != null) {
            this.coordinate = new TNLatLng(tNPoi.coordinate);
        } else {
            this.coordinate = new TNLatLng();
        }
        if (tNPoi.naviCoordinate != null) {
            this.naviCoordinate = new TNLatLng(tNPoi.naviCoordinate);
        } else {
            this.naviCoordinate = new TNLatLng();
        }
        this.districtID = tNPoi.districtID;
        if (!TextUtils.isEmpty(tNPoi.telephone)) {
            this.telephone = new String(tNPoi.telephone);
        } else {
            this.telephone = "";
        }
        if (!TextUtils.isEmpty(tNPoi.address)) {
            this.address = new String(tNPoi.address);
        } else {
            this.address = "";
        }
        this.distanceToCenter = tNPoi.distanceToCenter;
        this.isHasStreetScape = tNPoi.isHasStreetScape;
    }

    public String getPoiID() {
        return this.poiID;
    }

    public String getPoiName() {
        return this.poiName;
    }

    public String getPoiType() {
        return this.poiType;
    }

    public TNLatLng getCoordinate() {
        return this.coordinate;
    }

    public TNLatLng getNaviCoordinate() {
        return this.naviCoordinate;
    }

    public int getDistrictID() {
        return this.districtID;
    }

    public String getAddress() {
        return this.address;
    }
}
