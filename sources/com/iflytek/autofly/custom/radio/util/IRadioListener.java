package com.iflytek.autofly.custom.radio.util;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IRadioListener {
    int onCloseDevice();

    int onGetBand();

    int onGetFrequency();

    int[] onGetRadioListInfo();

    int onGetRadioMode();

    boolean onGetScanStatus();

    int onGetSignalStrength();

    int onOpenDevice();

    int onScanNext();

    int onScanPrevious();

    int onScanRadio(String str);

    void onServiceStatusChanged(int i);

    int onSetBand(String str);

    int onSetFrequency(int i);

    int onStartPlay();

    int onStopPlay();

    int onStopScan();

    int onSwitchRadioMode(int i);
}
