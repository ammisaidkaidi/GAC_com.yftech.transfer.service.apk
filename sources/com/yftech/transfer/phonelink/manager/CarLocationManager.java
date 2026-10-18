package com.yftech.transfer.phonelink.manager;

import android.content.Context;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import com.so.GpsManager;
import com.utils.LogUtil;
import com.yftech.transfer.phonelink.helper.CarPlayLinkHelper;
import com.yftech.transfer.phonelink.manager.interf.BasicManager;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.utils.SettingsUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarLocationManager extends BasicManager {
    public static final String STATUS_EFFECT = "A";
    public static final String STATUS_NO_EFFECT = "V";
    public static final CarLocationManager ins = new CarLocationManager();
    private static boolean isInit = false;
    private static final HashSet<CarLocationObservor> observors = new HashSet<>();
    private Context mContext;
    private Location mLocation;
    private LocationManager mLocationManager;
    private Map<String, String> nmeaMap = new HashMap();
    private String mEffectStatus = STATUS_NO_EFFECT;
    private GpsManager.GpsObservor gpsObservor = new GpsManager.GpsObservor() { // from class: com.yftech.transfer.phonelink.manager.CarLocationManager.1
        @Override // com.so.GpsManager.GpsObservor
        public void onGetData(String str, String str2) {
            SettingsUtil.putString(CarPlayLinkHelper.KEY_NMEA_GPGGA, str);
            SettingsUtil.putString(CarPlayLinkHelper.KEY_NMEA_GPRMC, str2);
            CarLocationManager.this.nmeaMap.put("$GPGGA", str);
            CarLocationManager.this.nmeaMap.put("$GPRMC", str2);
        }
    };
    private LocationListener mLocationListener = new LocationListener() { // from class: com.yftech.transfer.phonelink.manager.CarLocationManager.2
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            if (location != null) {
                CarLocationManager.this.mLocation = location;
                Iterator it = CarLocationManager.observors.iterator();
                while (it.hasNext()) {
                    ((CarLocationObservor) it.next()).onLocationChanged(location);
                }
                return;
            }
            LogUtil.e("GPS location == null");
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            switch (i) {
                case 0:
                    LogUtil.i("当前GPS状态为服务区外状态");
                    return;
                case 1:
                    LogUtil.i("当前GPS状态为暂停服务状态");
                    return;
                case 2:
                    LogUtil.i("当前GPS状态为可见状态");
                    return;
                default:
                    return;
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            if (ActivityCompat.checkSelfPermission(CarLocationManager.this.mContext, "android.permission.ACCESS_FINE_LOCATION") != 0 && ActivityCompat.checkSelfPermission(CarLocationManager.this.mContext, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
                LogUtil.i("onProviderEnabled permit forbit");
                return;
            }
            CarLocationManager.this.mLocation = CarLocationManager.this.mLocationManager.getLastKnownLocation(str);
            LogUtil.i("onProviderEnabled:" + CarLocationManager.this.mLocation);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            LogUtil.i("onProviderDisabled:" + str);
            CarLocationManager.this.mLocation = null;
        }
    };
    private GpsStatus.NmeaListener nmeaListener = new GpsStatus.NmeaListener() { // from class: com.yftech.transfer.phonelink.manager.CarLocationManager.3
        @Override // android.location.GpsStatus.NmeaListener
        public void onNmeaReceived(long j, String str) {
            if (str == null || str.isEmpty()) {
                return;
            }
            String[] split = str.split(",");
            if (split.length == 0) {
                return;
            }
            String str2 = split[0];
            try {
                if ("$GNRMC".equals(str2) || "$GPRMC".equals(str2)) {
                    CarLocationManager.this.mEffectStatus = split[2];
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private GpsStatus.Listener mStatusListener = new GpsStatus.Listener() { // from class: com.yftech.transfer.phonelink.manager.CarLocationManager.4
        @Override // android.location.GpsStatus.Listener
        public void onGpsStatusChanged(int i) {
            Iterator it = CarLocationManager.observors.iterator();
            while (it.hasNext()) {
                ((CarLocationObservor) it.next()).onGpsStatusChanged(i);
            }
        }
    };

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarLocationObservor {
        public void onGpsStatusChanged(int i) {
        }

        public void onLocationChanged(Location location) {
        }
    }

    private CarLocationManager() {
    }

    public static void registerObservor(CarLocationObservor carLocationObservor) {
        observors.add(carLocationObservor);
    }

    public static void unregisterObservor(CarLocationObservor carLocationObservor) {
        observors.remove(carLocationObservor);
    }

    public static boolean isregisterObservor(CarLocationObservor carLocationObservor) {
        return observors.contains(carLocationObservor);
    }

    public String getEffectStatus() {
        return this.mEffectStatus;
    }

    public void refreshGpsInfo() {
        String string = SettingsUtil.getString(CarPlayLinkHelper.KEY_NMEA_GPGGA);
        String string2 = SettingsUtil.getString(CarPlayLinkHelper.KEY_NMEA_GPRMC);
        if (string != null && !string.isEmpty()) {
            this.nmeaMap.put("$GPGGA", string);
        }
        if (string2 == null || string2.isEmpty()) {
            return;
        }
        this.nmeaMap.put("$GPRMC", string2);
    }

    public static boolean isInit() {
        return isInit;
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void init() {
        GpsManager.getInstance().init();
        GpsManager.registerObservor(this.gpsObservor);
        this.mContext = CarTransferApplication.context;
        int checkSelfPermission = ActivityCompat.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION");
        int checkSelfPermission2 = ActivityCompat.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION");
        if (checkSelfPermission != 0 || checkSelfPermission2 != 0) {
            LogUtil.i("gps-Permission_Not_Granted");
            return;
        }
        this.mLocationManager = (LocationManager) this.mContext.getSystemService("location");
        this.mLocationManager.requestLocationUpdates("gps", 1000L, 5.0f, this.mLocationListener);
        this.mLocationManager.addGpsStatusListener(this.mStatusListener);
        boolean isNmeaPropFalse = SettingsUtil.isNmeaPropFalse();
        LogUtil.i("init isNmeaPropFalse:" + isNmeaPropFalse);
        if (!isNmeaPropFalse) {
            this.mLocationManager.addNmeaListener(this.nmeaListener);
        }
        isInit = true;
    }

    public GpsStatus getGpsStatus() {
        GpsStatus gpsStatus = this.mLocationManager.getGpsStatus(null);
        LogUtil.i("getGpsStatus gpsStatus:" + gpsStatus);
        return gpsStatus;
    }

    public Location getLastKnownLocation() {
        Location lastKnownLocation = this.mLocationManager.getLastKnownLocation("gps");
        LogUtil.i("getLastKnownLocation location:" + lastKnownLocation);
        return lastKnownLocation;
    }

    public String getGps2CarLife() {
        this.mLocation = this.mLocationManager.getLastKnownLocation("gps");
        if (this.mLocation == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("0|");
        sb.append(((int) (this.mLocation.getLatitude() * 1000000.0d)) + "|");
        sb.append(((int) (this.mLocation.getLatitude() * 1000000.0d)) + "|");
        sb.append(((int) (this.mLocation.getAltitude() * 10.0d)) + "|");
        sb.append(((int) (this.mLocation.getSpeed() * 100.0f)) + "|");
        sb.append(((int) (this.mLocation.getBearing() * 10.0f)) + "|");
        sb.append(((int) (this.mLocation.getAccuracy() * 10.0f)) + "|");
        sb.append("0|");
        sb.append("0|");
        return sb.toString();
    }

    public String getNmeaValue(String str) {
        String str2;
        return (str == null || str.isEmpty() || (str2 = this.nmeaMap.get(str)) == null) ? "" : str2;
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void uninit() {
        GpsManager.unregisterObservor(this.gpsObservor);
        this.mLocationManager.removeUpdates(this.mLocationListener);
        this.mLocationManager.removeGpsStatusListener(this.mStatusListener);
        boolean isNmeaPropFalse = SettingsUtil.isNmeaPropFalse();
        LogUtil.i("uninit isNmeaPropFalse:" + isNmeaPropFalse);
        if (isNmeaPropFalse) {
            return;
        }
        this.mLocationManager.removeNmeaListener(this.nmeaListener);
    }
}
