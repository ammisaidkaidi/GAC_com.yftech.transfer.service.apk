package com.tencent.tai.pal.vehiclebasicinfo;

import com.tencent.tai.pal.INoProguardClass;
import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class VehicleBasicInfoAdapter extends BaseAdapter implements IVehicleBasicInfo {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnVehicleBasicInfoListener extends INoProguardInterface {
        void onDayNightModeChanged(int i);

        void onGearChanged(int i);

        void onPowerEventChange(int i);

        void onSeatBeltBuckledChanged(int i, boolean z);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnVehicleSpeedListener extends INoProguardInterface {
        void onSpeedChanged(SpeedInfo speedInfo);
    }

    public abstract String getChannel();

    public abstract int getDayNightMode();

    public abstract String getDeviceId();

    public abstract int getGear();

    public String getPermanentPartitionPath() {
        return null;
    }

    public abstract boolean getSeatBeltBuckled(int i);

    public abstract SpeedInfo getSpeed();

    public abstract String getVehicleId();

    public abstract String getVehicleModel();

    public abstract void registerOnVehicleBasicInfoListener(OnVehicleBasicInfoListener onVehicleBasicInfoListener);

    public abstract void registerOnVehicleSpeedListener(OnVehicleSpeedListener onVehicleSpeedListener);

    public abstract void unregisterOnVehicleBasicInfoListener(OnVehicleBasicInfoListener onVehicleBasicInfoListener);

    public abstract void unregisterOnVehicleSpeedListener(OnVehicleSpeedListener onVehicleSpeedListener);

    public final String toGearString(int i) {
        if (i == 1) {
            return "GEAR_NEUTRAL";
        }
        if (i == 2) {
            return "GEAR_REVERSE";
        }
        if (i == 4) {
            return "GEAR_PARK";
        }
        if (i == 8) {
            return "GEAR_DRIVE";
        }
        if (i == 16) {
            return "GEAR_1";
        }
        if (i == 32) {
            return "GEAR_2";
        }
        if (i == 64) {
            return "GEAR_3";
        }
        if (i == 128) {
            return "GEAR_4";
        }
        if (i == 256) {
            return "GEAR_5";
        }
        if (i == 512) {
            return "GEAR_6";
        }
        if (i == 1024) {
            return "GEAR_7";
        }
        if (i == 2048) {
            return "GEAR_8";
        }
        if (i == 4096) {
            return "GEAR_9";
        }
        if (i == 0) {
            return IVehicleBasicInfo.GEAR_UNKNOWN_STRING;
        }
        return "0x" + Integer.toHexString(i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SpeedInfo implements INoProguardClass {

        /* renamed from: a, reason: collision with root package name */
        private float f156a;
        private SDKConstants.SpeedUnit b;

        public SpeedInfo(float f, SDKConstants.SpeedUnit speedUnit) {
            this.f156a = f;
            this.b = speedUnit;
        }

        public float getSpeedInMetersPerSecond() {
            if (SDKConstants.SpeedUnit.METERS_PER_SECOND.equals(this.b)) {
                return this.f156a;
            }
            return (float) (this.f156a / 3.6d);
        }

        public String toString() {
            return "SpeedInfo{mSpeed=" + this.f156a + ", mUnit=" + this.b + '}';
        }
    }
}
