package com.yftech.transfer.media;

import android.support.v4.media.MediaMetadataCompat;
import com.yftech.transfer.media.AbsMediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaManager implements AbsMediaPlayer.IMediaPlayerListener {
    public static final int PLAY_STATE_PAUSE = 2;
    public static final int PLAY_STATE_PLAYING = 1;
    public static final int PLAY_STATE_STOP = 3;
    public static final int PLAY_STATE_UNKNOWN = -1;
    private static final String TAG = "MediaManager";
    private static MediaManager mInstance;
    private AbsMediaPlayer mCurMediaPlayer;
    private final Map<String, AbsMediaPlayer> mMediaPlayerMap = new HashMap(2);
    private final List<OnMediaChangedListener> mMediaChangedListenerList = new ArrayList();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class OnMediaChangedListener {
        public void onMediaMetaDataChanged(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void onPlayProgressChanged(long j, long j2) {
        }

        public void onPlayStateChanged(int i) {
        }
    }

    private MediaManager() {
    }

    public static MediaManager getInstance() {
        if (mInstance != null) {
            return mInstance;
        }
        synchronized (MediaManager.class) {
            if (mInstance == null) {
                mInstance = new MediaManager();
            }
        }
        return mInstance;
    }

    public void addMediaPlayer(AbsMediaPlayer absMediaPlayer) {
        if (this.mMediaPlayerMap.containsKey(absMediaPlayer.name())) {
            return;
        }
        this.mMediaPlayerMap.put(absMediaPlayer.name(), absMediaPlayer);
        absMediaPlayer.setMediaPlayerListener(this);
    }

    public void removeMediaPlayer(AbsMediaPlayer absMediaPlayer) {
        if (this.mMediaPlayerMap.containsKey(absMediaPlayer.name())) {
            if (this.mCurMediaPlayer == absMediaPlayer) {
                this.mCurMediaPlayer.setMediaPlayerListener(null);
                this.mCurMediaPlayer = null;
            }
            this.mMediaPlayerMap.remove(absMediaPlayer.name());
        }
    }

    public void mediaPlayerStart(AbsMediaPlayer absMediaPlayer) {
        if (this.mMediaPlayerMap.containsKey(absMediaPlayer.name()) && this.mMediaPlayerMap.get(absMediaPlayer.name()) == absMediaPlayer) {
            this.mCurMediaPlayer = absMediaPlayer;
        }
    }

    public void addOnMediaChangedListener(OnMediaChangedListener onMediaChangedListener) {
        if (onMediaChangedListener == null || this.mMediaChangedListenerList.contains(onMediaChangedListener)) {
            return;
        }
        this.mMediaChangedListenerList.add(onMediaChangedListener);
    }

    public void removeOnMediaChangedListener(OnMediaChangedListener onMediaChangedListener) {
        this.mMediaChangedListenerList.remove(onMediaChangedListener);
    }

    public int getPlayState() {
        return this.mCurMediaPlayer.getPlayState();
    }

    public MediaMetadataCompat getMediaMetadata() {
        return this.mCurMediaPlayer.getMediaMetadata();
    }

    public long[] getPlayProgress() {
        return this.mCurMediaPlayer.getPlayProgress();
    }

    public boolean play(MediaMetadataCompat mediaMetadataCompat) {
        return this.mCurMediaPlayer.play(mediaMetadataCompat);
    }

    public boolean play(int i) {
        return this.mCurMediaPlayer.play(i);
    }

    public boolean pause() {
        return this.mCurMediaPlayer.pause();
    }

    public boolean stop() {
        return this.mCurMediaPlayer.stop();
    }

    public boolean next() {
        return this.mCurMediaPlayer.next();
    }

    public boolean prev() {
        return this.mCurMediaPlayer.prev();
    }

    @Override // com.yftech.transfer.media.AbsMediaPlayer.IMediaPlayerListener
    public void onPlayStateChanged(IMediaPlayer iMediaPlayer, int i) {
        Iterator<OnMediaChangedListener> it = this.mMediaChangedListenerList.iterator();
        while (it.hasNext()) {
            it.next().onPlayStateChanged(i);
        }
    }

    @Override // com.yftech.transfer.media.AbsMediaPlayer.IMediaPlayerListener
    public void onMediaMetaDataChanged(IMediaPlayer iMediaPlayer, MediaMetadataCompat mediaMetadataCompat) {
        Iterator<OnMediaChangedListener> it = this.mMediaChangedListenerList.iterator();
        while (it.hasNext()) {
            it.next().onMediaMetaDataChanged(mediaMetadataCompat);
        }
    }

    @Override // com.yftech.transfer.media.AbsMediaPlayer.IMediaPlayerListener
    public void onPlayProgressChanged(IMediaPlayer iMediaPlayer, long j, long j2) {
        Iterator<OnMediaChangedListener> it = this.mMediaChangedListenerList.iterator();
        while (it.hasNext()) {
            it.next().onPlayProgressChanged(j, j2);
        }
    }

    public String dump() {
        StringBuilder sb = new StringBuilder();
        sb.append("player list:\n");
        boolean z = true;
        for (AbsMediaPlayer absMediaPlayer : this.mMediaPlayerMap.values()) {
            sb.append("\t");
            sb.append(absMediaPlayer.dump());
            sb.append("\n");
            if (z) {
                z = false;
            } else {
                sb.append("-----------------------------------\n");
            }
        }
        sb.append("current player:");
        sb.append(this.mCurMediaPlayer);
        sb.append("\n");
        return sb.toString();
    }
}
