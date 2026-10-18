package com.tencent.tai.pal.extensible;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.extensible.ExtensibleAdapter;
import com.tencent.tai.pal.extensible.b;
import com.tencent.tai.pal.service.BaseAdapter;

/* compiled from: ExtensibleService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class a extends b.a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private ExtensibleAdapter f114a;
    private final RemoteCallbackList<c> b = new RemoteCallbackList<>();
    private boolean c = false;
    private ExtensibleAdapter.ExtensibleListener d = new ExtensibleAdapter.ExtensibleListener() { // from class: com.tencent.tai.pal.extensible.a.1
        @Override // com.tencent.tai.pal.extensible.ExtensibleAdapter.ExtensibleListener
        public void onExtensibleMsg(Bundle bundle) {
            a.this.b(bundle);
        }
    };

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    @Override // com.tencent.tai.pal.extensible.b
    public Bundle a(Bundle bundle) throws RemoteException {
        if (this.f114a == null) {
            return null;
        }
        Bundle callExtensibleApi = this.f114a.callExtensibleApi(bundle);
        Log.i(SDKConstants.TAG, "ExtensibleService.callExtensibleApi bundle:" + bundle + " resultBundle:" + callExtensibleApi);
        return callExtensibleApi;
    }

    @Override // com.tencent.tai.pal.extensible.b
    public void a(c cVar) throws RemoteException {
        synchronized (this.b) {
            this.b.register(cVar);
            if (this.b.getRegisteredCallbackCount() > 0 && !this.c && this.f114a != null) {
                this.f114a.registerExtensibleListener(this.d);
                this.c = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.extensible.b
    public void b(c cVar) throws RemoteException {
        synchronized (this.b) {
            this.b.unregister(cVar);
            if (this.b.getRegisteredCallbackCount() == 0 && this.c && this.f114a != null) {
                this.f114a.unregisterExtensibleListener(this.d);
                this.c = false;
            }
        }
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter instanceof ExtensibleAdapter) {
            this.f114a = (ExtensibleAdapter) baseAdapter;
            synchronized (this.b) {
                if (this.b.getRegisteredCallbackCount() > 0) {
                    this.c = true;
                    this.f114a.registerExtensibleListener(this.d);
                } else {
                    this.c = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Bundle bundle) {
        Log.i(SDKConstants.TAG, "ExtensibleService:notifyExtensibleMsg bundle:" + bundle);
        synchronized (this.b) {
            int beginBroadcast = this.b.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.b.getBroadcastItem(i).a(bundle);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "notify client failed", e);
                }
            }
            this.b.finishBroadcast();
        }
    }
}
