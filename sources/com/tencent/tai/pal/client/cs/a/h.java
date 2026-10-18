package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALPowerManager;
import com.tencent.tai.pal.power.PowerInfo;
import com.tencent.tai.pal.power.a;
import com.tencent.tai.pal.power.b;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: PowerManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
final class h extends com.tencent.tai.pal.client.cs.a implements PALPowerManager {

    /* renamed from: a, reason: collision with root package name */
    private com.tencent.tai.pal.power.a f91a;
    private final Object b;
    private CopyOnWriteArrayList<PALPowerManager.PowerLevelLowListener> c;
    private b.a d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context) {
        super(context, SDKConstants.SERVICE_POWER, null);
        this.b = new Object();
        this.c = new CopyOnWriteArrayList<>();
        this.d = new b.a() { // from class: com.tencent.tai.pal.client.cs.a.h.1
            @Override // com.tencent.tai.pal.power.b
            public void a(int i) throws RemoteException {
                Iterator it = h.this.c.iterator();
                while (it.hasNext()) {
                    PALPowerManager.PowerLevelLowListener powerLevelLowListener = (PALPowerManager.PowerLevelLowListener) it.next();
                    if (powerLevelLowListener != null) {
                        powerLevelLowListener.onPowerLevelLow(i);
                    }
                }
            }
        };
    }

    @Override // com.tencent.tai.pal.client.PALPowerManager
    public void registerPowerLevelLowListener(PALPowerManager.PowerLevelLowListener powerLevelLowListener) {
        if (powerLevelLowListener == null) {
            Log.w("PowerManagerImpl", "registerPowerLevelLowListener is null");
            return;
        }
        if (this.c.contains(powerLevelLowListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.c.contains(powerLevelLowListener) && this.c.add(powerLevelLowListener) && this.c.size() == 1) {
                g();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALPowerManager
    public void unregisterPowerLevelLowListener(PALPowerManager.PowerLevelLowListener powerLevelLowListener) {
        if (powerLevelLowListener == null) {
            Log.w("PowerManagerImpl", "unregisterPowerLevelLowListener is null");
            return;
        }
        if (this.c.contains(powerLevelLowListener)) {
            synchronized (this.b) {
                if (this.c.remove(powerLevelLowListener) && this.c.size() == 0) {
                    h();
                }
            }
        }
    }

    private void g() {
        com.tencent.tai.pal.power.a aVar = this.f91a;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteListener powerAidl == null");
            return;
        }
        try {
            aVar.a(this.d);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void h() {
        com.tencent.tai.pal.power.a aVar = this.f91a;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteListener powerAidl == null");
            return;
        }
        try {
            aVar.b(this.d);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        this.f91a = a.AbstractBinderC0034a.a(iBinder);
        if (this.c == null || this.c.size() <= 0) {
            return;
        }
        g();
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        h();
        this.f91a = null;
    }

    @Override // com.tencent.tai.pal.client.PALPowerManager
    public int getPowerType() {
        com.tencent.tai.pal.power.a aVar = this.f91a;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getPowerType powerAidl == null");
            return 0;
        }
        e();
        try {
            return aVar.a();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALPowerManager
    public PowerInfo getPowerInfo() {
        String str;
        com.tencent.tai.pal.power.a aVar = this.f91a;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getPowerInfo powerAidl == null");
            return null;
        }
        e();
        try {
            str = aVar.b();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return PowerInfo.fromJson(str);
    }

    @Override // com.tencent.tai.pal.client.PALPowerManager
    public int getPowerLevelAfterDriving(int i) {
        com.tencent.tai.pal.power.a aVar = this.f91a;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getPowerLevelAfterDriving powerAidl == null");
            return -1;
        }
        e();
        try {
            return aVar.a(i);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return -1;
        }
    }
}
