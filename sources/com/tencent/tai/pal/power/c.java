package com.tencent.tai.pal.power;

import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.power.PowerAdapter;
import com.tencent.tai.pal.power.a;
import com.tencent.tai.pal.service.BaseAdapter;

/* compiled from: PowerService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class c extends a.AbstractBinderC0034a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private PowerAdapter f139a;
    private boolean b = false;
    private PowerAdapter.OnPowerLevelLowListener c = new PowerAdapter.OnPowerLevelLowListener() { // from class: com.tencent.tai.pal.power.c.1
        @Override // com.tencent.tai.pal.power.PowerAdapter.OnPowerLevelLowListener
        public void onPowerLevelLowListener(int i) {
            c.this.b(i);
        }
    };
    private final RemoteCallbackList<b> d = new RemoteCallbackList<>();

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    @Override // com.tencent.tai.pal.power.a
    public void a(b bVar) throws RemoteException {
        Log.i(SDKConstants.TAG, "PowerService:registerCallback callback: " + bVar);
        synchronized (this.d) {
            this.d.register(bVar);
            if (this.d.getRegisteredCallbackCount() > 0 && !this.b && this.f139a != null) {
                this.f139a.registerOnPowerLevelLowListener(this.c);
                this.b = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.power.a
    public void b(b bVar) throws RemoteException {
        Log.i(SDKConstants.TAG, "PowerService:unregisterCallback callback: " + bVar);
        synchronized (this.d) {
            this.d.unregister(bVar);
            if (this.d.getRegisteredCallbackCount() == 0 && this.b && this.f139a != null) {
                this.f139a.unregisterOnPowerLevelLowListener(this.c);
                this.b = false;
            }
        }
    }

    @Override // com.tencent.tai.pal.power.a
    public int a() throws RemoteException {
        if (this.f139a == null) {
            return 0;
        }
        int powerType = this.f139a.getPowerType();
        Log.i(SDKConstants.TAG, "PowerService:getPowerType result=" + powerType);
        return powerType;
    }

    @Override // com.tencent.tai.pal.power.a
    public String b() throws RemoteException {
        if (this.f139a == null) {
            return null;
        }
        String json = PowerInfo.toJson(this.f139a.getPowerInfo());
        Log.i(SDKConstants.TAG, "PowerService:getPowerInfo json=" + json);
        return json;
    }

    @Override // com.tencent.tai.pal.power.a
    public int a(int i) throws RemoteException {
        if (this.f139a == null) {
            return -1;
        }
        int powerLevelAfterDriving = this.f139a.getPowerLevelAfterDriving(i);
        Log.i(SDKConstants.TAG, "PowerService:getPowerLevelAfterDriving powerLevel=" + powerLevelAfterDriving);
        return powerLevelAfterDriving;
    }

    public void b(int i) {
        Log.i(SDKConstants.TAG, "PowerService:notifyPowerLevelLow powerLevel: " + i);
        synchronized (this.d) {
            int beginBroadcast = this.d.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.d.getBroadcastItem(i2).a(i);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.d.finishBroadcast();
        }
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter instanceof PowerAdapter) {
            this.f139a = (PowerAdapter) baseAdapter;
            synchronized (this.d) {
                if (this.d.getRegisteredCallbackCount() > 0) {
                    this.b = true;
                    this.f139a.registerOnPowerLevelLowListener(this.c);
                } else {
                    this.b = false;
                }
            }
        }
    }
}
