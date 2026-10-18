package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class LampModel implements Serializable {
    private static final long serialVersionUID = -679813276450540440L;
    private int backLamp;
    private int dayLamp;
    private int emergencyLamp;
    private int farLamp;
    private int forkLamp;
    private int leftLamp;
    private int nearLamp;
    private int rightLamp;
    private int stopLamp;
    private int widthLamp;

    public int getBackLamp() {
        return this.backLamp;
    }

    public void setBackLamp(int i) {
        this.backLamp = i;
    }

    public int getLeftLamp() {
        return this.leftLamp;
    }

    public void setLeftLamp(int i) {
        this.leftLamp = i;
    }

    public int getRightLamp() {
        return this.rightLamp;
    }

    public void setRightLamp(int i) {
        this.rightLamp = i;
    }

    public int getWidthLamp() {
        return this.widthLamp;
    }

    public void setWidthLamp(int i) {
        this.widthLamp = i;
    }

    public int getEmergencyLamp() {
        return this.emergencyLamp;
    }

    public void setEmergencyLamp(int i) {
        this.emergencyLamp = i;
    }

    public int getForkLamp() {
        return this.forkLamp;
    }

    public void setForkLamp(int i) {
        this.forkLamp = i;
    }

    public int getFarLamp() {
        return this.farLamp;
    }

    public void setFarLamp(int i) {
        this.farLamp = i;
    }

    public int getNearLamp() {
        return this.nearLamp;
    }

    public void setNearLamp(int i) {
        this.nearLamp = i;
    }

    public int getDayLamp() {
        return this.dayLamp;
    }

    public void setDayLamp(int i) {
        this.dayLamp = i;
    }

    public int getStopLamp() {
        return this.stopLamp;
    }

    public void setStopLamp(int i) {
        this.stopLamp = i;
    }
}
