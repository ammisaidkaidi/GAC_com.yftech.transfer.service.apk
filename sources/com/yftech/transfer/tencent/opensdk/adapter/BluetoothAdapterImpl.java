package com.yftech.transfer.tencent.opensdk.adapter;

import android.content.Context;
import com.tencent.tai.pal.bluetooth.BluetoothAdapter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothAdapterImpl extends BluetoothAdapter {
    private Context mContext;
    private List<BluetoothAdapter.OnDeviceConnectionStateChangeListener> mOnDeviceConnectionStateChangeListeners = new ArrayList();
    private Object mLockObj = new Object();

    @Override // com.tencent.tai.pal.bluetooth.BluetoothAdapter
    public int enableBluetooth(boolean z) {
        return 0;
    }

    @Override // com.tencent.tai.pal.bluetooth.BluetoothAdapter
    public int getConnectionState() {
        return 0;
    }

    @Override // com.tencent.tai.pal.bluetooth.BluetoothAdapter
    public String getDeviceMac() {
        return null;
    }

    @Override // com.tencent.tai.pal.bluetooth.BluetoothAdapter
    public String getDeviceName() {
        return null;
    }

    public BluetoothAdapterImpl(Context context) {
        this.mContext = context;
    }

    @Override // com.tencent.tai.pal.bluetooth.BluetoothAdapter
    public void registerOnDeviceConnectionStateChange(BluetoothAdapter.OnDeviceConnectionStateChangeListener onDeviceConnectionStateChangeListener) {
        if (onDeviceConnectionStateChangeListener == null || this.mOnDeviceConnectionStateChangeListeners.contains(onDeviceConnectionStateChangeListener)) {
            return;
        }
        synchronized (this.mLockObj) {
            this.mOnDeviceConnectionStateChangeListeners.add(onDeviceConnectionStateChangeListener);
        }
    }

    @Override // com.tencent.tai.pal.bluetooth.BluetoothAdapter
    public void unregisterOnDeviceConnectionStateChange(BluetoothAdapter.OnDeviceConnectionStateChangeListener onDeviceConnectionStateChangeListener) {
        if (onDeviceConnectionStateChangeListener == null || !this.mOnDeviceConnectionStateChangeListeners.contains(onDeviceConnectionStateChangeListener)) {
            return;
        }
        synchronized (this.mLockObj) {
            this.mOnDeviceConnectionStateChangeListeners.remove(onDeviceConnectionStateChangeListener);
        }
    }
}
