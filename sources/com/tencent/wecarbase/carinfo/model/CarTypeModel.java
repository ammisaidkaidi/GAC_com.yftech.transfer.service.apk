package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarTypeModel implements Serializable {
    public static final int TYPE_ELECTRIC_CAR = 2;
    public static final int TYPE_FUEL_CAR = 1;
    public static final int TYPE_MIX_CAR = 3;
    private static final long serialVersionUID = -6379177242223070341L;
    private int carType;

    public int getCarType() {
        return this.carType;
    }

    public void setCarType(int i) {
        this.carType = i;
    }
}
