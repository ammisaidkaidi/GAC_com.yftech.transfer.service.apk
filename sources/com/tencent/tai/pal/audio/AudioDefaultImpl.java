package com.tencent.tai.pal.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.util.Log;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.client.PALAudioManager;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioDefaultImpl {

    /* renamed from: a, reason: collision with root package name */
    private AudioManager f46a;
    private VolumeChangeBroadcastReceiver d;
    private Context e;
    private List<PALAudioManager.StreamVolumeListener> b = new CopyOnWriteArrayList();
    private final Object c = new Object();
    private PALAudioManager.StreamVolumeListener f = new PALAudioManager.StreamVolumeListener() { // from class: com.tencent.tai.pal.audio.AudioDefaultImpl.1
        @Override // com.tencent.tai.pal.client.PALAudioManager.StreamVolumeListener
        public void onStreamVolumeChanged(int i, int i2) {
            for (PALAudioManager.StreamVolumeListener streamVolumeListener : AudioDefaultImpl.this.b) {
                if (streamVolumeListener != null) {
                    streamVolumeListener.onStreamVolumeChanged(i, i2);
                }
            }
        }

        @Override // com.tencent.tai.pal.client.PALAudioManager.StreamVolumeListener
        public void onStreamMuteStateChanged(int i, boolean z) {
            for (PALAudioManager.StreamVolumeListener streamVolumeListener : AudioDefaultImpl.this.b) {
                if (streamVolumeListener != null) {
                    streamVolumeListener.onStreamMuteStateChanged(i, z);
                }
            }
        }
    };

    public AudioDefaultImpl(Context context) {
        this.e = context;
        this.f46a = (AudioManager) context.getSystemService("audio");
    }

    public boolean a(int i) {
        Log.i(SDKConstants.TAG, "audio_isStreamMute_supported=false AudioDefaultSupported isStreamMute ");
        if (Build.VERSION.SDK_INT >= 23) {
            return this.f46a.isStreamMute(i);
        }
        return this.f46a.getStreamVolume(i) <= 0;
    }

    public int b(int i) {
        Log.i(SDKConstants.TAG, "audio_getStreamMaxVolume_supported=false AudioDefaultSupported getStreamMaxVolume ");
        return this.f46a.getStreamMaxVolume(i);
    }

    public int a(int i, int i2, int i3) {
        Log.i(SDKConstants.TAG, "audio_adjustStreamVolume_supported=false AudioDefaultSupported adjustStreamVolume ");
        this.f46a.adjustStreamVolume(i, i2, i3);
        return 1;
    }

    public int a(int i, int i2) {
        Log.i(SDKConstants.TAG, "audio_adjustVolume_supported=false AudioDefaultSupported adjustVolume ");
        this.f46a.adjustVolume(i, i2);
        return 1;
    }

    public int b(int i, int i2, int i3) {
        Log.i(SDKConstants.TAG, "audio_setStreamVolume_supported=false AudioDefaultSupported setStreamVolume ");
        this.f46a.setStreamVolume(i, i2, i3);
        return 1;
    }

    public int c(int i) {
        Log.i(SDKConstants.TAG, "audio_getStreamVolume_supported=false AudioDefaultSupported getStreamVolume ");
        return this.f46a.getStreamVolume(i);
    }

    public int a(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2) {
        Log.i(SDKConstants.TAG, "audio_requestAudioFocus_abandonAudioFocus_supported=false AudioDefaultSupported requestAudioFocusByAudioManager ");
        return this.f46a.requestAudioFocus(onAudioFocusChangeListener, i, i2);
    }

    public int a(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        Log.i(SDKConstants.TAG, "audio_requestAudioFocus_abandonAudioFocus_supported=false AudioDefaultSupported abandonAudioFocusByAudioManager ");
        return this.f46a.abandonAudioFocus(onAudioFocusChangeListener);
    }

    public void a(PALAudioManager.StreamVolumeListener streamVolumeListener) {
        if (this.b.contains(streamVolumeListener)) {
            return;
        }
        synchronized (this.c) {
            if (!this.b.contains(streamVolumeListener) && this.b.add(streamVolumeListener) && this.b.size() == 1) {
                a();
            }
        }
    }

    public void b(PALAudioManager.StreamVolumeListener streamVolumeListener) {
        synchronized (this.c) {
            if (this.b.remove(streamVolumeListener) && this.b.size() == 0) {
                b();
            }
        }
    }

    private void a() {
        IntentFilter intentFilter = new IntentFilter("android.media.VOLUME_CHANGED_ACTION");
        this.d = new VolumeChangeBroadcastReceiver(this.f);
        this.e.registerReceiver(this.d, intentFilter);
    }

    private void b() {
        if (this.d != null) {
            this.e.unregisterReceiver(this.d);
            this.d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class VolumeChangeBroadcastReceiver extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        private WeakReference<PALAudioManager.StreamVolumeListener> f48a;
        private ConcurrentHashMap<Integer, Boolean> b = new ConcurrentHashMap<>();

        public VolumeChangeBroadcastReceiver(PALAudioManager.StreamVolumeListener streamVolumeListener) {
            this.f48a = new WeakReference<>(streamVolumeListener);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1);
                int intExtra2 = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", -1);
                PALAudioManager.StreamVolumeListener streamVolumeListener = this.f48a.get();
                if (streamVolumeListener != null) {
                    streamVolumeListener.onStreamVolumeChanged(intExtra, intExtra2);
                    boolean z = intExtra2 == 0;
                    if (this.b.containsKey(Integer.valueOf(intExtra)) && this.b.get(Integer.valueOf(intExtra)).booleanValue() == z) {
                        return;
                    }
                    this.b.put(Integer.valueOf(intExtra), Boolean.valueOf(z));
                    streamVolumeListener.onStreamMuteStateChanged(intExtra, z);
                }
            }
        }
    }
}
