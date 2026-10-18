package com.yftech.transfer.txznet;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import com.yftech.transfer.media.AbsMediaPlayer;

/* loaded from: /home/user/work/dex/classes.dex */
public class TxznetMediaPlayer extends AbsMediaPlayer {
    private static final String TAG = "TxznetMediaPlayer";
    private static final String TXZNET_MUSIC_PACKAGE = "com.txznet.music";
    private MediaMetadataCompat mCurMediaMetadata;
    private MediaBrowserCompat mMediaBrowser;
    private MediaControllerCompat mMediaController;
    private MediaControllerCallback mMediaControllerCallback;

    @Override // com.yftech.transfer.media.IMediaPlayer
    public String name() {
        return TXZNET_MUSIC_PACKAGE;
    }

    public TxznetMediaPlayer(Context context) {
        toConnectTxznetMusicPlayer(context);
    }

    private void toConnectTxznetMusicPlayer(final Context context) {
        ComponentName findBrowserServiceComponentName = findBrowserServiceComponentName(context, TXZNET_MUSIC_PACKAGE);
        if (findBrowserServiceComponentName != null) {
            Log.d(TAG, "TxznetMediaPlayer, find txznet music player");
            this.mMediaControllerCallback = new MediaControllerCallback();
            this.mMediaBrowser = new MediaBrowserCompat(context, findBrowserServiceComponentName, new MediaBrowserCompat.ConnectionCallback() { // from class: com.yftech.transfer.txznet.TxznetMediaPlayer.1
                @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
                public void onConnected() {
                    Log.d(TxznetMediaPlayer.TAG, "onConnected, connect to txznet player success");
                    try {
                        TxznetMediaPlayer.this.mMediaController = new MediaControllerCompat(context, TxznetMediaPlayer.this.mMediaBrowser.getSessionToken());
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                    TxznetMediaPlayer.this.mMediaController.registerCallback(TxznetMediaPlayer.this.mMediaControllerCallback, null);
                }

                @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
                public void onConnectionFailed() {
                    Log.d(TxznetMediaPlayer.TAG, "onConnectionFailed, connect to txznet player failed");
                }

                @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
                public void onConnectionSuspended() {
                    Log.d(TxznetMediaPlayer.TAG, "onConnectionSuspended, disconnect to txznet player");
                }
            }, null);
            this.mMediaBrowser.connect();
        }
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public int getPlayState() {
        PlaybackStateCompat playbackState;
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected() || (playbackState = this.mMediaController.getPlaybackState()) == null) {
            return -1;
        }
        switch (playbackState.getState()) {
            case 1:
                return 3;
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
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected()) {
            return null;
        }
        return this.mCurMediaMetadata;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public long[] getPlayProgress() {
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected()) {
            return null;
        }
        return new long[]{this.mCurMediaMetadata == null ? 0L : this.mCurMediaMetadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION), this.mMediaController.getPlaybackState().getPosition()};
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean play(MediaMetadataCompat mediaMetadataCompat) {
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected()) {
            return false;
        }
        if (mediaMetadataCompat != null) {
            return true;
        }
        this.mMediaController.getTransportControls().play();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean play(int i) {
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected()) {
            return false;
        }
        if (i != -1) {
            return true;
        }
        this.mMediaController.getTransportControls().play();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean pause() {
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected()) {
            return false;
        }
        this.mMediaController.getTransportControls().pause();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean stop() {
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected()) {
            return false;
        }
        this.mMediaController.getTransportControls().stop();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean next() {
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected()) {
            return false;
        }
        this.mMediaController.getTransportControls().skipToNext();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public boolean prev() {
        if (this.mMediaBrowser == null || this.mMediaController == null || !this.mMediaBrowser.isConnected()) {
            return false;
        }
        this.mMediaController.getTransportControls().skipToPrevious();
        return true;
    }

    @Override // com.yftech.transfer.media.IMediaPlayer
    public String dump() {
        StringBuilder sb = new StringBuilder();
        sb.append("TxznetMediaPlayer:\n");
        sb.append("\tname=");
        sb.append(name());
        sb.append("\n");
        sb.append("\tisConnected=");
        sb.append(this.mMediaBrowser == null ? DeviceHelper.FALSE : Boolean.valueOf(this.mMediaBrowser.isConnected()));
        sb.append("\n");
        sb.append("\tcurMediaMetaData=");
        sb.append(this.mCurMediaMetadata);
        sb.append("\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class MediaControllerCallback extends MediaControllerCompat.Callback {
        private MediaControllerCallback() {
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
            int i;
            if (playbackStateCompat == null || TxznetMediaPlayer.this.mMediaPlayerListener == null) {
                return;
            }
            switch (playbackStateCompat.getState()) {
                case 1:
                    i = 3;
                    break;
                case 2:
                    i = 2;
                    break;
                case 3:
                    i = 1;
                    break;
                default:
                    i = -1;
                    break;
            }
            if (i != -1) {
                TxznetMediaPlayer.this.mMediaPlayerListener.onPlayStateChanged(TxznetMediaPlayer.this, i);
            }
            TxznetMediaPlayer.this.mMediaPlayerListener.onPlayProgressChanged(TxznetMediaPlayer.this, TxznetMediaPlayer.this.mCurMediaMetadata == null ? 0L : TxznetMediaPlayer.this.mCurMediaMetadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION), playbackStateCompat.getPosition());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.Callback
        public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
            TxznetMediaPlayer.this.mCurMediaMetadata = mediaMetadataCompat;
            if (TxznetMediaPlayer.this.mMediaPlayerListener != null) {
                TxznetMediaPlayer.this.mMediaPlayerListener.onMediaMetaDataChanged(TxznetMediaPlayer.this, mediaMetadataCompat);
            }
        }
    }
}
