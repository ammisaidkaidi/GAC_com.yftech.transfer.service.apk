package com.iflytek.autofly.custom.audio.util;

import android.media.AudioManager;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IAudioListener {
    int onAbandonAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener);

    int onCloseChannel(int i);

    int onGet3DSoundMode();

    int onGetCurrentChannel();

    int onGetEQ(int i);

    int onGetEQMode();

    int onGetLastMusicSourceChannel();

    boolean onIsAudioFocusOccupy();

    int onRequestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2);

    void onServiceStatusChanged(int i);

    int onSet3DSoundMode(int i);

    int onSetEQ(int i, int i2);

    int onSetEQMode(int i);

    int onSwitchChannel(int i);
}
