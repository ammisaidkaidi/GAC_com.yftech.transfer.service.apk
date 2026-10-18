package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class MileageModel implements Serializable {
    private static final long serialVersionUID = 1916006142092153532L;
    private String desc = "里程信息";
    private int enduranceMileage;
    private int totalMileage;

    public int getTotalMileage() {
        return this.totalMileage;
    }

    public void setTotalMileage(int i) {
        this.totalMileage = i;
    }

    public int getEnduranceMileage() {
        return this.enduranceMileage;
    }

    public void setEnduranceMileage(int i) {
        this.enduranceMileage = i;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public String toString() {
        return "MileageModel{desc='" + this.desc + "', totalMileage=" + this.totalMileage + ", enduranceMileage=" + this.enduranceMileage + '}';
    }
}
