package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALExtensibleManager;
import com.tencent.tai.pal.extensible.b;
import com.tencent.tai.pal.extensible.c;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ExtensibleManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
final class d extends com.tencent.tai.pal.client.cs.a implements PALExtensibleManager {

    /* renamed from: a, reason: collision with root package name */
    private com.tencent.tai.pal.extensible.b f83a;
    private final Object b;
    private CopyOnWriteArrayList<PALExtensibleManager.ExtensibleListener> c;
    private com.tencent.tai.pal.extensible.c d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context) {
        super(context, SDKConstants.SERVICE_EXTENSIBLE, null);
        this.b = new Object();
        this.c = new CopyOnWriteArrayList<>();
        this.d = new c.a() { // from class: com.tencent.tai.pal.client.cs.a.d.1
            @Override // com.tencent.tai.pal.extensible.c
            public void a(Bundle bundle) throws RemoteException {
                Iterator it = d.this.c.iterator();
                while (it.hasNext()) {
                    PALExtensibleManager.ExtensibleListener extensibleListener = (PALExtensibleManager.ExtensibleListener) it.next();
                    if (extensibleListener != null) {
                        extensibleListener.onExtensibleMsg(bundle);
                    }
                }
            }
        };
    }

    private void g() {
        com.tencent.tai.pal.extensible.b bVar = this.f83a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteListener extensibleApiAidl == null");
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
        com.tencent.tai.pal.extensible.b bVar = this.f83a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteListener extensibleApiAidl == null");
            return;
        }
        try {
            bVar.b(this.d);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        this.f83a = b.a.a(iBinder);
        if (this.c == null || this.c.size() <= 0) {
            return;
        }
        g();
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        h();
        this.f83a = null;
    }

    @Override // com.tencent.tai.pal.client.PALExtensibleManager
    public Bundle callExtensibleApi(Bundle bundle) {
        com.tencent.tai.pal.extensible.b bVar = this.f83a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "callExtensibleApi extensibleApiAidl == null");
            return null;
        }
        e();
        try {
            return bVar.a(bundle);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.tencent.tai.pal.client.PALExtensibleManager
    public void registerExtensibleListener(PALExtensibleManager.ExtensibleListener extensibleListener) {
        if (extensibleListener == null) {
            Log.w("ExtensibleManagerImpl", "registerExtensibleListener listener is null");
            return;
        }
        if (this.c.contains(extensibleListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.c.contains(extensibleListener) && this.c.add(extensibleListener) && this.c.size() == 1) {
                g();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALExtensibleManager
    public void unregisterExtensibleListener(PALExtensibleManager.ExtensibleListener extensibleListener) {
        if (extensibleListener == null) {
            Log.w("ExtensibleManagerImpl", "unregisterExtensibleListener listener is null");
            return;
        }
        synchronized (this.b) {
            if (this.c.remove(extensibleListener) && this.c.size() == 0) {
                h();
            }
        }
    }
}
