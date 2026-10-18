package com.tencent.tai.pal.client.cs.a;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.support.annotation.RequiresApi;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.VersionInfo;
import com.tencent.tai.pal.audio.AudioDefaultImpl;
import com.tencent.tai.pal.audio.b;
import com.tencent.tai.pal.audio.c;
import com.tencent.tai.pal.audio.d;
import com.tencent.tai.pal.client.PALAudioManager;
import com.tencent.tai.pal.exception.FeatureNotSupportedException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AudioManagerImpl.java */
/* loaded from: /home/user/work/dex/classes.dex */
public final class a extends com.tencent.tai.pal.client.cs.a implements PALAudioManager {

    /* renamed from: a, reason: collision with root package name */
    private com.tencent.tai.pal.audio.b f73a;
    private final Object b;
    private List<PALAudioManager.StreamVolumeListener> c;
    private volatile AudioDefaultImpl d;
    private final Object e;
    private d.a f;
    private final HashMap<String, b> g;
    private final HashMap<AudioManager.OnAudioFocusChangeListener, b> h;
    private final Object i;
    private final C0021a j;
    private final com.tencent.tai.pal.audio.c k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context) {
        super(context, SDKConstants.SERVICE_AUDIO, null);
        this.b = new Object();
        this.c = new CopyOnWriteArrayList();
        this.e = new Object();
        this.f = new d.a() { // from class: com.tencent.tai.pal.client.cs.a.a.1
            @Override // com.tencent.tai.pal.audio.d
            public void a(int i, boolean z) throws RemoteException {
                for (PALAudioManager.StreamVolumeListener streamVolumeListener : a.this.c) {
                    if (streamVolumeListener != null) {
                        streamVolumeListener.onStreamMuteStateChanged(i, z);
                    }
                }
            }

            @Override // com.tencent.tai.pal.audio.d
            public void a(int i, int i2) throws RemoteException {
                for (PALAudioManager.StreamVolumeListener streamVolumeListener : a.this.c) {
                    if (streamVolumeListener != null) {
                        streamVolumeListener.onStreamVolumeChanged(i, i2);
                    }
                }
            }
        };
        this.g = new HashMap<>();
        this.h = new HashMap<>();
        this.i = new Object();
        this.j = new C0021a();
        this.k = new c.a() { // from class: com.tencent.tai.pal.client.cs.a.a.2
            @Override // com.tencent.tai.pal.audio.c
            public void a(int i, String str) {
                a.this.j.a().sendMessage(a.this.j.a().obtainMessage(i, str));
            }
        };
    }

    private AudioDefaultImpl g() {
        if (this.d == null) {
            synchronized (this.e) {
                if (this.d == null) {
                    this.d = new AudioDefaultImpl(a());
                }
            }
        }
        return this.d;
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public void registerStreamVolumeListener(PALAudioManager.StreamVolumeListener streamVolumeListener) {
        if (streamVolumeListener == null) {
            Log.w("AudioManagerImpl", "registerStreamVolumeListener listener is null");
            return;
        }
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported) {
            g().a(streamVolumeListener);
            return;
        }
        if (this.c.contains(streamVolumeListener)) {
            return;
        }
        synchronized (this.b) {
            if (!this.c.contains(streamVolumeListener) && this.c.add(streamVolumeListener) && this.c.size() == 1) {
                h();
            }
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public void unregisterStreamVolumeListener(PALAudioManager.StreamVolumeListener streamVolumeListener) {
        if (streamVolumeListener == null) {
            Log.w("AudioManagerImpl", "unregisterStreamVolumeListener listener is null");
            return;
        }
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported) {
            g().b(streamVolumeListener);
            return;
        }
        synchronized (this.b) {
            if (this.c.remove(streamVolumeListener) && this.c.size() == 0) {
                i();
            }
        }
    }

    private void h() {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "registerStreamVolumeListener service not connect");
            return;
        }
        try {
            bVar.a(this.f);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    private void i() {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "unregisterStreamVolumeListener service not connect");
            return;
        }
        try {
            bVar.b(this.f);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void a(IBinder iBinder) {
        this.f73a = b.a.a(iBinder);
        if (this.c == null || this.c.size() <= 0) {
            return;
        }
        h();
    }

    @Override // com.tencent.tai.pal.client.cs.a
    protected void f() {
        i();
        this.f73a = null;
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int getStreamType(int i) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getStreamType service not connect");
            return -1;
        }
        e();
        try {
            if (i == 1000) {
                VersionInfo remoteVersion = VersionInfo.getRemoteVersion();
                if (remoteVersion != null && remoteVersion.compareTo(com.tencent.tai.pal.c.b) < 0) {
                    Log.e(SDKConstants.TAG, "versionInfo.compareTo(VersionCompat.VERSION_TX_IM_RING) < 0");
                    Log.e(SDKConstants.TAG, "force cast TX_IM_RING to TX_NOTIFICATION");
                    i = 80;
                }
            } else if (i == 60) {
                Log.e(SDKConstants.TAG, "force cast TX_NAVI_GUIDANCE_L1 to TX_NAVI_GUIDANCE_L2");
                i = 50;
            }
            return bVar.a(i);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public boolean shouldUseAudioAttributes() {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "shouldUseAudioAttributes service not connect");
            return Build.VERSION.SDK_INT >= 21;
        }
        e();
        try {
            VersionInfo remoteVersion = VersionInfo.getRemoteVersion();
            if (remoteVersion != null && remoteVersion.compareTo(com.tencent.tai.pal.c.c) >= 0) {
                boolean a2 = bVar.a();
                Log.i(SDKConstants.TAG, "shouldUseAudioAttributes supported. result=" + a2);
                return a2;
            }
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
        boolean z = Build.VERSION.SDK_INT >= 21;
        Log.i(SDKConstants.TAG, "shouldUseAudioAttributes default result=" + z);
        return z;
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    @RequiresApi(api = 21)
    public AudioAttributes getAudioAttributes(int i, String str) {
        if (str != null && !str.matches("[a-zA-Z]+([_a-zA-Z]*[a-zA-Z]+)?")) {
            throw new IllegalArgumentException("illegal argument tag=" + str);
        }
        if (TextUtils.isEmpty(str)) {
            try {
                str = "TAG_" + a().getPackageName().replace('.', '_');
            } catch (Exception e) {
                e.printStackTrace();
                str = null;
            }
        }
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getAudioAttributes service not connect");
            return null;
        }
        e();
        try {
            VersionInfo remoteVersion = VersionInfo.getRemoteVersion();
            if (remoteVersion != null && remoteVersion.compareTo(com.tencent.tai.pal.c.e) >= 0) {
                AudioAttributes a2 = bVar.a(i, str);
                Log.i(SDKConstants.TAG, "getAudioAttributes supported. tx_stream=" + i + " result=" + a2);
                return a2;
            }
        } catch (RemoteException e2) {
            Log.e(SDKConstants.TAG, "exception caught", e2);
            e2.printStackTrace();
        }
        AudioAttributes a3 = com.tencent.tai.pal.audio.a.a(i);
        Log.i(SDKConstants.TAG, "getAudioAttributes default tx_stream=" + i + " result=" + a3);
        return a3;
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public boolean isStreamMute(int i) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "isStreamMute service not connect");
            return false;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_isStreamMute_supported) {
            return g().a(i);
        }
        try {
            return bVar.b(i);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int getStreamMaxVolume(int i) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getStreamMaxVolume service not connect");
            return -1;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_getStreamMaxVolume_supported) {
            return g().b(i);
        }
        try {
            return bVar.d(i);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int adjustStreamVolume(int i, int i2, int i3) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "adjustStreamVolume service not connect");
            return 0;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_adjustStreamVolume_supported) {
            return g().a(i, i2, i3);
        }
        try {
            return bVar.a(i, i2, i3);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int adjustVolume(int i, int i2) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "adjustVolume service not connect");
            return 0;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_adjustVolume_supported) {
            return g().a(i, i2);
        }
        try {
            return bVar.a(i, i2);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int adjustAllVolume(int i, int i2, int i3) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "adjustAllVolume service not connect");
            return 0;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_adjustAllVolume_supported) {
            throw new FeatureNotSupportedException("PALAudioManager.adjustAllVolume");
        }
        try {
            return bVar.b(i, i2, i3);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int getCurrentActiveStream() {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getCurrentActiveStream service not connect");
            return 0;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_getCurrentActiveStream_supported) {
            throw new FeatureNotSupportedException("PALAudioManager.getCurrentActiveStream");
        }
        try {
            return bVar.b();
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int setStreamVolume(int i, int i2) {
        return setStreamVolume(i, i2, 0);
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int setStreamVolume(int i, int i2, int i3) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "setStreamVolume service not connect");
            return 2;
        }
        e();
        VersionInfo remoteVersion = VersionInfo.getRemoteVersion();
        if (remoteVersion == null) {
            return 2;
        }
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_setStreamVolume_supported) {
            return g().b(i, i2, i3);
        }
        try {
            if (remoteVersion.compareTo(com.tencent.tai.pal.c.f) >= 0) {
                return bVar.c(i, i2, i3);
            }
            if (remoteVersion.compareTo(com.tencent.tai.pal.c.f62a) >= 0) {
                return bVar.c(i, i2);
            }
            bVar.b(i, i2);
            return 1;
        } catch (RemoteException e) {
            e.printStackTrace();
            return 2;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int getStreamVolume(int i) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "getStreamVolume service not connect");
            return -1;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_getStreamVolume_supported) {
            return g().c(i);
        }
        try {
            return bVar.c(i);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
            return -1;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public void onAudioEvent(int i, int i2) {
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "onAudioEvent service not connect");
            return;
        }
        e();
        try {
            bVar.d(i, i2);
        } catch (RemoteException e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioManagerImpl.java */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private AudioManager.OnAudioFocusChangeListener f78a;
        private String b;

        private b(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, String str) {
            this.f78a = onAudioFocusChangeListener;
            this.b = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i) {
            this.f78a.onAudioFocusChange(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b a(String str) {
        return this.g.get(str);
    }

    /* compiled from: AudioManagerImpl.java */
    /* renamed from: com.tencent.tai.pal.client.cs.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    private class C0021a {
        private final Handler b;

        C0021a() {
            this.b = new Handler(Looper.getMainLooper()) { // from class: com.tencent.tai.pal.client.cs.a.a.a.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    b a2;
                    synchronized (a.this.i) {
                        a2 = a.this.a((String) message.obj);
                    }
                    if (a2 != null) {
                        a2.a(message.what);
                    }
                }
            };
        }

        Handler a() {
            return this.b;
        }
    }

    private String a(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append(toString());
        sb.append(onAudioFocusChangeListener.toString());
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = "-" + str;
        }
        sb.append(str2);
        return sb.toString();
    }

    private b b(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, String str) {
        synchronized (this.i) {
            if (this.h.containsKey(onAudioFocusChangeListener)) {
                return this.h.get(onAudioFocusChangeListener);
            }
            String a2 = a(onAudioFocusChangeListener, str);
            b bVar = new b(onAudioFocusChangeListener, str);
            this.g.put(a2, bVar);
            this.h.put(onAudioFocusChangeListener, bVar);
            return bVar;
        }
    }

    private b a(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        b remove;
        synchronized (this.i) {
            if (!this.h.containsKey(onAudioFocusChangeListener) || (remove = this.h.remove(onAudioFocusChangeListener)) == null) {
                return null;
            }
            return this.g.remove(a(remove.f78a, remove.b));
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int requestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2) {
        return requestAudioFocus(onAudioFocusChangeListener, i, i2, null);
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int requestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2, String str) {
        if (onAudioFocusChangeListener == null) {
            throw new IllegalArgumentException("illegal null listener.");
        }
        if (str != null && !str.matches("[a-zA-Z]+([_a-zA-Z]*[a-zA-Z]+)?")) {
            throw new IllegalArgumentException("illegal argument tag=" + str);
        }
        if (TextUtils.isEmpty(str)) {
            try {
                str = "TAG_" + a().getPackageName().replace('.', '_');
            } catch (Exception e) {
                e.printStackTrace();
                str = null;
            }
        }
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "requestAudioFocus service not connect");
            return 0;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_requestAudioFocus_abandonAudioFocus_supported) {
            return g().a(onAudioFocusChangeListener, i, i2);
        }
        b b3 = b(onAudioFocusChangeListener, str);
        try {
            return bVar.a(i, i2, this.k, a(b3.f78a, b3.b), "" + Process.myPid());
        } catch (RemoteException e2) {
            Log.e(SDKConstants.TAG, "exception caught", e2);
            e2.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int abandonAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        if (onAudioFocusChangeListener == null) {
            throw new IllegalArgumentException("illegal null listener.");
        }
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "abandonAudioFocus service not connect");
            return 0;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_requestAudioFocus_abandonAudioFocus_supported) {
            return g().a(onAudioFocusChangeListener);
        }
        b a2 = a(onAudioFocusChangeListener);
        if (a2 != null) {
            try {
                return bVar.a(this.k, a(a2.f78a, a2.b));
            } catch (RemoteException e) {
                Log.e(SDKConstants.TAG, "exception caught", e);
                e.printStackTrace();
            }
        }
        return 0;
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int requestMicFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2) {
        return requestMicFocus(onAudioFocusChangeListener, i, i2, null);
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int requestMicFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2, String str) {
        if (onAudioFocusChangeListener == null) {
            throw new IllegalArgumentException("illegal null listener.");
        }
        if (str != null && !str.matches("[a-zA-Z]+([_a-zA-Z]*[a-zA-Z]+)?")) {
            throw new IllegalArgumentException("illegal argument tag=" + str);
        }
        if (TextUtils.isEmpty(str)) {
            try {
                str = "TAG_" + a().getPackageName().replace('.', '_');
            } catch (Exception e) {
                e.printStackTrace();
                str = null;
            }
        }
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "requestMicFocus service not connect");
            return 0;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 == null || !b2.audio_supported || !b2.audio_requestMicFocus_abandonMicFocus_supported) {
            return 0;
        }
        b b3 = b(onAudioFocusChangeListener, str);
        String str2 = "" + Process.myPid();
        if (i == 230) {
            try {
                VersionInfo remoteVersion = VersionInfo.getRemoteVersion();
                if (remoteVersion != null && remoteVersion.compareTo(com.tencent.tai.pal.c.h) < 0) {
                    Log.e(SDKConstants.TAG, "versionInfo.compareTo(VersionCompat.TX_MIC_IM_VR) < 0");
                    Log.e(SDKConstants.TAG, "force cast TX_MIC_IM_VR to TX_MIC_VOIP");
                    i = 200;
                }
            } catch (RemoteException e2) {
                Log.e(SDKConstants.TAG, "exception caught", e2);
                e2.printStackTrace();
                return 0;
            }
        }
        return bVar.b(i, i2, this.k, a(b3.f78a, b3.b), str2);
    }

    @Override // com.tencent.tai.pal.client.PALAudioManager
    public int abandonMicFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        b a2;
        if (onAudioFocusChangeListener == null) {
            throw new IllegalArgumentException("illegal null listener.");
        }
        com.tencent.tai.pal.audio.b bVar = this.f73a;
        if (bVar == null) {
            Log.i(SDKConstants.TAG, "abandonMicFocus service not connect");
            return 0;
        }
        e();
        PlatformSupportInfo b2 = b();
        if (b2 != null && b2.audio_supported && b2.audio_requestMicFocus_abandonMicFocus_supported && (a2 = a(onAudioFocusChangeListener)) != null) {
            try {
                return bVar.b(this.k, a(a2.f78a, a2.b));
            } catch (RemoteException e) {
                Log.e(SDKConstants.TAG, "exception caught", e);
                e.printStackTrace();
            }
        }
        return 0;
    }
}
