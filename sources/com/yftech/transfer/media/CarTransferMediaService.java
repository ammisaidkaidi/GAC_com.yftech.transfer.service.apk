package com.yftech.transfer.media;

import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaBrowserServiceCompat;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.utils.LogUtil;
import com.yftech.transfer.media.MediaManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.txznet.MutiMediaPlayer;
import com.yftech.transfer.txznet.TxznetMediaPlayer;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarTransferMediaService extends MediaBrowserServiceCompat {
    private static final String TAG = "CarTransferMediaService";
    private OnMediaChangedListenerImpl mMediaChangedListener;
    private MediaManager mMediaManager;
    private AbsMediaPlayer mMediaPlayer;
    private MediaSessionCompat mMediaSession;
    private MediaSessionCallback mMediaSessionCallback;

    @Override // android.support.v4.media.MediaBrowserServiceCompat, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mMediaSession = new MediaSessionCompat(this, "transfer.media");
        this.mMediaSessionCallback = new MediaSessionCallback();
        this.mMediaSession.setCallback(this.mMediaSessionCallback);
        this.mMediaSession.setFlags(3);
        setSessionToken(this.mMediaSession.getSessionToken());
        this.mMediaPlayer = getProductMediaPlayer();
        this.mMediaPlayer.init();
        this.mMediaChangedListener = new OnMediaChangedListenerImpl();
        this.mMediaManager = MediaManager.getInstance();
        this.mMediaManager.addMediaPlayer(this.mMediaPlayer);
        this.mMediaManager.mediaPlayerStart(this.mMediaPlayer);
        this.mMediaPlayer.setMediaPlayerListener(this.mMediaManager);
        this.mMediaManager.addOnMediaChangedListener(this.mMediaChangedListener);
    }

    private AbsMediaPlayer getProductMediaPlayer() {
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        if (((curProductDevice.hashCode() == 2039290846 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU19)) ? (char) 0 : (char) 65535) == 0) {
            return new MutiMediaPlayer();
        }
        return new TxznetMediaPlayer(getApplicationContext());
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat
    @Nullable
    public MediaBrowserServiceCompat.BrowserRoot onGetRoot(@NonNull String str, int i, @Nullable Bundle bundle) {
        LogUtil.i(TAG + "onGetRoot:" + str + "," + i);
        return new MediaBrowserServiceCompat.BrowserRoot("transfer.media", null);
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat
    public void onLoadChildren(@NonNull String str, @NonNull MediaBrowserServiceCompat.Result<List<MediaBrowserCompat.MediaItem>> result) {
        result.detach();
        ArrayList arrayList = new ArrayList();
        MediaMetadataCompat mediaMetadata = this.mMediaManager.getMediaMetadata();
        if (mediaMetadata != null) {
            arrayList.add(new MediaBrowserCompat.MediaItem(mediaMetadata.getDescription(), 2));
        }
        result.sendResult(arrayList);
    }

    public void notifyMediaMetaDataChanged(String str, Bundle bundle) {
        notifyChildrenChanged(str, bundle);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class OnMediaChangedListenerImpl extends MediaManager.OnMediaChangedListener {
        private OnMediaChangedListenerImpl() {
        }

        @Override // com.yftech.transfer.media.MediaManager.OnMediaChangedListener
        public void onPlayStateChanged(int i) {
            PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
            switch (i) {
                case 1:
                    builder.setState(3, 0L, 1.0f);
                    break;
                case 2:
                    builder.setState(2, 0L, 1.0f);
                    break;
                case 3:
                    builder.setState(1, 0L, 1.0f);
                    break;
                default:
                    return;
            }
            CarTransferMediaService.this.mMediaSession.setPlaybackState(builder.build());
        }

        @Override // com.yftech.transfer.media.MediaManager.OnMediaChangedListener
        public void onMediaMetaDataChanged(MediaMetadataCompat mediaMetadataCompat) {
            if (mediaMetadataCompat == null) {
                return;
            }
            CarTransferMediaService.this.mMediaSession.setMetadata(mediaMetadataCompat);
        }

        @Override // com.yftech.transfer.media.MediaManager.OnMediaChangedListener
        public void onPlayProgressChanged(long j, long j2) {
            CarTransferMediaService.this.mMediaSession.setPlaybackState(new PlaybackStateCompat.Builder().setState(3, j2, 1.0f).build());
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class MediaSessionCallback extends MediaSessionCompat.Callback {
        private MediaSessionCallback() {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            Log.d(CarTransferMediaService.TAG, "onCommand, command=" + str + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepare() {
            Log.d(CarTransferMediaService.TAG, "onPrepare");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromMediaId(String str, Bundle bundle) {
            Log.d(CarTransferMediaService.TAG, "onPrepareFromMediaId, mediaId=" + str + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromSearch(String str, Bundle bundle) {
            Log.d(CarTransferMediaService.TAG, "onPrepareFromSearch, query=" + str + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromUri(Uri uri, Bundle bundle) {
            Log.d(CarTransferMediaService.TAG, "onPrepareFromUri, uri=" + uri + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlay() {
            Log.d(CarTransferMediaService.TAG, "onPlay");
            CarTransferMediaService.this.mMediaManager.play((MediaMetadataCompat) null);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            Log.d(CarTransferMediaService.TAG, "onPlayFromMediaId, mediaId=" + str + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            Log.d(CarTransferMediaService.TAG, "onPlayFromSearch, query=" + str + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromUri(Uri uri, Bundle bundle) {
            Log.d(CarTransferMediaService.TAG, "onPlayFromUri, uri=" + uri + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToQueueItem(long j) {
            Log.d(CarTransferMediaService.TAG, "onSkipToQueueItem, id=" + j);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPause() {
            Log.d(CarTransferMediaService.TAG, "onPause");
            CarTransferMediaService.this.mMediaManager.pause();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToNext() {
            Log.d(CarTransferMediaService.TAG, "onSkipToNext");
            CarTransferMediaService.this.mMediaManager.next();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToPrevious() {
            Log.d(CarTransferMediaService.TAG, "onSkipToPrevious");
            CarTransferMediaService.this.mMediaManager.prev();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onFastForward() {
            Log.d(CarTransferMediaService.TAG, "onFastForward");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onRewind() {
            Log.d(CarTransferMediaService.TAG, "onRewind");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onStop() {
            Log.d(CarTransferMediaService.TAG, "onStop mMediaManager:" + CarTransferMediaService.this.mMediaManager);
            CarTransferMediaService.this.mMediaManager.stop();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSeekTo(long j) {
            Log.d(CarTransferMediaService.TAG, "onSeekTo, pos=" + j);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRating(RatingCompat ratingCompat) {
            Log.d(CarTransferMediaService.TAG, "onSetRating, rating=" + ratingCompat);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
            Log.d(CarTransferMediaService.TAG, "onSetRating, rating=" + ratingCompat + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetCaptioningEnabled(boolean z) {
            Log.d(CarTransferMediaService.TAG, "onSetCaptioningEnabled, enabled=" + z);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRepeatMode(int i) {
            Log.d(CarTransferMediaService.TAG, "onSetRepeatMode, repeatMode=" + i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetShuffleModeEnabled(boolean z) {
            Log.d(CarTransferMediaService.TAG, "onSetShuffleModeEnabled, enabled=" + z);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetShuffleMode(int i) {
            Log.d(CarTransferMediaService.TAG, "onSetShuffleMode, shuffleMode=" + i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onCustomAction(String str, Bundle bundle) {
            Log.d(CarTransferMediaService.TAG, "onCustomAction, action=" + str + ", extras=" + bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            Log.d(CarTransferMediaService.TAG, "onAddQueueItem, description=" + mediaDescriptionCompat);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            Log.d(CarTransferMediaService.TAG, "onAddQueueItem, description=" + mediaDescriptionCompat + ", index=" + i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            Log.d(CarTransferMediaService.TAG, "onRemoveQueueItem, description=" + mediaDescriptionCompat);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onRemoveQueueItemAt(int i) {
            Log.d(CarTransferMediaService.TAG, "onRemoveQueueItemAt, index=" + i);
        }
    }

    @Override // android.support.v4.media.MediaBrowserServiceCompat, android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("===========transfer media service==========");
        printWriter.print(this.mMediaManager.dump());
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.mMediaPlayer.uninit();
    }
}
