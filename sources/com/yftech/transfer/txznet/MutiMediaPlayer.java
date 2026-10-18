package com.yftech.transfer.txznet;

import android.content.Context;
import android.support.v4.media.MediaMetadataCompat;
import com.desaysv.mixmedia.support.MediaSessionCallback;
import com.desaysv.mixmedia.support.MultimediaManager;
import com.utils.LogUtil;
import com.yftech.transfer.media.AbsMediaPlayer;
import com.yftech.transfer.service.CarTransferApplication;

/* loaded from: /home/user/work/dex/classes.dex */
public class MutiMediaPlayer extends AbsMediaPlayer {
    private static final String NAME = "MutiMediaPlayer";
    public static final int PLAYSTATE_LOADING = 1;
    public static final int PLAYSTATE_PLAY = 3;
    public static final int PLAYSTATE_STOP = 2;
    private static final MultimediaManager mMultimediaManager = MultimediaManager.getInstance();
    private Context mContext = CarTransferApplication.context;
    private MediaSessionCallback mMediaSessionCallback = new MediaSessionCallback() { // from class: com.yftech.transfer.txznet.MutiMediaPlayer.1
        @Override // com.desaysv.mixmedia.support.MediaSessionCallback
        public void onMediaChanged(String str, CharSequence charSequence, long j, boolean z, String str2, String str3, String str4) {
            LogUtil.i(MutiMediaPlayer.NAME + " onMediaChanged:" + str + "," + ((Object) charSequence) + "," + j + "," + z);
            if (MutiMediaPlayer.this.mMediaPlayerListener != null) {
                MutiMediaPlayer.this.mMediaPlayerListener.onMediaMetaDataChanged(MutiMediaPlayer.this, MutiMediaPlayer.this.getMediaMetadata());
            }
        }

        @Override // com.desaysv.mixmedia.support.MediaSessionCallback
        public void onPlayPositionChanged(long j, long j2, long j3) {
            if (MutiMediaPlayer.this.mMediaPlayerListener != null) {
                MutiMediaPlayer.this.mMediaPlayerListener.onPlayProgressChanged(MutiMediaPlayer.this, j3, j);
            }
        }

        @Override // com.desaysv.mixmedia.support.MediaSessionCallback
        public void onStateChanged(int i) {
            if (MutiMediaPlayer.this.mMediaPlayerListener != null) {
                MutiMediaPlayer.this.mMediaPlayerListener.onPlayStateChanged(MutiMediaPlayer.this, MutiMediaPlayer.this.getPlayState());
            }
        }
    };

    @Override // com.yftech.transfer.media.IMediaPlayer
    public String dump() {
        return null;
    }

    @Override // com.yftech.transfer.media.AbsMediaPlayer
    public void init() {
        MultimediaManager.getInstance().connect(this.mContext);
        LogUtil.i(NAME + " mContext:" + this.mContext);
        mMultimediaManager.registerCallback(this.mMediaSessionCallback);
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public String name() {
        return NAME;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public int getPlayState() {
        int state = mMultimediaManager.getState();
        LogUtil.i(NAME + " getPlayState:" + state);
        switch (state) {
            case 2:
                return 2;
            case 3:
                return 1;
            default:
                return -1;
        }
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public MediaMetadataCompat getMediaMetadata() {
        CharSequence title = mMultimediaManager.getTitle();
        String artist = mMultimediaManager.getArtist();
        String album = mMultimediaManager.getAlbum();
        int state = mMultimediaManager.getState();
        long duration = mMultimediaManager.getDuration();
        MediaMetadataCompat.Builder builder = new MediaMetadataCompat.Builder();
        builder.putText(MediaMetadataCompat.METADATA_KEY_TITLE, title);
        builder.putText(MediaMetadataCompat.METADATA_KEY_ARTIST, artist);
        builder.putText(MediaMetadataCompat.METADATA_KEY_ALBUM, album);
        builder.putLong(MediaMetadataCompat.METADATA_KEY_DURATION, duration);
        MediaMetadataCompat build = builder.build();
        LogUtil.i(NAME + "getMediaMetadata:" + ((Object) title) + "," + artist + "," + album + "," + state + "," + build);
        return build;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public long[] getPlayProgress() {
        return new long[]{mMultimediaManager.getDuration(), mMultimediaManager.getPosition()};
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean play(MediaMetadataCompat mediaMetadataCompat) {
        LogUtil.i(NAME + "play()");
        mMultimediaManager.play();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean play(int i) {
        mMultimediaManager.play();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean pause() {
        mMultimediaManager.pause();
        LogUtil.i(NAME + " pause()");
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean stop() {
        LogUtil.i(NAME + " stop()");
        mMultimediaManager.stop();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean next() {
        mMultimediaManager.next();
        LogUtil.i(NAME + " next,mMultimediaManager:" + mMultimediaManager);
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean prev() {
        mMultimediaManager.previous();
        return true;
    }

    @Override // com.yftech.transfer.media.AbsMediaPlayer
    public void uninit() {
        mMultimediaManager.unregisterCallback(this.mMediaSessionCallback);
        mMultimediaManager.disConnect();
    }
}
