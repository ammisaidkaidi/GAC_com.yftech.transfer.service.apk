package com.tencent.taifeedback.upload.sdk.helper;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.taifeedback.upload.sdk.utils.Utils;

/* loaded from: /home/user/work/dex/classes.dex */
public class LocationHelper implements LocationListener {
    private static final String TAG = "LocationListener";
    private static LocationHelper locationService;
    private String bestProvider;
    private Location location;
    private LocationManager locationManager;
    private double latitude = 0.0d;
    private double longitude = 0.0d;
    private float speed = 0.0f;

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    public static LocationHelper getInstance() {
        if (locationService == null) {
            locationService = new LocationHelper();
        }
        return locationService;
    }

    public void init(Context context) {
        if (this.locationManager == null) {
            this.locationManager = (LocationManager) context.getSystemService("location");
        }
        Criteria criteria = new Criteria();
        criteria.setAccuracy(1);
        criteria.setAltitudeRequired(false);
        criteria.setBearingRequired(false);
        criteria.setCostAllowed(false);
        criteria.setPowerRequirement(1);
        try {
            this.bestProvider = FeedBackConstants.JSON_FIELD_NETWORK;
            if (!this.locationManager.isProviderEnabled(this.bestProvider)) {
                this.bestProvider = this.locationManager.getBestProvider(criteria, true);
            }
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
        }
        try {
            this.locationManager.requestLocationUpdates(this.bestProvider, 1000L, 10.0f, locationService);
            this.location = this.locationManager.getLastKnownLocation(this.bestProvider);
        } catch (Exception e2) {
            Utils.getInstance().log(TAG, e2);
        }
    }

    public String getLocation() {
        if (this.location == null && this.locationManager != null && this.bestProvider != null) {
            this.location = this.locationManager.getLastKnownLocation(this.bestProvider);
        }
        if (this.location != null) {
            this.latitude = this.location.getLatitude();
            this.longitude = this.location.getLongitude();
            this.speed = this.location.getSpeed();
        }
        if (this.latitude == 0.0d && this.longitude == 0.0d) {
            return "N/A";
        }
        return this.latitude + "," + this.longitude;
    }

    public String getSpeed() {
        if (this.location == null && this.locationManager != null && this.bestProvider != null) {
            this.location = this.locationManager.getLastKnownLocation(this.bestProvider);
        }
        if (this.location != null) {
            this.speed = this.location.getSpeed();
        }
        return ((double) this.speed) == 0.0d ? "N/A" : String.valueOf(this.speed * 3.6f);
    }

    public void destroy() {
        this.locationManager.removeUpdates(locationService);
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        locationService.location = location;
        this.latitude = location.getLatitude();
        this.longitude = location.getLongitude();
        this.speed = location.getSpeed();
    }
}
