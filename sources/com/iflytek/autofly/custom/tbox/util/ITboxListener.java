package com.iflytek.autofly.custom.tbox.util;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ITboxListener {
    int onGetTboxSignalStrength();

    boolean onHasTboxNetWork();

    void onServiceStatusChanged(int i);
}
