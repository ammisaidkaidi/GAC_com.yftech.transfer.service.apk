package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class AirConditionModel implements Serializable {
    public static final int CYCLE_MODEL_INSIDE = 1;
    public static final int CYCLE_MODEL_INSIDE_AUTO = 3;
    public static final int CYCLE_MODEL_NONE = 0;
    public static final int CYCLE_MODEL_OUTSIDE = 2;
    public static final int TEMPERATURE_HIGH = 240;
    public static final int TEMPERATURE_LOW = 1;
    public static final int TEMP_UNIT_CELSIUS = 0;
    public static final int TEMP_UNIT_FAHRENHEIT = 1;
    public static final int WIND_DIRECTION_ALL = 7;
    public static final int WIND_DIRECTION_FACE = 1;
    public static final int WIND_DIRECTION_FACE_AND_LEG = 2;
    public static final int WIND_DIRECTION_FRONT_GLASS = 5;
    public static final int WIND_DIRECTION_FRONT_GLASS_AND_FACE = 6;
    public static final int WIND_DIRECTION_FRONT_GLASS_AND_LEG = 4;
    public static final int WIND_DIRECTION_LEG = 3;
    public static final int WIND_DIRECTION_NONE = 0;
    private static final long serialVersionUID = -3876503504659327858L;
    private float mLeftTemp = -1.0f;
    private float mRightTemp = -1.0f;
    private int mTemperatureUnitType = 0;
    private int mWindDirection = 0;
    private int mWindLevel = 0;
    private int mAC = 0;
    private int mAuto = 1;
    private int mCycleModel = 0;
    private int mDualZone = 1;
    private int mFrontDefog = 1;
    private int mBackDefog = 1;

    public float getLeftTemp() {
        return this.mLeftTemp;
    }

    public void setLeftTemp(float f) {
        this.mLeftTemp = f;
    }

    public float getRightTemp() {
        return this.mRightTemp;
    }

    public void setRightTemp(float f) {
        this.mRightTemp = f;
    }

    public int getTemperatureUnitType() {
        return this.mTemperatureUnitType;
    }

    public void setTemperatureUnitType(int i) {
        this.mTemperatureUnitType = i;
    }

    public int getAC() {
        return this.mAC;
    }

    public void setAC(int i) {
        this.mAC = i;
    }

    public int getWindLevel() {
        return this.mWindLevel;
    }

    public void setWindLevel(int i) {
        this.mWindLevel = i;
    }

    public int getWindDirection() {
        return this.mWindDirection;
    }

    public void setWindDirection(int i) {
        this.mWindDirection = i;
    }

    public int getAuto() {
        return this.mAuto;
    }

    public void setAuto(int i) {
        this.mAuto = i;
    }

    public int getBackDefog() {
        return this.mBackDefog;
    }

    public void setBackDefog(int i) {
        this.mBackDefog = i;
    }

    public int getFrontDefog() {
        return this.mFrontDefog;
    }

    public void setFrontDefog(int i) {
        this.mFrontDefog = i;
    }

    public int getDualZone() {
        return this.mDualZone;
    }

    public void setDualZone(int i) {
        this.mDualZone = i;
    }

    public int getCycleModel() {
        return this.mCycleModel;
    }

    public void setCycleModel(int i) {
        this.mCycleModel = i;
    }
}
