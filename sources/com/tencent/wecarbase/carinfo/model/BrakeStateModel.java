package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class BrakeStateModel implements Serializable {
    public static final int BRAKE_STATE_DOWN = 1;
    public static final int BRAKE_STATE_NONE = -1;
    public static final int BRAKE_STATE_UP = 0;
    private static final long serialVersionUID = -2864415525183410870L;
    private int mBrakeState = -1;

    public int getBrakeState() {
        return this.mBrakeState;
    }

    public void setBrakeState(int i) {
        this.mBrakeState = i;
    }
}
