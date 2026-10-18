package com.iflytek.autofly.custom.system.util;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ISystemListener {
    int onGetCarConfig(String str);

    String onGetUUID();

    String onGetVNCode();

    int onGetVehicleState(String str);

    void onServiceStatusChanged(int i);
}
