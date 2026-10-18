package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.VersionInfo;
import com.tencent.tai.pal.client.PALVehicleBasicInfoManager;
import com.tencent.tai.pal.exception.FeatureNotSupportedException;
import com.tencent.tai.pal.vehiclebasicinfo.IVehicleBasicInfo;
import com.tencent.tai.pal.vehiclebasicinfo.a;
import com.tencent.tai.pal.vehiclebasicinfo.b;
import com.tencent.tai.pal.vehiclebasicinfo.c;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VehicleBasicInfoManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class l extends com.tencent.tai.pal.client.cs.a implements PALVehicleBasicInfoManager {

    /* renamed from: a, reason: collision with root package name */
    private com.tencent.tai.pal.vehiclebasicinfo.b f97a;
    private final Object b;
    private List<PALVehicleBasicInfoManager.VehicleBasicInfoListener> c;
    private List<PALVehicleBasicInfoManager.VehicleSpeedListener> d;
    private a.AbstractBinderC0043a e;
    private c.a f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Context context) {
        super(context, SDKConstants.SERVICE_VEHICLE_BASIC_INFO, null);
        this.f97a = null;
        this.b = new Object();
        this.c = new CopyOnWriteArrayList();
        this.d = new CopyOnWriteArrayList();
        this.e = new a.AbstractBinderC0043a() { // from class: com.tencent.tai.pal.client.cs.a.l.1
            @Override // com.tencent.tai.pal.vehiclebasicinfo.a
            public void a(float f) throws RemoteException {
                for (PALVehicleBasicInfoManager.VehicleSpeedListener vehicleSpeedListener : l.this.d) {
                    if (vehicleSpeedListener != null) {
                        vehicleSpeedListener.onSpeedChanged(f);
                    }
                }
            }
        };
        this.f = new c.a() { // from class: com.tencent.tai.pal.client.cs.a.l.2
            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void a(int i) throws RemoteException {
                for (PALVehicleBasicInfoManager.VehicleBasicInfoListener vehicleBasicInfoListener : l.this.c) {
                    if (vehicleBasicInfoListener != null) {
                        vehicleBasicInfoListener.onGearChanged(i);
                    }
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void a(boolean z) throws RemoteException {
                for (PALVehicleBasicInfoManager.VehicleBasicInfoListener vehicleBasicInfoListener : l.this.c) {
                    if (vehicleBasicInfoListener != null) {
                        if (z) {
                            vehicleBasicInfoListener.onPowerEventChange(2);
                        } else {
                            vehicleBasicInfoListener.onPowerEventChange(3);
                        }
                    }
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void b(int i) throws RemoteException {
                for (PALVehicleBasicInfoManager.VehicleBasicInfoListener vehicleBasicInfoListener : l.this.c) {
                    if (vehicleBasicInfoListener != null) {
                        vehicleBasicInfoListener.onDayNightModeChanged(i);
                    }
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void a(int i, boolean z) throws RemoteException {
                for (PALVehicleBasicInfoManager.VehicleBasicInfoListener vehicleBasicInfoListener : l.this.c) {
                    if (vehicleBasicInfoListener != null) {
                        vehicleBasicInfoListener.onSeatBeltBuckledChanged(i, z);
                    }
                }
            }

            @Override // com.tencent.tai.pal.vehiclebasicinfo.c
            public void c(int i) throws RemoteException {
                for (PALVehicleBasicInfoManager.VehicleBasicInfoListener vehicleBasicInfoListener : l.this.c) {
                    if (vehicleBasicInfoListener != null) {
                        vehicleBasicInfoListener.onPowerEventChange(i);
                    }
                }
            }
        };
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public void registerVehicleBasicInfoListener(PALVehicleBasicInfoManager.VehicleBasicInfoListener vehicleBasicInfoListener) {
        if (vehicleBasicInfoListener == null) {
            Log.w("VehicleBasicInfoManager", "registerVehicleBasicInfoListener listener is null");
            return;
        }
        if (this.c.contains(vehicleBasicInfoListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.c.contains(vehicleBasicInfoListener) && this.c.add(vehicleBasicInfoListener) && this.c.size() == 1) {
                g();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public void unregisterVehicleBasicInfoListener(PALVehicleBasicInfoManager.VehicleBasicInfoListener vehicleBasicInfoListener) {
        if (vehicleBasicInfoListener == null) {
            Log.w("VehicleBasicInfoManager", "unregisterVehicleBasicInfoListener listener is null");
            return;
        }
        if (this.c.contains(vehicleBasicInfoListener)) {
            synchronized (this.b) {
                if (this.c.remove(vehicleBasicInfoListener) && this.c.size() == 0) {
                    h();
                }
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public void registerVehicleSpeedListener(PALVehicleBasicInfoManager.VehicleSpeedListener vehicleSpeedListener) throws FeatureNotSupportedException {
        if (vehicleSpeedListener == null) {
            Log.w("VehicleBasicInfoManager", "registerVehicleSpeedListener listener is null");
            return;
        }
        if (b() != null && !b().vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported) {
            throw new FeatureNotSupportedException("registerVehicleSpeedListener");
        }
        if (this.d.contains(vehicleSpeedListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.d.contains(vehicleSpeedListener) && this.d.add(vehicleSpeedListener) && this.d.size() == 1) {
                i();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public void unregisterVehicleSpeedListener(PALVehicleBasicInfoManager.VehicleSpeedListener vehicleSpeedListener) {
        if (vehicleSpeedListener == null) {
            Log.w("VehicleBasicInfoManager", "unregisterVehicleSpeedListener listener is null");
            return;
        }
        if (this.d.contains(vehicleSpeedListener)) {
            synchronized (this.b) {
                if (this.d.remove(vehicleSpeedListener) && this.d.size() == 0) {
                    j();
                }
            }
        }
    }

    private void g() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteVehicleBasicInfoListener vehicleBasicInfo == null");
            return;
        }
        try {
            bVar.a(this.f);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void h() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteVehicleBasicInfoListener vehicleBasicInfo == null");
            return;
        }
        try {
            bVar.b(this.f);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void i() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteSpeedListener vehicleBasicInfo == null");
            return;
        }
        try {
            bVar.a(this.e);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void j() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteSpeedListener vehicleBasicInfo == null");
            return;
        }
        try {
            bVar.b(this.e);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        this.f97a = b.a.a(iBinder);
        if (this.c != null && this.c.size() > 0) {
            g();
        }
        if (this.d == null || this.d.size() <= 0) {
            return;
        }
        i();
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        h();
        j();
        this.f97a = null;
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public String getDeviceId() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getDeviceId vehicleBasicInfo == null");
            return null;
        }
        e();
        try {
            return bVar.a();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public String getVehicleId() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getVehicleId vehicleBasicInfo == null");
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

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public float getSpeed() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getSpeed vehicleBasicInfo == null");
            return 0.0f;
        }
        e();
        try {
            return bVar.e();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return 0.0f;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public int getGear() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getGear vehicleBasicInfo == null");
            return 0;
        }
        e();
        try {
            return bVar.g();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public String toGearString(int i) {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "toGearString vehicleBasicInfo == null");
            return IVehicleBasicInfo.GEAR_UNKNOWN_STRING;
        }
        try {
            return bVar.a(i);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return IVehicleBasicInfo.GEAR_UNKNOWN_STRING;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public int getDayNightMode() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getDayNightMode vehicleBasicInfo == null");
            return -1;
        }
        e();
        try {
            return bVar.f();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public boolean getSeatBeltBuckled(int i) {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getSeatBeltBuckled vehicleBasicInfo == null");
            return false;
        }
        e();
        try {
            return bVar.b(i);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public String getPermanentPartitionPath() throws FeatureNotSupportedException {
        PlatformSupportInfo b = b();
        if (b != null && !b.vehicleBasicInfo_getPermanentPartitionPath_supported) {
            throw new FeatureNotSupportedException("getPermanentPartitionPath");
        }
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getPermanentPartitionPath vehicleBasicInfo == null");
            return null;
        }
        e();
        try {
            String h = bVar.h();
            Log.i(SDKConstants.TAG, "VehicleBasicInfoManagerImpl.getPermanentPartitionPath return path=" + h);
            return h;
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public String getChannel() {
        PlatformSupportInfo b = b();
        if (b != null && !b.vehicleBasicInfo_getChannel_supported) {
            throw new FeatureNotSupportedException("getChannel");
        }
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getChannel vehicleBasicInfo == null");
            return null;
        }
        e();
        VersionInfo remoteVersion = VersionInfo.getRemoteVersion();
        if (remoteVersion != null && remoteVersion.getMajorVersion() == 0) {
            String a2 = com.tencent.tai.pal.c.a(a());
            Log.i(SDKConstants.TAG, "VehicleBasicInfoManagerImpl.getChannel read from patch return channel=" + a2);
            if (!TextUtils.isEmpty(a2)) {
                return a2;
            }
            String b2 = com.tencent.tai.pal.c.b(a());
            Log.i(SDKConstants.TAG, "VehicleBasicInfoManagerImpl.getChannel read from patch provider return channel=" + b2);
            return b2;
        }
        try {
            String i = bVar.i();
            Log.i(SDKConstants.TAG, "VehicleBasicInfoManagerImpl.getChannel return channel=" + i);
            return i;
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleBasicInfoManager
    public String getVehicleModel() {
        com.tencent.tai.pal.vehiclebasicinfo.b bVar = this.f97a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getVehicleModel vehicleBasicInfo == null");
            return null;
        }
        e();
        try {
            return bVar.j();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return null;
        }
    }
}
