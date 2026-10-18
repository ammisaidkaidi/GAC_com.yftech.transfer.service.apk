package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;

@Keep
@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public interface IAudioEventListener {
    int onAbandonAudioFocus(boolean z, int i);

    void onAsrBegin();

    void onAsrEnd();

    void onAsrStartTipBegin();

    void onAsrStartTipEnd();

    void onCallBegin();

    void onCallEnd();

    void onMusicPause();

    void onMusicPlay();

    int onRequestAudioFocus(int i);

    void onTtsBegin();

    void onTtsEnd();
}
