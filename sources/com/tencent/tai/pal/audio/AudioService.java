package com.tencent.tai.pal.audio;

import android.media.AudioAttributes;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.audio.AudioAdapter;
import com.tencent.tai.pal.audio.b;
import com.tencent.tai.pal.service.BaseAdapter;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioService extends b.a implements com.tencent.tai.pal.service.a {

    /* renamed from: a, reason: collision with root package name */
    private AudioAdapter f49a;
    private boolean b = false;
    private AudioAdapter.OnStreamVolumeChangeListener c = new AudioAdapter.OnStreamVolumeChangeListener() { // from class: com.tencent.tai.pal.audio.AudioService.1
        @Override // com.tencent.tai.pal.audio.AudioAdapter.OnStreamVolumeChangeListener
        public void onStreamVolumeChange(int i, int i2) {
            AudioService.this.e(i, i2);
        }

        @Override // com.tencent.tai.pal.audio.AudioAdapter.OnStreamVolumeChangeListener
        public void onStreamMuteStateChange(int i, boolean z) {
            AudioService.this.a(i, z);
        }
    };
    private final RemoteCallbackList<d> d = new RemoteCallbackList<>();
    private HashMap<String, OnAudioFocusChangeProxy> e = new HashMap<>();
    private final Object f = new Object();

    @Override // com.tencent.tai.pal.service.a
    public IBinder c() {
        return this;
    }

    @Override // com.tencent.tai.pal.audio.b
    public void d(int i, int i2) throws RemoteException {
    }

    @Override // com.tencent.tai.pal.audio.b
    public void a(d dVar) throws RemoteException {
        Log.i(SDKConstants.TAG, "AudioService:registerStreamVolumeListener callback: " + dVar);
        synchronized (this.d) {
            this.d.register(dVar);
            int registeredCallbackCount = this.d.getRegisteredCallbackCount();
            if (!this.b && registeredCallbackCount > 0 && this.f49a != null) {
                this.f49a.registerOnStreamVolumeChangeListener(this.c);
                this.b = true;
            }
        }
    }

    @Override // com.tencent.tai.pal.audio.b
    public void b(d dVar) throws RemoteException {
        Log.i(SDKConstants.TAG, "AudioService:unregisterStreamVolumeListener callback: " + dVar);
        synchronized (this.d) {
            this.d.unregister(dVar);
            if (this.d.getRegisteredCallbackCount() == 0 && this.b && this.f49a != null) {
                this.f49a.unregisterOnStreamVolumeChangeListener(this.c);
                this.b = false;
            }
        }
    }

    @Override // com.tencent.tai.pal.audio.b
    public int a(int i) throws RemoteException {
        if (this.f49a == null) {
            Log.e(SDKConstants.TAG, "AudioService:getStreamType mAdapter null return -1 by default type=" + i);
            return -1;
        }
        int streamType = this.f49a.getStreamType(i);
        Log.i(SDKConstants.TAG, "AudioService:getStreamType type=" + i + " return systemType=" + streamType);
        return streamType;
    }

    @Override // com.tencent.tai.pal.audio.b
    public boolean b(int i) throws RemoteException {
        if (this.f49a == null) {
            Log.e(SDKConstants.TAG, "AudioService:isStreamMute mAdapter null return false by default type=" + i);
            return false;
        }
        boolean isStreamMute = this.f49a.isStreamMute(i);
        Log.i(SDKConstants.TAG, "AudioService:isStreamMute type=" + i + " return mute=" + isStreamMute);
        return isStreamMute;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int a(int i, int i2, int i3) throws RemoteException {
        if (this.f49a == null) {
            return -1;
        }
        int adjustStreamVolume = this.f49a.adjustStreamVolume(i, i2, i3);
        Log.i(SDKConstants.TAG, "AudioService:adjustStreamVolume streamType=" + i + " direction=" + i2 + " flags=" + i3 + " result=" + adjustStreamVolume);
        return adjustStreamVolume;
    }

    @Override // com.tencent.tai.pal.audio.b
    public boolean a() throws RemoteException {
        boolean shouldUseAudioAttributes = this.f49a.shouldUseAudioAttributes();
        Log.i(SDKConstants.TAG, "AudioService:shouldUseAudioAttributes result=" + shouldUseAudioAttributes);
        return shouldUseAudioAttributes;
    }

    @Override // com.tencent.tai.pal.audio.b
    public AudioAttributes a(int i, String str) throws RemoteException {
        AudioAttributes audioAttributes = this.f49a.getAudioAttributes(i, str);
        Log.i(SDKConstants.TAG, "AudioService:getAudioAttributes tx_stream=" + i + " result=" + audioAttributes);
        return audioAttributes;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int b(int i, int i2, int i3) throws RemoteException {
        if (this.f49a == null) {
            return -1;
        }
        int adjustAllVolume = this.f49a.adjustAllVolume(i, i2, i3);
        Log.i(SDKConstants.TAG, "AudioService:adjustAllVolume direction=" + i + " flags=" + i2 + " volume=" + i3 + " result=" + adjustAllVolume);
        return adjustAllVolume;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int a(int i, int i2) throws RemoteException {
        if (this.f49a == null) {
            return -1;
        }
        int adjustVolume = this.f49a.adjustVolume(i, i2);
        Log.i(SDKConstants.TAG, "AudioService:adjustVolume direction=" + i + " flags=" + i2 + " result=" + adjustVolume);
        return adjustVolume;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int b() throws RemoteException {
        if (this.f49a == null) {
            return -1;
        }
        int currentActiveStream = this.f49a.getCurrentActiveStream();
        Log.i(SDKConstants.TAG, "AudioService:getCurrentActiveStream result=" + currentActiveStream);
        return currentActiveStream;
    }

    @Override // com.tencent.tai.pal.audio.b
    public void b(int i, int i2) throws RemoteException {
        if (this.f49a == null) {
            Log.e(SDKConstants.TAG, "AudioService:setStreamVolume mAdapter null return type=" + i);
            return;
        }
        Log.i(SDKConstants.TAG, "AudioService:setStreamVolume type=" + i + " volume=" + i2);
        this.f49a.setStreamVolume(i, i2, 0);
    }

    @Override // com.tencent.tai.pal.audio.b
    public int c(int i, int i2) throws RemoteException {
        if (this.f49a == null) {
            Log.e(SDKConstants.TAG, "AudioService:setStreamVolumeWithResult mAdapter null return type=" + i);
            return -1;
        }
        int streamVolume = this.f49a.setStreamVolume(i, i2, 0);
        Log.i(SDKConstants.TAG, "AudioService:setStreamVolumeWithResult type=" + i + " volume=" + i2 + " result=" + streamVolume);
        return streamVolume;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int c(int i, int i2, int i3) throws RemoteException {
        if (this.f49a == null) {
            Log.e(SDKConstants.TAG, "AudioService:setStreamVolumeWithFlag mAdapter null return type=" + i);
            return -1;
        }
        int streamVolume = this.f49a.setStreamVolume(i, i2, i3);
        Log.i(SDKConstants.TAG, "AudioService:setStreamVolumeWithFlag type=" + i + " volume=" + i2 + " flags=" + i3 + " result=" + streamVolume);
        return streamVolume;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int c(int i) throws RemoteException {
        if (this.f49a == null) {
            Log.e(SDKConstants.TAG, "AudioService:getStreamVolume mAdapter null return -1 by default type=" + i);
            return -1;
        }
        int streamVolume = this.f49a.getStreamVolume(i);
        Log.i(SDKConstants.TAG, "AudioService:getStreamVolume type=" + i + " volume=" + streamVolume);
        return streamVolume;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int d(int i) throws RemoteException {
        if (this.f49a == null) {
            Log.e(SDKConstants.TAG, "AudioService:getStreamMaxVolume mAdapter null return -1 by default type=" + i);
            return -1;
        }
        int streamMaxVolume = this.f49a.getStreamMaxVolume(i);
        Log.i(SDKConstants.TAG, "AudioService:getStreamMaxVolume type=" + i + " volume=" + streamMaxVolume);
        return streamMaxVolume;
    }

    private void a(String str, OnAudioFocusChangeProxy onAudioFocusChangeProxy) {
        this.e.put(str, onAudioFocusChangeProxy);
        Log.i(SDKConstants.TAG, "AudioService.addListenerProxy id=" + str + " size=" + this.e.values().size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OnAudioFocusChangeProxy a(String str) {
        OnAudioFocusChangeProxy remove = this.e.remove(str);
        Log.i(SDKConstants.TAG, "AudioService.removeListenerProxy id=" + str + " size=" + this.e.values().size());
        return remove;
    }

    private OnAudioFocusChangeProxy b(String str) {
        return this.e.get(str);
    }

    @Override // com.tencent.tai.pal.audio.b
    public int a(int i, int i2, c cVar, final String str, String str2) throws RemoteException {
        OnAudioFocusChangeProxy onAudioFocusChangeProxy;
        int i3;
        Log.i(SDKConstants.TAG, "AudioService.requestAudioFocus streamType=" + i + " durationHint=" + i2 + " audioFocusDispatcher=" + cVar + " id=" + str + " processId=" + str2);
        if (TextUtils.isEmpty(str) || cVar == null || !cVar.asBinder().isBinderAlive()) {
            Log.e(SDKConstants.TAG, "AudioService.requestAudioFocus params error, return AudioManager.AUDIOFOCUS_REQUEST_FAILED");
            return 0;
        }
        synchronized (this.f) {
            OnAudioFocusChangeProxy b = b(str);
            if (b == null) {
                try {
                    i3 = Integer.parseInt(str2);
                } catch (Exception e) {
                    e.printStackTrace();
                    i3 = -1;
                }
                onAudioFocusChangeProxy = new OnAudioFocusChangeProxy(i3, str, cVar) { // from class: com.tencent.tai.pal.audio.AudioService.2
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        Log.e(SDKConstants.TAG, "AudioService.requestAudioFocus binderDied() called. remove listener and abandonAudioFocus. id=" + str);
                        synchronized (AudioService.this.f) {
                            AudioService.this.a(str);
                        }
                        AudioService.this.f49a.abandonAudioFocus(this);
                    }
                };
                a(str, onAudioFocusChangeProxy);
                Log.i(SDKConstants.TAG, "AudioService.requestAudioFocus listener not exist. new listener=" + onAudioFocusChangeProxy);
                try {
                    cVar.asBinder().linkToDeath(onAudioFocusChangeProxy, 0);
                    Log.i(SDKConstants.TAG, "AudioService.requestAudioFocus linkToDeath. audioFocusDispatcher=" + cVar);
                } catch (Exception e2) {
                    Log.e(SDKConstants.TAG, "exception caught", e2);
                    e2.printStackTrace();
                }
            } else {
                Log.i(SDKConstants.TAG, "AudioService.requestAudioFocus listener found. listener=" + b);
                onAudioFocusChangeProxy = b;
            }
        }
        int requestAudioFocus = this.f49a.requestAudioFocus(onAudioFocusChangeProxy, i, i2);
        Log.i(SDKConstants.TAG, "AudioService.requestAudioFocus adapter return " + requestAudioFocus);
        return requestAudioFocus;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int a(c cVar, String str) throws RemoteException {
        OnAudioFocusChangeProxy a2;
        Log.i(SDKConstants.TAG, "AudioService.abandonAudioFocus audioFocusDispatcher=" + cVar + " id=" + str);
        synchronized (this.f) {
            a2 = a(str);
        }
        if (a2 == null) {
            Log.e(SDKConstants.TAG, "AudioService.abandonAudioFocus listener not found, return AudioManager.AUDIOFOCUS_REQUEST_FAILED");
            return 0;
        }
        Log.i(SDKConstants.TAG, "AudioService.abandonAudioFocus unlinkToDeath. audioFocusDispatcher=" + cVar);
        try {
            cVar.asBinder().unlinkToDeath(a2, 0);
        } catch (Exception e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
        int abandonAudioFocus = this.f49a.abandonAudioFocus(a2);
        Log.i(SDKConstants.TAG, "AudioService.abandonAudioFocus listener found, return " + abandonAudioFocus + ". listener=" + a2);
        return abandonAudioFocus;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int b(int i, int i2, c cVar, final String str, String str2) throws RemoteException {
        OnAudioFocusChangeProxy onAudioFocusChangeProxy;
        int i3;
        Log.i(SDKConstants.TAG, "AudioService.requestMicFocus micType=" + i + " durationHint=" + i2 + " audioFocusDispatcher=" + cVar + " id=" + str + " processId=" + str2);
        if (TextUtils.isEmpty(str) || cVar == null || !cVar.asBinder().isBinderAlive()) {
            Log.e(SDKConstants.TAG, "AudioService.requestAudioFocus params error, return AudioManager.AUDIOFOCUS_REQUEST_FAILED");
            return 0;
        }
        synchronized (this.f) {
            OnAudioFocusChangeProxy b = b(str);
            if (b == null) {
                try {
                    i3 = Integer.parseInt(str2);
                } catch (Exception e) {
                    e.printStackTrace();
                    i3 = -1;
                }
                onAudioFocusChangeProxy = new OnAudioFocusChangeProxy(i3, str, cVar) { // from class: com.tencent.tai.pal.audio.AudioService.3
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        Log.e(SDKConstants.TAG, "AudioService.requestMicFocus binderDied() called. remove listener and abandonAudioFocus. id=" + str);
                        synchronized (AudioService.this.f) {
                            AudioService.this.a(str);
                        }
                        AudioService.this.f49a.abandonAudioFocus(this);
                    }
                };
                a(str, onAudioFocusChangeProxy);
                Log.i(SDKConstants.TAG, "AudioService.requestMicFocus listener not exist. new listener=" + onAudioFocusChangeProxy);
                try {
                    cVar.asBinder().linkToDeath(onAudioFocusChangeProxy, 0);
                    Log.i(SDKConstants.TAG, "AudioService.requestMicFocus linkToDeath. audioFocusDispatcher=" + cVar);
                } catch (Exception e2) {
                    Log.e(SDKConstants.TAG, "exception caught", e2);
                    e2.printStackTrace();
                }
            } else {
                Log.i(SDKConstants.TAG, "AudioService.requestMicFocus listener found. listener=" + b);
                onAudioFocusChangeProxy = b;
            }
        }
        int requestMicFocus = this.f49a.requestMicFocus(onAudioFocusChangeProxy, i, i2);
        Log.i(SDKConstants.TAG, "AudioService.requestMicFocus adapter return " + requestMicFocus);
        return requestMicFocus;
    }

    @Override // com.tencent.tai.pal.audio.b
    public int b(c cVar, String str) throws RemoteException {
        OnAudioFocusChangeProxy a2;
        Log.i(SDKConstants.TAG, "AudioService.abandonMicFocus audioFocusDispatcher=" + cVar + " id=" + str);
        synchronized (this.f) {
            a2 = a(str);
        }
        if (a2 == null) {
            Log.e(SDKConstants.TAG, "AudioService.abandonMicFocus listener not found, return AudioManager.AUDIOFOCUS_REQUEST_FAILED");
            return 0;
        }
        Log.i(SDKConstants.TAG, "AudioService.abandonMicFocus unlinkToDeath. audioFocusDispatcher=" + cVar);
        try {
            cVar.asBinder().unlinkToDeath(a2, 0);
        } catch (Exception e) {
            Log.e(SDKConstants.TAG, "exception caught", e);
            e.printStackTrace();
        }
        int abandonMicFocus = this.f49a.abandonMicFocus(a2);
        Log.i(SDKConstants.TAG, "AudioService.abandonAudioFocus listener found, return " + abandonMicFocus + ". listener=" + a2);
        return abandonMicFocus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        Log.i(SDKConstants.TAG, "AudioService:notifyStreamMuteStateChanged streamType:" + i + " mute:" + z);
        synchronized (this.d) {
            int beginBroadcast = this.d.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    this.d.getBroadcastItem(i2).a(i, z);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.d.finishBroadcast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i, int i2) {
        Log.i(SDKConstants.TAG, "AudioService:notifyStreamVolumeChanged streamType:" + i + " volume:" + i2);
        synchronized (this.d) {
            int beginBroadcast = this.d.beginBroadcast();
            for (int i3 = 0; i3 < beginBroadcast; i3++) {
                try {
                    this.d.getBroadcastItem(i3).a(i, i2);
                } catch (Exception e) {
                    Log.e(SDKConstants.TAG, "exception caught", e);
                    e.printStackTrace();
                }
            }
            this.d.finishBroadcast();
        }
    }

    public void a(BaseAdapter baseAdapter) {
        if (baseAdapter instanceof AudioAdapter) {
            this.f49a = (AudioAdapter) baseAdapter;
            synchronized (this.d) {
                if (this.d.getRegisteredCallbackCount() > 0) {
                    this.b = true;
                    this.f49a.registerOnStreamVolumeChangeListener(this.c);
                } else {
                    this.b = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class OnAudioFocusChangeProxy extends AudioAdapter.OnAudioFocusChangeListener implements IBinder.DeathRecipient {

        /* renamed from: a, reason: collision with root package name */
        private String f53a;
        private c b;

        private OnAudioFocusChangeProxy(int i, String str, c cVar) {
            super(i, a(str));
            this.f53a = str;
            this.b = cVar;
        }

        private static String a(String str) {
            int indexOf;
            if (TextUtils.isEmpty(str) || (indexOf = str.indexOf("-")) < 0 || indexOf >= str.length()) {
                return null;
            }
            return str.substring(indexOf + 1);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            Log.i(SDKConstants.TAG, "OnAudioFocusChangeProxy.onAudioFocusChange focusChange=" + i + ", " + toString());
            try {
                if (this.b != null && this.b.asBinder().isBinderAlive()) {
                    this.b.a(i, this.f53a);
                } else {
                    Log.e(SDKConstants.TAG, "OnAudioFocusChangeProxy.onAudioFocusChange mAudioFocusDispatcherAidl null or binder not alive, " + toString());
                }
            } catch (Exception e) {
                Log.e(SDKConstants.TAG, "exception caught", e);
                e.printStackTrace();
            }
        }

        @Override // com.tencent.tai.pal.audio.AudioAdapter.OnAudioFocusChangeListener
        public String toString() {
            return super.toString() + "{mClientId=" + this.f53a + ",mAudioFocusDispatcherAidl=" + this.b + "}";
        }
    }
}
