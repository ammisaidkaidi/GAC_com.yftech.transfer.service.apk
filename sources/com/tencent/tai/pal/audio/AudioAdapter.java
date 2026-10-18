package com.tencent.tai.pal.audio;

import android.media.AudioAttributes;
import android.media.AudioManager;
import android.os.Build;
import android.util.Log;
import com.tencent.tai.pal.INoProguardClass;
import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class AudioAdapter extends BaseAdapter implements IAudio {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnStreamVolumeChangeListener extends INoProguardInterface {
        void onStreamMuteStateChange(int i, boolean z);

        void onStreamVolumeChange(int i, int i2);
    }

    public abstract int abandonAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener);

    public abstract int abandonMicFocus(OnAudioFocusChangeListener onAudioFocusChangeListener);

    public abstract int adjustAllVolume(int i, int i2, int i3);

    public abstract int adjustStreamVolume(int i, int i2, int i3);

    public abstract int adjustVolume(int i, int i2);

    public abstract int getCurrentActiveStream();

    public abstract int getStreamMaxVolume(int i);

    public abstract int getStreamType(int i);

    public abstract int getStreamVolume(int i);

    public abstract boolean isStreamMute(int i);

    @Deprecated
    public final void onAudioEvent(int i, int i2) {
    }

    public abstract void registerOnStreamVolumeChangeListener(OnStreamVolumeChangeListener onStreamVolumeChangeListener);

    public abstract int requestAudioFocus(OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2);

    public abstract int requestMicFocus(OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2);

    public abstract int setStreamVolume(int i, int i2, int i3);

    public abstract void unregisterOnStreamVolumeChangeListener(OnStreamVolumeChangeListener onStreamVolumeChangeListener);

    public boolean shouldUseAudioAttributes() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public AudioAttributes getAudioAttributes(int i, String str) {
        if (shouldUseAudioAttributes()) {
            return a.a(i);
        }
        return null;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class OnAudioFocusChangeListener implements AudioManager.OnAudioFocusChangeListener, INoProguardClass {

        /* renamed from: a, reason: collision with root package name */
        private int f45a;
        private String b;

        /* JADX INFO: Access modifiers changed from: protected */
        public OnAudioFocusChangeListener(int i, String str) {
            Log.i(SDKConstants.TAG, "OnAudioFocusChangeListener processId=" + i + " tag=" + str);
            this.f45a = i;
            this.b = str;
        }

        public final int getProcessId() {
            return this.f45a;
        }

        public final String getTag() {
            return this.b;
        }

        public String toString() {
            return super.toString() + "{mProcessId=" + this.f45a + ", mTag=" + this.b + "}";
        }
    }
}
