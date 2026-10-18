package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALNetworkManager;
import com.tencent.tai.pal.exception.FeatureNotSupportedException;
import com.tencent.tai.pal.network.a;
import com.tencent.tai.pal.network.b;
import com.tencent.tai.pal.network.c;
import com.tencent.tai.pal.network.d;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NetworkManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class g extends com.tencent.tai.pal.client.cs.a implements PALNetworkManager {

    /* renamed from: a, reason: collision with root package name */
    private static final String f87a = "g";
    private com.tencent.tai.pal.network.a b;
    private final CopyOnWriteArrayList<PALNetworkManager.OnActiveNetworkTypeChangeListener> c;
    private final CopyOnWriteArrayList<PALNetworkManager.OnNetworkAvailabilityChangeListener> d;
    private final CopyOnWriteArrayList<PALNetworkManager.OnNetworkSignalStrengthChangeListener> e;
    private com.tencent.tai.pal.network.b f;
    private com.tencent.tai.pal.network.c g;
    private com.tencent.tai.pal.network.d h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context) {
        super(context, SDKConstants.SERVICE_NETWORK, null);
        this.b = null;
        this.c = new CopyOnWriteArrayList<>();
        this.d = new CopyOnWriteArrayList<>();
        this.e = new CopyOnWriteArrayList<>();
        this.f = new b.a() { // from class: com.tencent.tai.pal.client.cs.a.g.1
            @Override // com.tencent.tai.pal.network.b
            public void a(int i) throws RemoteException {
                Iterator it = g.this.c.iterator();
                while (it.hasNext()) {
                    PALNetworkManager.OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener = (PALNetworkManager.OnActiveNetworkTypeChangeListener) it.next();
                    if (onActiveNetworkTypeChangeListener != null) {
                        onActiveNetworkTypeChangeListener.onActiveNetworkTypeChange(i);
                    }
                }
            }
        };
        this.g = new c.a() { // from class: com.tencent.tai.pal.client.cs.a.g.2
            @Override // com.tencent.tai.pal.network.c
            public void a(boolean z) throws RemoteException {
                Iterator it = g.this.d.iterator();
                while (it.hasNext()) {
                    PALNetworkManager.OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener = (PALNetworkManager.OnNetworkAvailabilityChangeListener) it.next();
                    if (onNetworkAvailabilityChangeListener != null) {
                        onNetworkAvailabilityChangeListener.onNetworkAvailabilityChange(z);
                    }
                }
            }
        };
        this.h = new d.a() { // from class: com.tencent.tai.pal.client.cs.a.g.3
            @Override // com.tencent.tai.pal.network.d
            public void a(int i, float f) throws RemoteException {
                Iterator it = g.this.e.iterator();
                while (it.hasNext()) {
                    PALNetworkManager.OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener = (PALNetworkManager.OnNetworkSignalStrengthChangeListener) it.next();
                    if (onNetworkSignalStrengthChangeListener != null) {
                        onNetworkSignalStrengthChangeListener.onNetworkSignalStrengthChange(i, f);
                    }
                }
            }
        };
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        Log.i(f87a, "onServiceConnected binder:" + iBinder);
        this.b = a.AbstractBinderC0029a.a(iBinder);
        if (this.c.size() > 0) {
            g();
        }
        if (this.d.size() > 0) {
            i();
        }
        if (this.e.size() > 0) {
            k();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        Log.i(f87a, "onServiceDisconnected");
        h();
        j();
        l();
        this.b = null;
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public int enableWifi(boolean z) {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "enableWifi networkApiAidl == null");
            return -1;
        }
        e();
        try {
            return aVar.a(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public int enableMobileNetwork(boolean z) {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "enableMobileNetwork networkApiAidl == null");
            return 0;
        }
        e();
        try {
            return aVar.b(z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public int getMobileConnectionState() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getMobileConnectionState networkApiAidl == null");
            return 0;
        }
        e();
        try {
            return aVar.a();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public int getWifiConnectionState() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getWifiConnectionState networkApiAidl == null");
            return 0;
        }
        e();
        try {
            return aVar.b();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public boolean jumpToNetworkSettingPage() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "jumpToNetworkSettingPage networkApiAidl == null");
            return false;
        }
        e();
        try {
            return aVar.d();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public int getActiveNetworkType() {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_getActiveNetworkType_supported) {
            throw new FeatureNotSupportedException("getActiveNetworkType");
        }
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getActiveNetworkType networkApiAidl == null");
            return -1;
        }
        e();
        try {
            return aVar.e();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public void registerOnActiveNetworkTypeChangeListener(PALNetworkManager.OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener) {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_registerOnActiveNetworkTypeChangeListener_unregisterOnActiveNetworkTypeChangeListener_supported) {
            throw new FeatureNotSupportedException("registerOnActiveNetworkTypeChangeListener");
        }
        if (onActiveNetworkTypeChangeListener == null) {
            Log.w(f87a, "registerOnActiveNetworkTypeChangeListener listener is null");
            return;
        }
        if (this.c.contains(onActiveNetworkTypeChangeListener)) {
            return;
        }
        synchronized (this.c) {
            if (!this.c.contains(onActiveNetworkTypeChangeListener) && this.c.add(onActiveNetworkTypeChangeListener) && this.c.size() == 1) {
                g();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public void unregisterOnActiveNetworkTypeChangeListener(PALNetworkManager.OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener) {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_registerOnActiveNetworkTypeChangeListener_unregisterOnActiveNetworkTypeChangeListener_supported) {
            throw new FeatureNotSupportedException("unregisterOnActiveNetworkTypeChangeListener");
        }
        if (onActiveNetworkTypeChangeListener == null) {
            Log.w(f87a, "unregisterOnActiveNetworkTypeChangeListener listener is null");
            return;
        }
        synchronized (this.c) {
            if (this.c.remove(onActiveNetworkTypeChangeListener) && this.c.size() == 0) {
                h();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public boolean isNetworkAvailable() {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_isNetworkAvailable_supported) {
            throw new FeatureNotSupportedException("isNetworkAvailable");
        }
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "isNetworkAvailable networkApiAidl == null");
            return false;
        }
        e();
        try {
            return aVar.f();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public void registerOnNetworkAvailabilityChangeListener(PALNetworkManager.OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener) {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_registerOnNetworkAvailabilityChangeListener_unregisterOnNetworkAvailabilityChangeListener_supported) {
            throw new FeatureNotSupportedException("registerOnNetworkAvailabilityChangeListener");
        }
        if (onNetworkAvailabilityChangeListener == null) {
            Log.w(f87a, "registerOnNetworkAvailabilityChangeListener listener is null");
            return;
        }
        if (this.d.contains(onNetworkAvailabilityChangeListener)) {
            return;
        }
        synchronized (this.d) {
            if (!this.d.contains(onNetworkAvailabilityChangeListener) && this.d.add(onNetworkAvailabilityChangeListener) && this.d.size() == 1) {
                i();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public void unregisterOnNetworkAvailabilityChangeListener(PALNetworkManager.OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener) {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_registerOnNetworkAvailabilityChangeListener_unregisterOnNetworkAvailabilityChangeListener_supported) {
            throw new FeatureNotSupportedException("unregisterOnNetworkAvailabilityChangeListener");
        }
        if (onNetworkAvailabilityChangeListener == null) {
            Log.w(f87a, "unregisterOnNetworkAvailabilityChangeListener listener is null");
            return;
        }
        synchronized (this.d) {
            if (this.d.remove(onNetworkAvailabilityChangeListener) && this.d.size() == 0) {
                j();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public float getNetworkSignalStrength(int i) {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_getNetworkSignalStrength_supported) {
            throw new FeatureNotSupportedException("getNetworkSignalStrength");
        }
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "getNetworkSignalStrength networkApiAidl == null");
            return 0.0f;
        }
        e();
        try {
            return aVar.a(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public void registerOnNetworkSignalStrengthChangeListener(PALNetworkManager.OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener) {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_registerOnNetworkSignalStrengthChangeListener_unregisterOnNetworkSignalStrengthChangeListener_supported) {
            throw new FeatureNotSupportedException("registerOnNetworkSignalStrengthChangeListener");
        }
        if (onNetworkSignalStrengthChangeListener == null) {
            Log.w(f87a, "registerOnNetworkSignalStrengthChangeListener listener is null");
            return;
        }
        if (this.e.contains(onNetworkSignalStrengthChangeListener)) {
            return;
        }
        synchronized (this.e) {
            if (!this.e.contains(onNetworkSignalStrengthChangeListener) && this.e.add(onNetworkSignalStrengthChangeListener) && this.e.size() == 1) {
                k();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALNetworkManager
    public void unregisterOnNetworkSignalStrengthChangeListener(PALNetworkManager.OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener) {
        PlatformSupportInfo b = b();
        if (b == null || !b.network_registerOnNetworkSignalStrengthChangeListener_unregisterOnNetworkSignalStrengthChangeListener_supported) {
            throw new FeatureNotSupportedException("unregisterOnNetworkSignalStrengthChangeListener");
        }
        if (onNetworkSignalStrengthChangeListener == null) {
            Log.w(f87a, "unregisterOnNetworkSignalStrengthChangeListener listener is null");
            return;
        }
        synchronized (this.e) {
            if (this.e.remove(onNetworkSignalStrengthChangeListener) && this.e.size() == 0) {
                l();
            }
        }
    }

    private void g() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteANTCListener networkApiAidl == null");
            return;
        }
        try {
            aVar.a(this.f);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void h() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteANTCListener networkApiAidl == null");
            return;
        }
        try {
            aVar.b(this.f);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void i() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteNACListener networkApiAidl == null");
            return;
        }
        try {
            aVar.a(this.g);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void j() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteNACListener networkApiAidl == null");
            return;
        }
        try {
            aVar.b(this.g);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void k() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "registerRemoteNSSCListener networkApiAidl == null");
            return;
        }
        try {
            aVar.a(this.h);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void l() {
        com.tencent.tai.pal.network.a aVar = this.b;
        if (aVar == null) {
            Log.i(SDKConstants.TAG, "unregisterRemoteNSSCListener networkApiAidl == null");
            return;
        }
        try {
            aVar.b(this.h);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }
}
