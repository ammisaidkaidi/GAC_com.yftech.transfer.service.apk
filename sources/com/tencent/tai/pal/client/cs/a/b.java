package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.bluetooth.b;
import com.tencent.tai.pal.bluetooth.c;
import com.tencent.tai.pal.client.PALBluetoothManager;
import com.tencent.tai.pal.exception.FeatureNotSupportedException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class b extends com.tencent.tai.pal.client.cs.a implements PALBluetoothManager {

    /* renamed from: a, reason: collision with root package name */
    private com.tencent.tai.pal.bluetooth.b f79a;
    private final Object b;
    private List<PALBluetoothManager.BluetoothDeviceConnectionStateListener> c;
    private c.a d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        super(context, SDKConstants.SERVICE_BLUETOOTH, null);
        this.b = new Object();
        this.c = new CopyOnWriteArrayList();
        this.d = new c.a() { // from class: com.tencent.tai.pal.client.cs.a.b.1
            @Override // com.tencent.tai.pal.bluetooth.c
            public void a(int i, String str, String str2) throws RemoteException {
                for (PALBluetoothManager.BluetoothDeviceConnectionStateListener bluetoothDeviceConnectionStateListener : b.this.c) {
                    if (bluetoothDeviceConnectionStateListener != null) {
                        bluetoothDeviceConnectionStateListener.onDeviceConnectionStateChange(i, str, str2);
                    }
                }
            }
        };
    }

    @Override // com.tencent.tai.pal.client.PALBluetoothManager
    public void registerBluetoothDeviceConnectionStateListener(PALBluetoothManager.BluetoothDeviceConnectionStateListener bluetoothDeviceConnectionStateListener) {
        if (bluetoothDeviceConnectionStateListener == null) {
            Log.i("BluetoothManagerImpl", "registerBluetoothDeviceConnectionStateListener listener is null");
            return;
        }
        if (this.c.contains(bluetoothDeviceConnectionStateListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.c.contains(bluetoothDeviceConnectionStateListener) && this.c.add(bluetoothDeviceConnectionStateListener) && this.c.size() == 1) {
                g();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALBluetoothManager
    public void unregisterBluetoothDeviceConnectionStateListener(PALBluetoothManager.BluetoothDeviceConnectionStateListener bluetoothDeviceConnectionStateListener) {
        if (bluetoothDeviceConnectionStateListener == null) {
            Log.i("BluetoothManagerImpl", "unregisterBluetoothDeviceConnectionStateListener listener is null");
            return;
        }
        if (this.c.contains(bluetoothDeviceConnectionStateListener)) {
            synchronized (this.b) {
                if (this.c.remove(bluetoothDeviceConnectionStateListener) && this.c.size() == 0) {
                    h();
                }
            }
        }
    }

    private void g() {
        com.tencent.tai.pal.bluetooth.b bVar = this.f79a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteListener bluetoothApiAidl == null");
            return;
        }
        try {
            bVar.a(this.d);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void h() {
        com.tencent.tai.pal.bluetooth.b bVar = this.f79a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteListener bluetoothApiAidl == null");
            return;
        }
        try {
            bVar.b(this.d);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    @Override // com.tencent.tai.pal.client.PALBluetoothManager
    public int enableBluetooth(boolean z) {
        com.tencent.tai.pal.bluetooth.b bVar = this.f79a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "enableBluetooth bluetoothApiAidl == null");
            return -1;
        }
        e();
        PlatformSupportInfo b = b();
        if (b != null && !b.bluetooth_enableBluetooth_supported) {
            throw new FeatureNotSupportedException("PALBluetoothManager.enableBluetooth");
        }
        try {
            return bVar.a(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALBluetoothManager
    public int getConnectionState() {
        com.tencent.tai.pal.bluetooth.b bVar = this.f79a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getConnectionState bluetoothApiAidl == null");
            return 0;
        }
        e();
        try {
            return bVar.a();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALBluetoothManager
    public String getDeviceName() {
        com.tencent.tai.pal.bluetooth.b bVar = this.f79a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getDeviceName bluetoothApiAidl == null");
            return null;
        }
        e();
        try {
            return bVar.b();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.tai.pal.client.PALBluetoothManager
    public String getDeviceMac() {
        com.tencent.tai.pal.bluetooth.b bVar = this.f79a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getDeviceMac bluetoothApiAidl == null");
            return null;
        }
        e();
        try {
            return bVar.d();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        this.f79a = b.a.a(iBinder);
        if (this.c == null || this.c.size() <= 0) {
            return;
        }
        g();
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        h();
        this.f79a = null;
    }
}
