package com.tencent.tai.pal.power;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.tencent.tai.pal.INoProguardClass;

/* loaded from: /home/user/work/dex/classes.dex */
public class PowerInfo implements INoProguardClass {

    @SerializedName("mAirConditionerOn")
    private boolean mAirConditionerOn;

    @SerializedName("mCurrentDrivingRangeInMeter")
    private int mCurrentDrivingRangeInMeter;

    @SerializedName("mDrivingMode")
    private int mDrivingMode;

    @SerializedName("mDrivingRangePerPercentInMeter")
    private int mDrivingRangePerPercentInMeter;

    @SerializedName("mIsCharging")
    private boolean mIsCharging;

    @SerializedName("mPercentageOfPowerRemaining")
    private int mPercentageOfPowerRemaining;

    @SerializedName("mPowerLevel")
    private int mPowerLevel;

    @SerializedName("mTotalDrivingRangeInMeter")
    private int mTotalDrivingRangeInMeter;

    public PowerInfo(int i, int i2, boolean z, int i3, int i4, int i5, int i6, boolean z2) {
        this.mCurrentDrivingRangeInMeter = i;
        this.mPercentageOfPowerRemaining = i2;
        this.mIsCharging = z;
        this.mTotalDrivingRangeInMeter = i3;
        this.mDrivingRangePerPercentInMeter = i4;
        this.mPowerLevel = i5;
        this.mDrivingMode = i6;
        this.mAirConditionerOn = z2;
    }

    public int getCurrentDrivingRange() {
        return this.mCurrentDrivingRangeInMeter;
    }

    public int getPercentageOfPowerRemaining() {
        return this.mPercentageOfPowerRemaining;
    }

    public boolean isCharging() {
        return this.mIsCharging;
    }

    public int getTotalDrivingRange() {
        return this.mTotalDrivingRangeInMeter;
    }

    public int getDrivingRangePerPercent() {
        return this.mDrivingRangePerPercentInMeter;
    }

    public int getPowerLevel() {
        return this.mPowerLevel;
    }

    public int getDrivingMode() {
        return this.mDrivingMode;
    }

    public boolean isAirConditionerOn() {
        return this.mAirConditionerOn;
    }

    public static String toJson(PowerInfo powerInfo) {
        return new Gson().toJson(powerInfo);
    }

    public static PowerInfo fromJson(String str) {
        return (PowerInfo) new Gson().fromJson(str, PowerInfo.class);
    }
}
