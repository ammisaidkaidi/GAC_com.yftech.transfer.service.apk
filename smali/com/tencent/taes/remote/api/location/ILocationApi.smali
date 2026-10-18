.class public interface abstract Lcom/tencent/taes/remote/api/location/ILocationApi;
.super Ljava/lang/Object;
.source "ILocationApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;


# virtual methods
.method public abstract getCurLocation()Lcom/tencent/taes/remote/api/location/bean/LocationBean;
.end method

.method public abstract getGpsSignalLevel()I
.end method

.method public abstract getGpsTime()J
.end method

.method public abstract getLastValidDistrict()Lcom/tencent/taes/remote/api/location/bean/LocationDistrict;
.end method

.method public abstract getLastValidLocation()Lcom/tencent/taes/remote/api/location/bean/LatLng;
.end method

.method public abstract getLocationSDKVersion()Ljava/lang/String;
.end method

.method public abstract getSatellitesNum()I
.end method

.method public abstract hasSensor()Z
.end method

.method public abstract hasWecarId()Z
.end method

.method public abstract isGpsAvailable()Z
.end method

.method public abstract isSimulateLocation()Z
.end method

.method public abstract isSupportIns()Z
.end method

.method public abstract registerDistrictChangedListener(Lcom/tencent/taes/remote/api/location/listener/GeoDistrictChangedListener;)V
.end method

.method public abstract registerLocationInfoListener(Lcom/tencent/taes/remote/api/location/listener/GeoLocationListener;)V
.end method

.method public abstract registerSatellitesChangedListener(Lcom/tencent/taes/remote/api/location/listener/GeoLocationSatellitesListener;)V
.end method

.method public abstract restartWithWeCarId(Ljava/lang/String;)V
.end method

.method public abstract setIsUseCarSpeed(Z)V
.end method

.method public abstract startLocation(I)V
.end method

.method public abstract startSimulateLocation(Ljava/lang/String;)V
.end method

.method public abstract stopSimulateLocation()V
.end method

.method public abstract unregisterDistrictChangedListener(Lcom/tencent/taes/remote/api/location/listener/GeoDistrictChangedListener;)V
.end method

.method public abstract unregisterLocationInfoListener(Lcom/tencent/taes/remote/api/location/listener/GeoLocationListener;)V
.end method

.method public abstract unregisterSatellitesChangedListener(Lcom/tencent/taes/remote/api/location/listener/GeoLocationSatellitesListener;)V
.end method
