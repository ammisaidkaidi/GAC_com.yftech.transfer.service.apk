package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class SeatBeltModel implements Serializable {
    public static final int SEAT_BELT_STATE_NONE = -1;
    public static final int SEAT_BELT_STATE_OFF = 0;
    public static final int SEAT_BELT_STATE_ON = 1;
    private static final long serialVersionUID = 324387521053544029L;
    private int mSeatBelt = -1;

    public int getSeatBelt() {
        return this.mSeatBelt;
    }

    public void setSeatBelt(int i) {
        this.mSeatBelt = i;
    }
}
