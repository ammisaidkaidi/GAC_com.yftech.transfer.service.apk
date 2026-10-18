package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class OutsideTemperatureModel implements Serializable {
    public static final int TEMP_UNIT_CELSIUS = 0;
    public static final int TEMP_UNIT_FAHRENHEIT = 1;
    private static final long serialVersionUID = 279675670955768953L;
    private float mOutsideTemperature = -1.0f;
    private int mTemperatureUnitType = 0;

    public float getOutsideTemperature() {
        return this.mOutsideTemperature;
    }

    public void setOutsideTemperature(float f) {
        this.mOutsideTemperature = f;
    }

    public int getTemperatureUnitType() {
        return this.mTemperatureUnitType;
    }

    public void setTemperatureUnitType(int i) {
        this.mTemperatureUnitType = i;
    }
}
