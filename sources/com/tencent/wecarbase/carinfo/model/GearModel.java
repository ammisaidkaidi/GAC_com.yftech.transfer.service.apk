package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class GearModel implements Serializable {
    public static final int GEAR_STATE_D = 3;
    public static final int GEAR_STATE_D1 = 5;
    public static final int GEAR_STATE_D2 = 6;
    public static final int GEAR_STATE_D3 = 7;
    public static final int GEAR_STATE_D4 = 8;
    public static final int GEAR_STATE_D5 = 9;
    public static final int GEAR_STATE_D6 = 10;
    public static final int GEAR_STATE_N = 2;
    public static final int GEAR_STATE_NONE = -1;
    public static final int GEAR_STATE_P = 0;
    public static final int GEAR_STATE_R = 1;
    public static final int GEAR_STATE_S = 4;
    private static final long serialVersionUID = -7529486419455448577L;
    private int mState = -1;

    public int getState() {
        return this.mState;
    }

    public void setState(int i) {
        this.mState = i;
    }
}
