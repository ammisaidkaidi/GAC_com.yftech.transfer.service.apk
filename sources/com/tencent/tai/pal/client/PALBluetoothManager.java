package com.tencent.tai.pal.client;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.bluetooth.IBluetooth;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALBluetoothManager extends IBluetooth {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface BluetoothDeviceConnectionStateListener extends INoProguardInterface {
        void onDeviceConnectionStateChange(int i, String str, String str2);
    }

    int enableBluetooth(boolean z);

    int getConnectionState();

    String getDeviceMac();

    String getDeviceName();

    void registerBluetoothDeviceConnectionStateListener(BluetoothDeviceConnectionStateListener bluetoothDeviceConnectionStateListener);

    void unregisterBluetoothDeviceConnectionStateListener(BluetoothDeviceConnectionStateListener bluetoothDeviceConnectionStateListener);
}
