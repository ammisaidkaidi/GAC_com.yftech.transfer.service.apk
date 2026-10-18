package com.iflytek.autofly.custom.bluetooth.util;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IBluetoothMusicListener {
    int onCloseA2dpStream();

    int onConnectA2DP();

    int onDisconnectA2DP();

    int onGetA2DPConnectionState();

    void onGetFlyMediaInfoList();

    int onGetMusicStatus();

    int onNextMusic();

    int onOpenA2dpStream();

    int onPause();

    int onPlay();

    int onPreviousMusic();

    void onServiceStatusChanged(int i);

    int onStopMusic();
}
