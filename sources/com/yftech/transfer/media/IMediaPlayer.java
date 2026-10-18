package com.yftech.transfer.media;

import android.support.v4.media.MediaMetadataCompat;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IMediaPlayer {
    String dump();

    MediaMetadataCompat getMediaMetadata();

    long[] getPlayProgress();

    int getPlayState();

    String name();

    boolean next();

    boolean pause();

    boolean play(int i);

    boolean play(MediaMetadataCompat mediaMetadataCompat);

    boolean prev();

    boolean stop();
}
