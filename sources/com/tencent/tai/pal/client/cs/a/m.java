package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALVehicleRichInfoManager;
import com.tencent.tai.pal.exception.FeatureNotSupportedException;
import com.tencent.tai.pal.vehiclerichinfo.a;
import com.tencent.tai.pal.vehiclerichinfo.b;
import com.tencent.tai.pal.vehiclerichinfo.c;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VehicleRichInfoManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class m extends com.tencent.tai.pal.client.cs.a implements PALVehicleRichInfoManager {

    /* renamed from: a, reason: collision with root package name */
    private com.tencent.tai.pal.vehiclerichinfo.c f100a;
    private final CopyOnWriteArrayList<PALVehicleRichInfoManager.DrivingSafetyDisclaimerListener> b;
    private final CopyOnWriteArrayList<PALVehicleRichInfoManager.OnDrivingControlStatusChangeListener> c;
    private com.tencent.tai.pal.vehiclerichinfo.b d;
    private com.tencent.tai.pal.vehiclerichinfo.a e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Context context) {
        super(context, SDKConstants.SERVICE_VEHICLE_RICH_INFO, null);
        this.b = new CopyOnWriteArrayList<>();
        this.c = new CopyOnWriteArrayList<>();
        this.d = new b.a() { // from class: com.tencent.tai.pal.client.cs.a.m.1
            @Override // com.tencent.tai.pal.vehiclerichinfo.b
            public void a(String str) throws RemoteException {
                Iterator it = m.this.b.iterator();
                while (it.hasNext()) {
                    PALVehicleRichInfoManager.DrivingSafetyDisclaimerListener drivingSafetyDisclaimerListener = (PALVehicleRichInfoManager.DrivingSafetyDisclaimerListener) it.next();
                    if (drivingSafetyDisclaimerListener != null) {
                        drivingSafetyDisclaimerListener.onDrivingSafetyDisclaimerUpdated(str);
                    }
                }
            }
        };
        this.e = new a.AbstractBinderC0047a() { // from class: com.tencent.tai.pal.client.cs.a.m.2
            @Override // com.tencent.tai.pal.vehiclerichinfo.a
            public void a(int i) throws RemoteException {
                Iterator it = m.this.c.iterator();
                while (it.hasNext()) {
                    PALVehicleRichInfoManager.OnDrivingControlStatusChangeListener onDrivingControlStatusChangeListener = (PALVehicleRichInfoManager.OnDrivingControlStatusChangeListener) it.next();
                    if (onDrivingControlStatusChangeListener != null) {
                        onDrivingControlStatusChangeListener.onDrivingControlStatusChange(i);
                    }
                }
            }
        };
    }

    @Override // com.tencent.tai.pal.client.PALVehicleRichInfoManager
    public void registerDrivingSafetyDisclaimerListener(PALVehicleRichInfoManager.DrivingSafetyDisclaimerListener drivingSafetyDisclaimerListener) {
        if (drivingSafetyDisclaimerListener == null) {
            Log.w("VehicleRichInfoManager", "registerDrivingSafetyDisclaimerListener listener is null");
            return;
        }
        if (this.b.contains(drivingSafetyDisclaimerListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.b.contains(drivingSafetyDisclaimerListener) && this.b.add(drivingSafetyDisclaimerListener) && this.b.size() == 1) {
                g();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleRichInfoManager
    public void unregisterDrivingSafetyDisclaimerListener(PALVehicleRichInfoManager.DrivingSafetyDisclaimerListener drivingSafetyDisclaimerListener) {
        if (drivingSafetyDisclaimerListener == null) {
            Log.w("VehicleRichInfoManager", "unregisterDrivingSafetyDisclaimerListener listener is null");
            return;
        }
        synchronized (this.b) {
            if (this.b.remove(drivingSafetyDisclaimerListener) && this.b.size() == 0) {
                h();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleRichInfoManager
    public String getDrivingSafetyDisclaimerInfo() throws FeatureNotSupportedException {
        PlatformSupportInfo b = b();
        if (b == null || !b.vehicleRichInfo_getDrivingSafetyDisclaimerInfo_supported) {
            throw new FeatureNotSupportedException("getDrivingSafetyDisclaimerInfo");
        }
        com.tencent.tai.pal.vehiclerichinfo.c cVar = this.f100a;
        if (cVar == null) {
            Log.i(SDKConstants.TAG, "getDrivingSafetyDisclaimerInfo vehicleRichInfoAidl == null");
            return null;
        }
        e();
        try {
            return cVar.a();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleRichInfoManager
    public void registerOnDrivingControlStatusChangeListener(PALVehicleRichInfoManager.OnDrivingControlStatusChangeListener onDrivingControlStatusChangeListener) {
        PlatformSupportInfo b = b();
        if (b == null || !b.vehicleRichInfo_registerOnDrivingControlStatusChangeListener_unregisterOnDrivingControlStatusChangeListener_supported) {
            throw new FeatureNotSupportedException("registerOnDrivingControlStatusChangeListener");
        }
        if (onDrivingControlStatusChangeListener == null) {
            Log.w("VehicleRichInfoManager", "registerOnDrivingControlStatusChangeListener listener is null");
            return;
        }
        if (this.c.contains(onDrivingControlStatusChangeListener)) {
            return;
        }
        synchronized (this.c) {
            if (!this.c.contains(onDrivingControlStatusChangeListener) && this.c.add(onDrivingControlStatusChangeListener) && this.c.size() == 1) {
                i();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleRichInfoManager
    public void unregisterOnDrivingControlStatusChangeListener(PALVehicleRichInfoManager.OnDrivingControlStatusChangeListener onDrivingControlStatusChangeListener) {
        PlatformSupportInfo b = b();
        if (b == null || !b.vehicleRichInfo_registerOnDrivingControlStatusChangeListener_unregisterOnDrivingControlStatusChangeListener_supported) {
            throw new FeatureNotSupportedException("unregisterOnDrivingControlStatusChangeListener");
        }
        if (onDrivingControlStatusChangeListener == null) {
            Log.w("VehicleRichInfoManager", "unregisterOnDrivingControlStatusChangeListener listener is null");
            return;
        }
        synchronized (this.c) {
            if (this.c.remove(onDrivingControlStatusChangeListener) && this.c.size() == 0) {
                j();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALVehicleRichInfoManager
    public int getDrivingControlStatus() {
        PlatformSupportInfo b = b();
        if (b == null || !b.vehicleRichInfo_getDrivingControlStatus_supported) {
            throw new FeatureNotSupportedException("getDrivingControlStatus");
        }
        com.tencent.tai.pal.vehiclerichinfo.c cVar = this.f100a;
        if (cVar == null) {
            Log.i(SDKConstants.TAG, "getDrivingControlStatus vehicleRichInfoAidl == null");
            return -1;
        }
        e();
        try {
            return cVar.b();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return -1;
        }
    }

    private void g() {
        com.tencent.tai.pal.vehiclerichinfo.c cVar = this.f100a;
        if (cVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteListener vehicleRichInfoAidl == null");
            return;
        }
        try {
            cVar.a(this.d);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void h() {
        com.tencent.tai.pal.vehiclerichinfo.c cVar = this.f100a;
        if (cVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteListener vehicleRichInfoAidl == null");
            return;
        }
        try {
            cVar.b(this.d);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void i() {
        com.tencent.tai.pal.vehiclerichinfo.c cVar = this.f100a;
        if (cVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteDrivingControlStatusChangeListener vehicleRichInfoAidl == null");
            return;
        }
        try {
            cVar.a(this.e);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void j() {
        com.tencent.tai.pal.vehiclerichinfo.c cVar = this.f100a;
        if (cVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteDrivingControlStatusChangeListener vehicleRichInfoAidl == null");
            return;
        }
        try {
            cVar.b(this.e);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        this.f100a = c.a.a(iBinder);
        if (this.b.size() > 0) {
            g();
        }
        if (this.c.size() > 0) {
            i();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        h();
        j();
        this.f100a = null;
    }
}
