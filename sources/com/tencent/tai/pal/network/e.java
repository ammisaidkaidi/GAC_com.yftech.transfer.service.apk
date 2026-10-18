package com.tencent.tai.pal.network;

import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.network.NetworkAdapter;
import com.tencent.tai.pal.network.a;
import com.tencent.tai.pal.service.BaseAdapter;

/* compiled from: NetworkService.java */
/* loaded from: /home/user/work/dex/classes.dex */
public class e extends a.AbstractBinderC0029a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f132a = "e";
    private NetworkAdapter b;
    private final RemoteCallbackList<b> c = new RemoteCallbackList<>();
    private final RemoteCallbackList<c> d = new RemoteCallbackList<>();
    private final RemoteCallbackList<d> e = new RemoteCallbackList<>();
    private boolean f = false;
    private NetworkAdapter.OnActiveNetworkTypeChangeListener g = new NetworkAdapter.OnActiveNetworkTypeChangeListener() { // from class: com.tencent.tai.pal.network.e.1
        @Override // com.tencent.tai.pal.network.NetworkAdapter.OnActiveNetworkTypeChangeListener
        public void onActiveNetworkTypeChange(int i) {
            e.this.b(i);
        }
    };
    private boolean h = false;
    private NetworkAdapter.OnNetworkAvailabilityChangeListener i = new NetworkAdapter.OnNetworkAvailabilityChangeListener() { // from class: com.tencent.tai.pal.network.e.2
        @Override // com.tencent.tai.pal.network.NetworkAdapter.OnNetworkAvailabilityChangeListener
        public void onNetworkAvailabilityChange(boolean z) {
            e.this.c(z);
        }
    };
    private boolean j = false;
    private NetworkAdapter.OnNetworkSignalStrengthChangeListener k = new NetworkAdapter.OnNetworkSignalStrengthChangeListener() { // from class: com.tencent.tai.pal.network.e.3
        @Override // com.tencent.tai.pal.network.NetworkAdapter.OnNetworkSignalStrengthChangeListener
        public void onNetworkSignalStrengthChange(int i, float f) {
            e.this.a(i, f);
        }
    };

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        Log.i(f132a, "NetworkService:notifyActiveNetworkTypeChange activeNetworkType:" + i);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        Log.i(f132a, "NetworkService:notifyNetworkAvailabilityChange available:" + z);
        synchronized (this.d) {
            int beginBroadcast = this.d.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.d.getBroadcastItem(i).a(z);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.d.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, float f) {
        Log.i(f132a, "NetworkService:notifyNetworkSignalStrengthChange networkType:" + i + " signalStrength:" + f);
        synchronized (this.e) {
            int beginBroadcast = this.e.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.e.getBroadcastItem(i2).a(i, f);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.e.finishBroadcast();
        }
    }

    @Override // com.tencent.tai.pal.network.a
    public int a() throws RemoteException {
        if (this.b == null) {
            return 0;
        }
        return this.b.getMobileConnectionState();
    }

    @Override // com.tencent.tai.pal.network.a
    public int b() throws RemoteException {
        if (this.b == null) {
            return 0;
        }
        return this.b.getWifiConnectionState();
    }

    @Override // com.tencent.tai.pal.network.a
    public int a(boolean z) {
        if (this.b == null) {
            return -1;
        }
        return this.b.enableWifi(z);
    }

    @Override // com.tencent.tai.pal.network.a
    public int b(boolean z) {
        if (this.b == null) {
            return -1;
        }
        return this.b.enableMobileNetwork(z);
    }

    @Override // com.tencent.tai.pal.network.a
    public boolean d() throws RemoteException {
        if (this.b == null) {
            return false;
        }
        return this.b.jumpToNetworkSettingPage();
    }

    @Override // com.tencent.tai.pal.network.a
    public int e() throws RemoteException {
        return this.b.getActiveNetworkType();
    }

    @Override // com.tencent.tai.pal.network.a
    public void a(b bVar) throws RemoteException {
        synchronized (this.c) {
            this.c.register(bVar);
            if (this.c.getRegisteredCallbackCount() > 0 && !this.f && this.b != null) {
                this.b.registerOnActiveNetworkTypeChangeListener(this.g);
                this.f = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.network.a
    public void b(b bVar) throws RemoteException {
        synchronized (this.c) {
            this.c.unregister(bVar);
            if (this.c.getRegisteredCallbackCount() == 0 && this.f && this.b != null) {
                this.b.unregisterOnActiveNetworkTypeChangeListener(this.g);
                this.f = false;
            }
        }
    }

    @Override // com.tencent.tai.pal.network.a
    public boolean f() throws RemoteException {
        return this.b.isNetworkAvailable();
    }

    @Override // com.tencent.tai.pal.network.a
    public void a(c cVar) throws RemoteException {
        synchronized (this.d) {
            this.d.register(cVar);
            if (this.d.getRegisteredCallbackCount() > 0 && !this.h && this.b != null) {
                this.b.registerOnNetworkAvailabilityChangeListener(this.i);
                this.h = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.network.a
    public void b(c cVar) throws RemoteException {
        synchronized (this.d) {
            this.d.unregister(cVar);
            if (this.d.getRegisteredCallbackCount() == 0 && this.h && this.b != null) {
                this.b.unregisterOnNetworkAvailabilityChangeListener(this.i);
                this.h = false;
            }
        }
    }

    @Override // com.tencent.tai.pal.network.a
    public float a(int i) throws RemoteException {
        return this.b.getNetworkSignalStrength(i);
    }

    @Override // com.tencent.tai.pal.network.a
    public void a(d dVar) throws RemoteException {
        synchronized (this.e) {
            this.e.register(dVar);
            if (this.e.getRegisteredCallbackCount() > 0 && !this.j && this.b != null) {
                this.b.registerOnNetworkSignalStrengthChangeListener(this.k);
                this.j = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.network.a
    public void b(d dVar) throws RemoteException {
        synchronized (this.e) {
            this.e.unregister(dVar);
            if (this.e.getRegisteredCallbackCount() == 0 && this.j && this.b != null) {
                this.b.unregisterOnNetworkSignalStrengthChangeListener(this.k);
                this.j = false;
            }
        }
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter == null) {
            throw new NullPointerException("adapter should not be null!");
        }
        if (!(baseAdapter instanceof NetworkAdapter)) {
            throw new IllegalArgumentException("param not NetworkAdapter");
        }
        this.b = (NetworkAdapter) baseAdapter;
    }
}
