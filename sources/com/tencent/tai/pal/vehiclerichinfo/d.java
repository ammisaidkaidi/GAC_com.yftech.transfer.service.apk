package com.tencent.tai.pal.vehiclerichinfo;

import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.service.BaseAdapter;
import com.tencent.tai.pal.vehiclerichinfo.VehicleRichInfoAdapter;
import com.tencent.tai.pal.vehiclerichinfo.c;

/* compiled from: VehicleRichInfoService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class d extends c.a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private VehicleRichInfoAdapter f166a;
    private final RemoteCallbackList<b> b = new RemoteCallbackList<>();
    private final RemoteCallbackList<a> c = new RemoteCallbackList<>();
    private boolean d = false;
    private VehicleRichInfoAdapter.OnDrivingSafetyDisclaimerListener e = new VehicleRichInfoAdapter.OnDrivingSafetyDisclaimerListener() { // from class: com.tencent.tai.pal.vehiclerichinfo.d.1
        @Override // com.tencent.tai.pal.vehiclerichinfo.VehicleRichInfoAdapter.OnDrivingSafetyDisclaimerListener
        public void onDrivingSafetyDisclaimerUpdated(String str) {
            d.this.a(str);
        }
    };
    private boolean f = false;
    private VehicleRichInfoAdapter.OnDrivingControlStatusChangeListener g = new VehicleRichInfoAdapter.OnDrivingControlStatusChangeListener() { // from class: com.tencent.tai.pal.vehiclerichinfo.d.2
        @Override // com.tencent.tai.pal.vehiclerichinfo.VehicleRichInfoAdapter.OnDrivingControlStatusChangeListener
        public void onDrivingControlStatusChange(int i) {
            d.this.a(i);
        }
    };

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        Log.i(SDKConstants.TAG, "VehicleRichInfoService:notifyDrivingSafetyDisclaimerUpdated json:" + str);
        synchronized (this.b) {
            int beginBroadcast = this.b.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.b.getBroadcastItem(i).a(str);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.b.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        Log.i(SDKConstants.TAG, "VehicleRichInfoService:notifyDrivingControlStatusChange status:" + i);
        synchronized (this.c) {
            int beginBroadcast = this.c.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.c.getBroadcastItem(i2).a(i);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.c.finishBroadcast();
        }
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter instanceof VehicleRichInfoAdapter) {
            this.f166a = (VehicleRichInfoAdapter) baseAdapter;
            synchronized (this.c) {
                if (this.c.getRegisteredCallbackCount() > 0) {
                    this.f = true;
                    this.f166a.registerOnDrivingControlStatusChangeListener(this.g);
                } else {
                    this.f = false;
                }
            }
            synchronized (this.b) {
                if (this.b.getRegisteredCallbackCount() > 0) {
                    this.d = true;
                    this.f166a.registerOnDrivingSafetyDisclaimerListener(this.e);
                } else {
                    this.d = false;
                }
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclerichinfo.c
    public void a(b bVar) throws RemoteException {
        synchronized (this.b) {
            this.b.register(bVar);
            if (this.b.getRegisteredCallbackCount() > 0 && !this.d && this.f166a != null) {
                this.f166a.registerOnDrivingSafetyDisclaimerListener(this.e);
                this.d = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclerichinfo.c
    public void b(b bVar) throws RemoteException {
        synchronized (this.b) {
            this.b.unregister(bVar);
            if (this.b.getRegisteredCallbackCount() == 0 && this.d && this.f166a != null) {
                this.f166a.unregisterOnDrivingSafetyDisclaimerListener(this.e);
                this.d = false;
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclerichinfo.c
    public String a() throws RemoteException {
        String drivingSafetyDisclaimerInfo = this.f166a.getDrivingSafetyDisclaimerInfo();
        Log.i(SDKConstants.TAG, "VehicleRichInfoService getDrivingSafetyDisclaimerInfo adapter return " + drivingSafetyDisclaimerInfo);
        return drivingSafetyDisclaimerInfo;
    }

    @Override // com.tencent.tai.pal.vehiclerichinfo.c
    public void a(a aVar) throws RemoteException {
        synchronized (this.c) {
            this.c.register(aVar);
            if (this.c.getRegisteredCallbackCount() > 0 && !this.f && this.f166a != null) {
                this.f166a.registerOnDrivingControlStatusChangeListener(this.g);
                this.f = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclerichinfo.c
    public void b(a aVar) throws RemoteException {
        synchronized (this.c) {
            this.c.unregister(aVar);
            if (this.c.getRegisteredCallbackCount() == 0 && this.f && this.f166a != null) {
                this.f166a.unregisterOnDrivingControlStatusChangeListener(this.g);
                this.f = false;
            }
        }
    }

    @Override // com.tencent.tai.pal.vehiclerichinfo.c
    public int b() throws RemoteException {
        int drivingControlStatus = this.f166a.getDrivingControlStatus();
        Log.i(SDKConstants.TAG, "VehicleRichInfoService getDrivingControlStatus adapter return " + drivingControlStatus);
        return drivingControlStatus;
    }
}
