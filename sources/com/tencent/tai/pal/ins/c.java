package com.tencent.tai.pal.ins;

import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.ins.InsAdapter;
import com.tencent.tai.pal.ins.a;
import com.tencent.tai.pal.service.BaseAdapter;

/* compiled from: InsService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class c extends a.AbstractBinderC0026a implements com.tencent.tai.pal.service.a {
    private InsAdapter b;

    /* renamed from: a, reason: collision with root package name */
    private final RemoteCallbackList<b> f125a = new RemoteCallbackList<>();
    private boolean c = false;
    private InsAdapter.OnInsInfoChangeListener d = new InsAdapter.OnInsInfoChangeListener() { // from class: com.tencent.tai.pal.ins.c.1
        @Override // com.tencent.tai.pal.ins.InsAdapter.OnInsInfoChangeListener
        public void onInsSpeedChanged(float f, int i, long j, SDKConstants.SpeedUnit speedUnit) {
            if (SDKConstants.SpeedUnit.METERS_PER_SECOND.equals(speedUnit)) {
                f = (float) (f * 3.6d);
            }
            c.this.a(f, i, j);
        }

        @Override // com.tencent.tai.pal.ins.InsAdapter.OnInsInfoChangeListener
        public void onInsGyroscopeInfoChanged(float f, float f2, float f3, float f4, int i, long j) {
            c.this.a(f, f2, f3, f4, i, j);
        }

        @Override // com.tencent.tai.pal.ins.InsAdapter.OnInsInfoChangeListener
        public void onInsAccelerometerInfoChanged(float f, float f2, float f3, int i, long j) {
            c.this.a(f, f2, f3, i, j);
        }
    };

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    @Override // com.tencent.tai.pal.ins.a
    public void a(b bVar) throws RemoteException {
        synchronized (this.f125a) {
            this.f125a.register(bVar);
            int registeredCallbackCount = this.f125a.getRegisteredCallbackCount();
            if (!this.c && registeredCallbackCount > 0 && this.b != null) {
                this.b.registerOnInsInfoChangeListener(this.d);
                this.c = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.ins.a
    public void b(b bVar) throws RemoteException {
        synchronized (this.f125a) {
            this.f125a.unregister(bVar);
            if (this.f125a.getRegisteredCallbackCount() == 0 && this.c && this.b != null) {
                this.b.unregisterOnInsInfoChangeListener(this.d);
                this.c = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f, int i, long j) {
        synchronized (this.f125a) {
            int beginBroadcast = this.f125a.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.f125a.getBroadcastItem(i2).a(f, i, j);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.f125a.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f, float f2, float f3, float f4, int i, long j) {
        synchronized (this.f125a) {
            int beginBroadcast = this.f125a.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.f125a.getBroadcastItem(i2).a(f, f2, f3, f4, i, j);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.f125a.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f, float f2, float f3, int i, long j) {
        synchronized (this.f125a) {
            int beginBroadcast = this.f125a.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.f125a.getBroadcastItem(i2).a(f, f2, f3, i, j);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.f125a.finishBroadcast();
        }
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter instanceof InsAdapter) {
            this.b = (InsAdapter) baseAdapter;
            synchronized (this.f125a) {
                if (this.f125a.getRegisteredCallbackCount() > 0) {
                    this.c = true;
                    this.b.registerOnInsInfoChangeListener(this.d);
                } else {
                    this.c = false;
                }
            }
        }
    }
}
