package com.tencent.tai.pal.client;

import android.media.AudioAttributes;
import android.media.AudioManager;
import android.support.annotation.RequiresApi;
import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.audio.IAudio;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALAudioManager extends IAudio {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface StreamVolumeListener extends INoProguardInterface {
        void onStreamMuteStateChanged(int i, boolean z);

        void onStreamVolumeChanged(int i, int i2);
    }

    int abandonAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener);

    int abandonMicFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener);

    int adjustAllVolume(int i, int i2, int i3);

    int adjustStreamVolume(int i, int i2, int i3);

    int adjustVolume(int i, int i2);

    @RequiresApi(api = 21)
    AudioAttributes getAudioAttributes(int i, String str);

    int getCurrentActiveStream();

    int getStreamMaxVolume(int i);

    int getStreamType(int i);

    int getStreamVolume(int i);

    boolean isStreamMute(int i);

    @Deprecated
    void onAudioEvent(int i, int i2);

    void registerStreamVolumeListener(StreamVolumeListener streamVolumeListener);

    int requestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2);

    int requestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2, String str);

    int requestMicFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2);

    int requestMicFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2, String str);

    int setStreamVolume(int i, int i2);

    int setStreamVolume(int i, int i2, int i3);

    boolean shouldUseAudioAttributes();

    void unregisterStreamVolumeListener(StreamVolumeListener streamVolumeListener);
}
