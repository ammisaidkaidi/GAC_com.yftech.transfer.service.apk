package com.tencent.taes.remote.impl.location;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.remote.api.location.ILocationApi;
import com.tencent.taes.remote.api.location.ILocationService;
import com.tencent.taes.remote.api.location.bean.LatLng;
import com.tencent.taes.remote.api.location.bean.LocationBean;
import com.tencent.taes.remote.api.location.bean.LocationDistrict;
import com.tencent.taes.remote.api.location.listener.GeoDistrictChangedListener;
import com.tencent.taes.remote.api.location.listener.GeoLocationListener;
import com.tencent.taes.remote.api.location.listener.GeoLocationSatellitesListener;
import com.tencent.taes.remote.api.location.listener.IDistrictChangedListener;
import com.tencent.taes.remote.api.location.listener.ILocationListener;
import com.tencent.taes.remote.api.location.listener.ILocationSatellitesListener;
import com.tencent.taes.remote.impl.BaseRemoteApi;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class LocationRemoteApi extends BaseRemoteApi implements ILocationApi {
    private static final String TAG = "LocationRemoteApi";
    private IDistrictChangedListener districtChangedListener;
    private ILocationListener locationListener;
    private CopyOnWriteArrayList<GeoDistrictChangedListener> mDistrictChangedListenerList;
    private CopyOnWriteArrayList<GeoLocationListener> mLocationListenerList;
    private ILocationService mLocationService;
    private CopyOnWriteArrayList<GeoLocationSatellitesListener> mSatellitesChangedListenerList;
    private ILocationSatellitesListener satellitesListener;

    private LocationRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mLocationListenerList = new CopyOnWriteArrayList<>();
        this.mDistrictChangedListenerList = new CopyOnWriteArrayList<>();
        this.mSatellitesChangedListenerList = new CopyOnWriteArrayList<>();
        this.locationListener = new ILocationListener.Stub() { // from class: com.tencent.taes.remote.impl.location.LocationRemoteApi.1
            @Override // com.tencent.taes.remote.api.location.listener.ILocationListener
            public void onLocationChange(LocationBean locationBean) throws RemoteException {
                if (locationBean == null) {
                    return;
                }
                int i = 0;
                while (i < LocationRemoteApi.this.mLocationListenerList.size()) {
                    try {
                        GeoLocationListener geoLocationListener = (GeoLocationListener) LocationRemoteApi.this.mLocationListenerList.get(i);
                        if (geoLocationListener != null) {
                            geoLocationListener.onLocationChange(locationBean);
                        }
                        i++;
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }

            @Override // com.tencent.taes.remote.api.location.listener.ILocationListener
            public void onGpsStatusChange(boolean z, boolean z2) throws RemoteException {
                Iterator it = LocationRemoteApi.this.mLocationListenerList.iterator();
                while (it.hasNext()) {
                    GeoLocationListener geoLocationListener = (GeoLocationListener) it.next();
                    if (geoLocationListener != null) {
                        geoLocationListener.onGpsStatusChange(z, z2);
                    }
                }
            }
        };
        this.districtChangedListener = new IDistrictChangedListener.Stub() { // from class: com.tencent.taes.remote.impl.location.LocationRemoteApi.2
            @Override // com.tencent.taes.remote.api.location.listener.IDistrictChangedListener
            public void onDistrictChanged(LocationDistrict locationDistrict) throws RemoteException {
                if (locationDistrict == null) {
                    return;
                }
                int i = 0;
                while (i < LocationRemoteApi.this.mDistrictChangedListenerList.size()) {
                    try {
                        ((GeoDistrictChangedListener) LocationRemoteApi.this.mDistrictChangedListenerList.get(i)).onDistrictChanged(locationDistrict);
                        i++;
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        };
        this.satellitesListener = new ILocationSatellitesListener.Stub() { // from class: com.tencent.taes.remote.impl.location.LocationRemoteApi.3
            @Override // com.tencent.taes.remote.api.location.listener.ILocationSatellitesListener
            public void onSatellitesChanged(int i) throws RemoteException {
                int i2 = 0;
                while (i2 < LocationRemoteApi.this.mSatellitesChangedListenerList.size()) {
                    try {
                        ((GeoLocationSatellitesListener) LocationRemoteApi.this.mSatellitesChangedListenerList.get(i2)).onSatellitesChanged(i);
                        i2++;
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        };
        this.mLocationService = ILocationService.Stub.asInterface(iBinder);
        registerService();
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("Location", ILocationService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        this.mLocationService = ILocationService.Stub.asInterface(iBinder);
        unregisterService();
        registerService();
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    private void registerService() {
        try {
            if (this.mLocationService != null) {
                this.mLocationService.registerLocationInfoListener(this.locationListener);
            }
        } catch (RemoteException e) {
            Log.e(TAG, "registerRemoteLocationInfoListener exception caught", e);
            e.printStackTrace();
        }
        try {
            if (this.mLocationService != null) {
                this.mLocationService.registerDistrictChangedListener(this.districtChangedListener);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "registerRemoteDistrictInfoListener exception caught", e2);
            e2.printStackTrace();
        }
        try {
            if (this.mLocationService != null) {
                this.mLocationService.registerSatellitesChangedListener(this.satellitesListener);
            }
        } catch (RemoteException e3) {
            Log.e(TAG, "registerRemoteSatellitesChangedInfoListener exception caught", e3);
            e3.printStackTrace();
        }
    }

    private void unregisterService() {
        try {
            if (this.mLocationService != null) {
                this.mLocationService.unregisterLocationInfoListener(this.locationListener);
            }
        } catch (RemoteException e) {
            Log.e(TAG, "unregisterRemoteLocationInfoListener exception caught", e);
            e.printStackTrace();
        }
        try {
            if (this.mLocationService != null) {
                this.mLocationService.unregisterDistrictChangedListener(this.districtChangedListener);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "unregisterRemoteDistrictInfoListener exception caught", e2);
            e2.printStackTrace();
        }
        try {
            if (this.mLocationService != null) {
                this.mLocationService.unregisterSatellitesChangedListener(this.satellitesListener);
            }
        } catch (RemoteException e3) {
            Log.e(TAG, "unregisterRemoteSatellitesChangedInfoListener exception caught", e3);
            e3.printStackTrace();
        }
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void registerLocationInfoListener(GeoLocationListener geoLocationListener) {
        if (this.mLocationService == null || geoLocationListener == null || this.mLocationListenerList.contains(geoLocationListener)) {
            return;
        }
        this.mLocationListenerList.add(geoLocationListener);
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void unregisterLocationInfoListener(GeoLocationListener geoLocationListener) {
        if (geoLocationListener == null) {
            return;
        }
        this.mLocationListenerList.remove(geoLocationListener);
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void registerDistrictChangedListener(GeoDistrictChangedListener geoDistrictChangedListener) {
        if (this.mLocationService == null || geoDistrictChangedListener == null || this.mDistrictChangedListenerList.contains(geoDistrictChangedListener)) {
            return;
        }
        this.mDistrictChangedListenerList.add(geoDistrictChangedListener);
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void unregisterDistrictChangedListener(GeoDistrictChangedListener geoDistrictChangedListener) {
        if (geoDistrictChangedListener == null) {
            return;
        }
        this.mDistrictChangedListenerList.remove(geoDistrictChangedListener);
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void registerSatellitesChangedListener(GeoLocationSatellitesListener geoLocationSatellitesListener) {
        if (this.mLocationService == null || geoLocationSatellitesListener == null || this.mSatellitesChangedListenerList.contains(geoLocationSatellitesListener)) {
            return;
        }
        this.mSatellitesChangedListenerList.add(geoLocationSatellitesListener);
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void unregisterSatellitesChangedListener(GeoLocationSatellitesListener geoLocationSatellitesListener) {
        if (geoLocationSatellitesListener == null) {
            return;
        }
        this.mSatellitesChangedListenerList.remove(geoLocationSatellitesListener);
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void startLocation(int i) {
        if (this.mLocationService != null) {
            try {
                this.mLocationService.startLocation(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public boolean isGpsAvailable() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.isGpsAvailable();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public int getSatellitesNum() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.getSatellitesNum();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public LocationDistrict getLastValidDistrict() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.getLastValidDistrict();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public LocationBean getCurLocation() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.getCurLocation();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public LatLng getLastValidLocation() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.getLastValidLocation();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public long getGpsTime() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.getGpsTime();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return 0L;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public int getGpsSignalLevel() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.getGpsSignalLevel();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return 5;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void setIsUseCarSpeed(boolean z) {
        if (this.mLocationService != null) {
            try {
                this.mLocationService.setIsUseCarSpeed(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public boolean hasSensor() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.hasSensor();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public boolean isSupportIns() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.isSupportIns();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public String getLocationSDKVersion() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.getLocationSDKVersion();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public boolean hasWecarId() {
        if (this.mLocationService == null) {
            return false;
        }
        try {
            return this.mLocationService.hasWecarId();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void restartWithWeCarId(String str) {
        if (this.mLocationService != null) {
            try {
                this.mLocationService.restartWithWeCarId(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void startSimulateLocation(String str) {
        if (this.mLocationService != null) {
            try {
                this.mLocationService.startSimulateLocation(str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public void stopSimulateLocation() {
        if (this.mLocationService != null) {
            try {
                this.mLocationService.stopSimulateLocation();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.location.ILocationApi
    public boolean isSimulateLocation() {
        if (this.mLocationService != null) {
            try {
                return this.mLocationService.isSimulateLocation();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
