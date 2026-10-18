package com.tencent.tai.pal.bluetooth;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BluetoothAdapter extends BaseAdapter implements IBluetooth {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDeviceConnectionStateChangeListener extends INoProguardInterface {
        void onDeviceConnectionStateChange(int i, String str, String str2);
    }

    public abstract int enableBluetooth(boolean z);

    public abstract int getConnectionState();

    public abstract String getDeviceMac();

    public abstract String getDeviceName();

    public abstract void registerOnDeviceConnectionStateChange(OnDeviceConnectionStateChangeListener onDeviceConnectionStateChangeListener);

    public abstract void unregisterOnDeviceConnectionStateChange(OnDeviceConnectionStateChangeListener onDeviceConnectionStateChangeListener);
}
