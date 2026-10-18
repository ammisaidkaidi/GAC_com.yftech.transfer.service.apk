package com.tencent.taes.remote.api.location.bean;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class LatLng implements Parcelable {
    public static final Parcelable.Creator<LatLng> CREATOR = new Parcelable.Creator<LatLng>() { // from class: com.tencent.taes.remote.api.location.bean.LatLng.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLng createFromParcel(Parcel parcel) {
            return new LatLng(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LatLng[] newArray(int i) {
            return new LatLng[i];
        }
    };
    public static final double INVALID_VALUE = Double.MIN_VALUE;
    public static final String KEY_LATITUDE = "latitude";
    public static final String KEY_LONGTITUDE = "longtitude";
    public double latitude;
    public double longitude;
    protected Bundle mExtBundle;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtBundle() {
        return this.mExtBundle;
    }

    public void setExtBundle(Bundle bundle) {
        this.mExtBundle = this.mExtBundle;
    }

    public LatLng() {
        this.longitude = 0.0d;
        this.latitude = 0.0d;
    }

    public LatLng(LatLng latLng) {
        if (latLng != null) {
            this.longitude = latLng.getLongitude();
            this.latitude = latLng.getLatitude();
            this.mExtBundle = latLng.getExtBundle();
        }
    }

    public LatLng(double d, double d2) {
        this.longitude = d2;
        this.latitude = d;
    }

    public LatLng(double d, double d2, Bundle bundle) {
        this.longitude = d2;
        this.latitude = d;
        this.mExtBundle = bundle;
    }

    public double getLatitude() {
        return this.latitude;
    }

    public void setLatitude(double d) {
        this.latitude = d;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public void setLongitude(double d) {
        this.longitude = d;
    }

    public int getLatitudeE6() {
        return (int) (this.latitude * 1000000.0d);
    }

    public int getLongitudeE6() {
        return (int) (this.longitude * 1000000.0d);
    }

    public void setLatitudeE6(int i) {
        this.latitude = i / 1000000.0d;
    }

    public void setLongitudeE6(int i) {
        this.longitude = i / 1000000.0d;
    }

    public boolean isValid() {
        return this.latitude > 1.0d && this.latitude < 180.0d && this.longitude > 1.0d && this.longitude < 180.0d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeBundle(this.mExtBundle);
    }

    protected LatLng(Parcel parcel) {
        this.latitude = parcel.readDouble();
        this.longitude = parcel.readDouble();
        this.mExtBundle = parcel.readBundle();
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(KEY_LONGTITUDE, this.longitude);
            jSONObject.put("latitude", this.latitude);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        return "LatLng{latitude=" + this.latitude + ", longitude=" + this.longitude + '}';
    }
}
