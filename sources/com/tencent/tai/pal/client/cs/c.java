package com.tencent.tai.pal.client.cs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.VersionInfo;
import com.tencent.tai.pal.b;
import com.tencent.tai.pal.client.PALServiceManager;
import com.tencent.tai.pal.client.cs.a.f;
import com.tencent.tai.pal.client.cs.b;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ServiceManager.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class c implements com.tencent.tai.pal.client.a, b.a {
    private Timer i;

    /* renamed from: a, reason: collision with root package name */
    private final CopyOnWriteArrayList<PALServiceManager.ManagerStateListener> f105a = new CopyOnWriteArrayList<>();
    private final Map<Class, a> b = new ConcurrentHashMap();
    private final b c = new b(this);
    private final Object d = new Object();
    private final f e = new f();
    private volatile PlatformSupportInfo f = null;
    private volatile Context g = null;
    private volatile com.tencent.tai.pal.b h = null;
    private volatile boolean j = false;
    private volatile int k = 0;
    private int l = 0;
    private final Runnable m = new Runnable() { // from class: com.tencent.tai.pal.client.cs.c.1
        @Override // java.lang.Runnable
        public void run() {
            int e = c.this.e();
            Log.i(SDKConstants.TAG, "PALServiceManager.mBindServiceRunnable status=" + c.b(e));
            if (e == 0) {
                c.this.f();
            }
        }
    };
    private final BroadcastReceiver n = new BroadcastReceiver() { // from class: com.tencent.tai.pal.client.cs.ServiceManager$2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent == null ? null : intent.getAction();
            Log.i(SDKConstants.TAG, "PALServiceManager.onReceive action=" + action + " packageName=" + (intent != null ? intent.getStringExtra(SDKConstants.KEY_PACKAGE_NAME) : null));
            if (SDKConstants.ACTION_SERVICE_CREATE_BROADCAST.equals(action) && c.this.e() == 0) {
                c.this.a(0L);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i) {
        switch (i) {
            case 0:
                return "STATUS_DISCONNECTED";
            case 1:
                return "STATUS_CONNECTING";
            case 2:
                return "STATUS_CONNECTED";
            default:
                return "STATUS_UNKNOWN";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int e() {
        return this.k;
    }

    @Override // com.tencent.tai.pal.client.a
    public void a(final PALServiceManager.ManagerStateListener managerStateListener) {
        if (managerStateListener != null && !this.f105a.contains(managerStateListener)) {
            this.f105a.add(managerStateListener);
        }
        if (!a() || managerStateListener == null) {
            return;
        }
        com.tencent.tai.pal.util.a.a(new Runnable() { // from class: com.tencent.tai.pal.client.cs.c.2
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.a()) {
                    Log.i(SDKConstants.TAG, "registerManagerStateListenerInner runOnUiThread isServiceConnected==true");
                    managerStateListener.onConnected(c.this.b());
                } else {
                    Log.e(SDKConstants.TAG, "registerManagerStateListenerInner runOnUiThread isServiceConnected==false");
                }
            }
        });
    }

    @Override // com.tencent.tai.pal.client.a
    public void b(PALServiceManager.ManagerStateListener managerStateListener) {
        this.f105a.remove(managerStateListener);
    }

    @Override // com.tencent.tai.pal.client.a
    public boolean a() {
        return e() == 2;
    }

    @Override // com.tencent.tai.pal.client.a
    public void a(Context context, PALServiceManager.ManagerStateListener managerStateListener) throws RuntimeException {
        Log.i(SDKConstants.TAG, "ServiceManager init context=" + context + " listener=" + managerStateListener + " mInitialized=" + this.j);
        a(managerStateListener);
        if (this.j) {
            return;
        }
        this.g = context.getApplicationContext();
        i();
        f();
        j();
        this.j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            if (!this.c.a(this.g)) {
                c(4);
            } else {
                g();
            }
        } catch (Exception e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            c(3);
        }
    }

    private void c(int i) {
        String str;
        if (this.l != 0 && this.l % 10 == 0) {
            switch (i) {
                case 3:
                    str = "绑定服务异常（系统中无法找到相关服务）";
                    break;
                case 4:
                    str = "绑定服务返回错误（一般是因为无法关联启动）";
                    break;
                default:
                    str = "未知错误";
                    break;
            }
            Toast.makeText(this.g, "PAL适配错误：" + str, 1).show();
        }
        this.k = 0;
        int i2 = this.l + 1;
        this.l = i2;
        if (i2 > 30) {
            this.l = 30;
            d(i);
        } else {
            a(1000L);
        }
    }

    private void g() {
        this.k = 1;
        this.l = 0;
    }

    private Context h() {
        return this.g;
    }

    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4, types: [T] */
    @Override // com.tencent.tai.pal.client.a
    public <T> T a(Class<T> cls) throws IllegalStateException, IllegalArgumentException {
        a aVar;
        if (!a()) {
            throw new IllegalStateException("ServiceManager not connected!");
        }
        if (cls == null) {
            throw new IllegalArgumentException("illegal argument! serviceClass=null");
        }
        boolean z = (T) ((a) this.b.get(cls));
        ?? r0 = z;
        if (!z) {
            synchronized (this.b) {
                a aVar2 = this.b.get(cls);
                aVar = aVar2;
                if (aVar2 == null) {
                    a aVar3 = (T) this.e.a(h(), cls);
                    if (a()) {
                        try {
                            aVar3.a(true, a(aVar3.c(), aVar3.d()), this.f);
                        } catch (Exception e) {
                            Log.e(SDKConstants.TAG, "exception caught", e);
                            e.printStackTrace();
                        }
                    }
                    this.b.put(cls, aVar3);
                    aVar = aVar3;
                }
            }
            r0 = aVar;
        }
        return (T) r0;
    }

    @Override // com.tencent.tai.pal.client.a
    public String c() {
        return this.c.b();
    }

    @Override // com.tencent.tai.pal.client.a
    public PlatformSupportInfo b() {
        return this.f;
    }

    private IBinder a(String str, String str2) throws RemoteException, IllegalStateException {
        IBinder a2;
        if (!a()) {
            throw new IllegalStateException("ServiceManager not connected! binder is null!");
        }
        synchronized (this.d) {
            if (this.h != null) {
                a2 = this.h.a(str, str2);
            } else {
                throw new IllegalStateException("ServiceManager not connected! binder is null!");
            }
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final int i) {
        Iterator<PALServiceManager.ManagerStateListener> it = this.f105a.iterator();
        while (it.hasNext()) {
            final PALServiceManager.ManagerStateListener next = it.next();
            if (next != null) {
                com.tencent.tai.pal.util.a.a(new Runnable() { // from class: com.tencent.tai.pal.client.cs.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        next.onError(i);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z, final PlatformSupportInfo platformSupportInfo) {
        Iterator<PALServiceManager.ManagerStateListener> it = this.f105a.iterator();
        while (it.hasNext()) {
            final PALServiceManager.ManagerStateListener next = it.next();
            if (next != null) {
                com.tencent.tai.pal.util.a.a(new Runnable() { // from class: com.tencent.tai.pal.client.cs.c.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (c.this.a() != z) {
                            return;
                        }
                        if (z) {
                            next.onConnected(platformSupportInfo);
                        } else {
                            next.onDisconnected();
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        for (a aVar : this.b.values()) {
            if (aVar != null) {
                if (z) {
                    try {
                        aVar.a(true, a(aVar.c(), aVar.d()), this.f);
                    } catch (Exception e) {
                        Log.e(SDKConstants.TAG, "exception caught", e);
                        e.printStackTrace();
                    }
                } else {
                    aVar.a(false, null, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        Log.e(SDKConstants.TAG, "PALServiceManager.doVersionMatch server version:" + str + " local client version:" + VersionInfo.getLocalVersion().toString());
        if (!TextUtils.isEmpty(str)) {
            VersionInfo fromJsonString = VersionInfo.fromJsonString(str);
            VersionInfo.setRemoteVersion(fromJsonString);
            if (fromJsonString != null) {
                int majorVersion = fromJsonString.getMajorVersion();
                int majorVersion2 = VersionInfo.getLocalVersion().getMajorVersion();
                VersionInfo palAdapterVersion = VersionInfo.getPalAdapterVersion(this.g);
                if (palAdapterVersion != null) {
                    Log.i(SDKConstants.TAG, "pal adapter version : " + palAdapterVersion.getVersionName());
                    if (palAdapterVersion.getMajorVersion() != majorVersion2 || palAdapterVersion.getFeatureVersion() != VersionInfo.getLocalVersion().getFeatureVersion()) {
                        throw new RuntimeException("pal adapter version != local version");
                    }
                    Log.i(SDKConstants.TAG, "pal adapter version ==  local version");
                }
                if (majorVersion < majorVersion2) {
                    return majorVersion != 2 && majorVersion >= 0;
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.tencent.tai.pal.client.cs.b.a
    public void a(final IBinder iBinder) {
        Log.e(SDKConstants.TAG, "PALServiceManager.onServiceConnected");
        com.tencent.tai.pal.util.a.b(new Runnable() { // from class: com.tencent.tai.pal.client.cs.c.5
            @Override // java.lang.Runnable
            public void run() {
                synchronized (c.this.d) {
                    c.this.h = b.a.a(iBinder);
                    try {
                        String a2 = c.this.h.a(VersionInfo.getLocalVersion().toString());
                        String a3 = c.this.h.a();
                        if (!c.this.a(a2)) {
                            Log.e(SDKConstants.TAG, "PALServiceManager.onServiceConnected  versionMatch failed");
                            c.this.h = null;
                            c.this.k = 0;
                            c.this.d(1);
                            c.this.c.a();
                            return;
                        }
                        c.this.f = PlatformSupportInfo.fromJson(a3);
                        c.this.a(c.this.f);
                        c.this.k = 2;
                        c.this.a(true);
                        c.this.a(true, c.this.f);
                    } catch (Exception e) {
                        Log.e(SDKConstants.TAG, "exception caught", e);
                        e.printStackTrace();
                        c.this.h = null;
                        c.this.k = 0;
                        c.this.d(2);
                        c.this.c.a();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(PlatformSupportInfo platformSupportInfo) {
        VersionInfo remoteVersion = VersionInfo.getRemoteVersion();
        if (remoteVersion == null || remoteVersion.getMajorVersion() != 0) {
            return;
        }
        platformSupportInfo.audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported |= platformSupportInfo.audio_notifyStreamMuteStateChanged_supported || platformSupportInfo.audio_notifyStreamVolumeChanged_supported;
        platformSupportInfo.bluetooth_registerOnDeviceConnectionStateChange_unregisterOnDeviceConnectionStateChange_supported |= platformSupportInfo.bluetooth_notifyDeviceConnectionStateChange_supported;
        platformSupportInfo.cabinKey_registerCabinKeyEventDispatcher_unregisterCabinKeyEventDispatcher_supported |= platformSupportInfo.cabinKey_dispatchKeyEvent_supported || platformSupportInfo.cabinKey_dispatchKeyLongPressEvent_supported;
        platformSupportInfo.ins_registerOnInsInfoChangeListener_unregisterOnInsInfoChangeListener_supported |= platformSupportInfo.ins_notifyAccelerometerInfoChanged_supported || platformSupportInfo.ins_notifyGyroscopeInfoChanged_supported || platformSupportInfo.ins_notifySpeedChanged_supported;
        platformSupportInfo.power_registerOnPowerLevelLowListener_unregisterOnPowerLevelLowListener_supported |= platformSupportInfo.power_notifyPowerLevelLow_supported;
        platformSupportInfo.vehicleBasicInfo_registerOnVehicleBasicInfoListener_unregisterOnVehicleBasicInfoListener_supported |= platformSupportInfo.vehicleBasicInfo_notifyDayNightModeChanged_supported || platformSupportInfo.vehicleBasicInfo_notifyGearChanged_supported || platformSupportInfo.vehicleBasicInfo_notifySeatBeltBuckledChanged_supported;
        platformSupportInfo.vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported |= platformSupportInfo.vehicleBasicInfo_notifySpeedChanged_supported;
        platformSupportInfo.vehicleRichInfo_registerOnDrivingSafetyDisclaimerListener_unregisterOnDrivingSafetyDisclaimerListener_supported |= platformSupportInfo.vehicleRichInfo_notifyDrivingSafetyDisclaimerUpdated_supported;
        platformSupportInfo.vehicleBasicInfo_getChannel_supported = true;
    }

    @Override // com.tencent.tai.pal.client.cs.b.a
    public void d() {
        Log.e(SDKConstants.TAG, "PALServiceManager.onServiceDisconnected");
        com.tencent.tai.pal.util.a.b(new Runnable() { // from class: com.tencent.tai.pal.client.cs.c.6
            @Override // java.lang.Runnable
            public void run() {
                c.this.h = null;
                c.this.k = 0;
                c.this.f = null;
                VersionInfo.setRemoteVersion(null);
                c.this.a(false);
                c.this.a(false, (PlatformSupportInfo) null);
            }
        });
    }

    private void i() {
        this.g.registerReceiver(this.n, new IntentFilter(SDKConstants.ACTION_SERVICE_CREATE_BROADCAST));
    }

    private void j() {
        if (this.i == null) {
            this.i = new Timer("pal-keep-bound-timer");
            this.i.schedule(new TimerTask() { // from class: com.tencent.tai.pal.client.cs.c.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    int e = c.this.e();
                    Log.i(SDKConstants.TAG, "keepBoundTimerTask status=" + c.b(e));
                    if (e == 0) {
                        c.this.a(0L);
                    }
                }
            }, 30000L, 300000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        com.tencent.tai.pal.util.a.a(this.m, j);
    }
}
