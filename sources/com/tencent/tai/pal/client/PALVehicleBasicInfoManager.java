package com.tencent.tai.pal.client;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.exception.FeatureNotSupportedException;
import com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfo;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALVehicleBasicInfoManager extends IVehicleBasicInfo {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface VehicleBasicInfoListener extends INoProguardInterface {
        void onDayNightModeChanged(int i);

        void onGearChanged(int i);

        void onPowerEventChange(int i);

        void onSeatBeltBuckledChanged(int i, boolean z);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface VehicleSpeedListener extends INoProguardInterface {
        void onSpeedChanged(float f);
    }

    String getChannel();

    int getDayNightMode();

    String getDeviceId();

    int getGear();

    String getPermanentPartitionPath() throws FeatureNotSupportedException;

    boolean getSeatBeltBuckled(int i);

    float getSpeed();

    String getVehicleId();

    String getVehicleModel();

    void registerVehicleBasicInfoListener(VehicleBasicInfoListener vehicleBasicInfoListener);

    void registerVehicleSpeedListener(VehicleSpeedListener vehicleSpeedListener) throws FeatureNotSupportedException;

    String toGearString(int i);

    void unregisterVehicleBasicInfoListener(VehicleBasicInfoListener vehicleBasicInfoListener);

    void unregisterVehicleSpeedListener(VehicleSpeedListener vehicleSpeedListener);
}
