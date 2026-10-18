package com.iflytek.autofly.custom.carproperty.util;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ICarPropertyListener {
    String onGetCarProperty(int i);

    void onServiceStatusChanged(int i);

    int onSetCarProperty(int i, String str);
}
