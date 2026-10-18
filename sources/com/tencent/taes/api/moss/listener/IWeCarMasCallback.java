package com.tencent.taes.api.moss.listener;

import com.tencent.taes.api.moss.bean.MossAudioBean;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarMasCallback {
    void onMusicEnd();

    void onMusicError();

    void onMusicInfoChange(MossAudioBean mossAudioBean);

    void onMusicPause();

    void onMusicPlay();

    void onMusicStop();

    void onMusicWaiting();

    void onProgress(long j, long j2);

    void onSeekComplete();

    void onSeeking();
}
