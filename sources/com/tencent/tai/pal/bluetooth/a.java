package com.tencent.tai.pal.bluetooth;

import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.bluetooth.BluetoothAdapter;
import com.tencent.tai.pal.bluetooth.b;
import com.tencent.tai.pal.service.BaseAdapter;

/* compiled from: BluetoothService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends b.a implements com.tencent.tai.pal.service.a {
    private BluetoothAdapter b;

    /* renamed from: a, reason: collision with root package name */
    private boolean f58a = false;
    private final RemoteCallbackList<c> c = new RemoteCallbackList<>();
    private BluetoothAdapter.OnDeviceConnectionStateChangeListener d = new BluetoothAdapter.OnDeviceConnectionStateChangeListener() { // from class: com.tencent.tai.pal.bluetooth.a.1
        @Override // com.tencent.tai.pal.bluetooth.BluetoothAdapter.OnDeviceConnectionStateChangeListener
        public void onDeviceConnectionStateChange(int i, String str, String str2) {
            a.this.a(i, str, str2);
        }
    };

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    @Override // com.tencent.tai.pal.bluetooth.b
    public void a(c cVar) throws RemoteException {
        synchronized (this.c) {
            this.c.register(cVar);
            if (this.c.getRegisteredCallbackCount() > 0 && !this.f58a && this.b != null) {
                this.b.registerOnDeviceConnectionStateChange(this.d);
                this.f58a = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.bluetooth.b
    public void b(c cVar) throws RemoteException {
        synchronized (this.c) {
            this.c.unregister(cVar);
            if (this.c.getRegisteredCallbackCount() == 0 && this.f58a && this.b != null) {
                this.b.unregisterOnDeviceConnectionStateChange(this.d);
                this.f58a = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str, String str2) {
        Log.i("PAL_BluetoothService", "BluetoothService:notifyDeviceConnectionStateChange connectionState:" + i + ",deviceName:" + str + "deviceMac:" + str2);
        synchronized (this.c) {
            int beginBroadcast = this.c.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.c.getBroadcastItem(i2).a(i, str, str2);
                } catch (Exception e) {
                    Log.e("PAL_BluetoothService", "notify client failed", e);
                }
            }
            this.c.finishBroadcast();
        }
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter instanceof BluetoothAdapter) {
            this.b = (BluetoothAdapter) baseAdapter;
            synchronized (this.c) {
                if (this.c.getRegisteredCallbackCount() > 0) {
                    this.f58a = true;
                    this.b.registerOnDeviceConnectionStateChange(this.d);
                } else {
                    this.f58a = false;
                }
            }
        }
    }

    @Override // com.tencent.tai.pal.bluetooth.b
    public int a(boolean z) throws RemoteException {
        if (this.b == null) {
            return -1;
        }
        int enableBluetooth = this.b.enableBluetooth(z);
        Log.i("PAL_BluetoothService", "BluetoothService:enableBluetooth adapter result=" + enableBluetooth);
        return enableBluetooth;
    }

    @Override // com.tencent.tai.pal.bluetooth.b
    public int a() throws RemoteException {
        if (this.b == null) {
            return 0;
        }
        int connectionState = this.b.getConnectionState();
        Log.i("PAL_BluetoothService", "BluetoothService:getConnectionState adapter result=" + connectionState);
        return connectionState;
    }

    @Override // com.tencent.tai.pal.bluetooth.b
    public String b() throws RemoteException {
        if (this.b == null) {
            return null;
        }
        String deviceName = this.b.getDeviceName();
        Log.i("PAL_BluetoothService", "BluetoothService:getDeviceName adapter result=" + deviceName);
        return deviceName;
    }

    @Override // com.tencent.tai.pal.bluetooth.b
    public String d() throws RemoteException {
        if (this.b == null) {
            return null;
        }
        String deviceMac = this.b.getDeviceMac();
        Log.i("PAL_BluetoothService", "BluetoothService:getDeviceMac adapter result=" + deviceMac);
        return deviceMac;
    }
}
