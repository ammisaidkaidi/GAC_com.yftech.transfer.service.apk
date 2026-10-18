package com.tencent.wecarbase.carinfo.model;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class AccModel implements Serializable {
    private static final int ACC_STATE_NONE = -1;
    public static final int ACC_STATE_OFF = 0;
    public static final int ACC_STATE_ON = 1;
    public static final int ACC_STATE_SCREEN_ON = 3;
    public static final int ACC_STATE_TRUE_OFF = 2;
    private static final long serialVersionUID = 1772912005940365402L;
    private int mState = -1;

    public int getState() {
        return this.mState;
    }

    public void setState(int i) {
        this.mState = i;
    }
}
