package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class LeanWaterModel implements Serializable {
    public static final int LEAN_WATER_STATE_LOW = 0;
    public static final int LEAN_WATER_STATE_NONE = -1;
    public static final int LEAN_WATER_STATE_NORMAL = 1;
    private static final long serialVersionUID = 5955880089391706897L;
    private int mLeanWaterState = -1;

    public int getLeanWaterState() {
        return this.mLeanWaterState;
    }

    public void setLeanWaterState(int i) {
        this.mLeanWaterState = i;
    }
}
