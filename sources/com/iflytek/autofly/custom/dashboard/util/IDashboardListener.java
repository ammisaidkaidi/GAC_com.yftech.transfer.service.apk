package com.iflytek.autofly.custom.dashboard.util;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IDashboardListener {
    boolean onCheckDashboardValid();

    String onGetDashboradStatus(String str);

    void onSendData(int i, int i2, int i3, byte[] bArr);

    void onSendDataString(int i, int i2, int i3, String str);

    void onServiceStatusChanged(int i);
}
