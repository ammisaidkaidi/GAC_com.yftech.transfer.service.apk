package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALInsManager;
import com.tencent.tai.pal.ins.a;
import com.tencent.tai.pal.ins.b;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: InsManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
final class e extends com.tencent.tai.pal.client.cs.a implements PALInsManager {

    /* renamed from: a, reason: collision with root package name */
    private com.tencent.tai.pal.ins.a f85a;
    private final Object b;
    private List<PALInsManager.InsInfoListener> c;
    private b.a d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context) {
        super(context, SDKConstants.SERVICE_INS, null);
        this.b = new Object();
        this.c = new CopyOnWriteArrayList();
        this.d = new b.a() { // from class: com.tencent.tai.pal.client.cs.a.e.1
            @Override // com.tencent.tai.pal.ins.b
            public void a(float f, int i, long j) throws RemoteException {
                for (PALInsManager.InsInfoListener insInfoListener : e.this.c) {
                    if (insInfoListener != null) {
                        insInfoListener.onSpeedChanged(f, i, j);
                    }
                }
            }

            @Override // com.tencent.tai.pal.ins.b
            public void a(float f, float f2, float f3, float f4, int i, long j) throws RemoteException {
                for (PALInsManager.InsInfoListener insInfoListener : e.this.c) {
                    if (insInfoListener != null) {
                        insInfoListener.onGyroscopeInfoChanged(f, f2, f3, f4, i, j);
                    }
                }
            }

            @Override // com.tencent.tai.pal.ins.b
            public void a(float f, float f2, float f3, int i, long j) throws RemoteException {
                for (PALInsManager.InsInfoListener insInfoListener : e.this.c) {
                    if (insInfoListener != null) {
                        insInfoListener.onAccelerometerInfoChanged(f, f2, f3, i, j);
                    }
                }
            }
        };
    }

    @Override // com.tencent.tai.pal.client.PALInsManager
    public void registerInsInfoListener(PALInsManager.InsInfoListener insInfoListener) {
        if (insInfoListener == null) {
            Log.w("InsManagerImpl", "registerInsInfoListener listener is null ");
            return;
        }
        if (this.c.contains(insInfoListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.c.contains(insInfoListener) && this.c.add(insInfoListener) && this.c.size() == 1) {
                g();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALInsManager
    public void unregisterInsInfoListener(PALInsManager.InsInfoListener insInfoListener) {
        if (insInfoListener == null) {
            Log.w("InsManagerImpl", "unregisterInsInfoListener listener is null ");
            return;
        }
        synchronized (this.b) {
            if (this.c.remove(insInfoListener) && this.c.size() == 0) {
                h();
            }
        }
    }

    private void g() {
        com.tencent.tai.pal.ins.a aVar = this.f85a;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteListener insApiAidl==null");
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
        com.tencent.tai.pal.ins.a aVar = this.f85a;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteListener insApiAidl==null");
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
        this.f85a = a.AbstractBinderC0026a.a(iBinder);
        if (this.c == null || this.c.size() <= 0) {
            return;
        }
        g();
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        h();
        this.f85a = null;
    }
}
