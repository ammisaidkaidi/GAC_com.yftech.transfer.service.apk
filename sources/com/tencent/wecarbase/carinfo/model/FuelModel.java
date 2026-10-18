package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class FuelModel implements Serializable {
    public static final int STATE_WARNING_LOW = 2;
    public static final int STATE_WARNING_NONE = 0;
    public static final int STATE_WARNING_NORMAL = 1;
    private static final long serialVersionUID = 5947455350348581560L;
    private float mAverageFuelConsumption;
    private float mInstantaneousFuelConsumption;
    private int remainFuel;
    private int totalFuel;
    private int whichChanged;
    private String desc = "油量信息";
    private int fuelLevel = -1;
    private int mState = 0;

    public void setState(int i) {
        this.mState = i;
    }

    public int getState() {
        return this.mState;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public int getFuelLevel() {
        return this.fuelLevel;
    }

    public void setFuelLevel(int i) {
        this.fuelLevel = i;
    }

    public int getRemainFuel() {
        return this.remainFuel;
    }

    public void setRemainFuel(int i) {
        this.remainFuel = i;
    }

    public int getTotalFuel() {
        return this.totalFuel;
    }

    public void setTotalFuel(int i) {
        this.totalFuel = i;
    }

    public float getAverageFuelConsumption() {
        return this.mAverageFuelConsumption;
    }

    public void setAverageFuelConsumption(float f) {
        this.mAverageFuelConsumption = f;
    }

    public float getInstantaneousFuelConsumption() {
        return this.mInstantaneousFuelConsumption;
    }

    public void setInstantaneousFuelConsumption(float f) {
        this.mInstantaneousFuelConsumption = f;
    }

    public String toString() {
        return "FuelModel{desc='" + this.desc + "', fuelLevel=" + this.fuelLevel + ", remainFuel=" + this.remainFuel + ", totalFuel=" + this.totalFuel + '}';
    }
}
