package com.desaysv.mixmedia.support;

import android.content.ComponentName;
import android.content.Context;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.browse.MediaBrowser;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseConnection {
    private ConnectCallback callback;
    private final Handler handler;
    MediaBrowser mediaBrowser;
    private final MediaController.Callback mediaControlCallback = new MediaController.Callback() { // from class: com.desaysv.mixmedia.support.BaseConnection.1
        @Override // android.media.session.MediaController.Callback
        public void onQueueChanged(@Nullable List<MediaSession.QueueItem> list) {
            BaseConnection.this.onSessionCallback.onQueueChanged(BaseConnection.this, list);
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(@Nullable MediaMetadata mediaMetadata) {
            BaseConnection.this.onSessionCallback.onMetadataChanged(BaseConnection.this, mediaMetadata);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(@Nullable PlaybackState playbackState) {
            BaseConnection.this.onSessionCallback.onPlaybackStateChanged(BaseConnection.this, playbackState);
        }

        @Override // android.media.session.MediaController.Callback
        public void onQueueTitleChanged(@Nullable CharSequence charSequence) {
            BaseConnection.this.onSessionCallback.onQueueTitleChanged(BaseConnection.this, charSequence);
        }

        @Override // android.media.session.MediaController.Callback
        public void onExtrasChanged(@Nullable Bundle bundle) {
            BaseConnection.this.onSessionCallback.onExtrasChanged(BaseConnection.this, bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionEvent(@NotNull String str, @Nullable Bundle bundle) {
            BaseConnection.this.onSessionCallback.onSessionEvent(BaseConnection.this, str, bundle);
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            BaseConnection.this.onSessionCallback.onSessionDestroyed(BaseConnection.this);
        }

        @Override // android.media.session.MediaController.Callback
        public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            BaseConnection.this.onSessionCallback.onAudioInfoChanged(BaseConnection.this, playbackInfo);
        }
    };
    MediaController mediaController;
    private final OnSessionCallback onSessionCallback;

    abstract void changeSource(EnumMediaSource enumMediaSource);

    public BaseConnection(Handler handler, OnSessionCallback onSessionCallback) {
        this.handler = handler;
        this.onSessionCallback = onSessionCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NotNull
    public EnumMediaSource getMediaSource() {
        EnumMediaSource mediaSourceByCode;
        return (this.mediaController.getExtras() == null || (mediaSourceByCode = EnumMediaSource.getMediaSourceByCode(this.mediaController.getExtras().getInt(Constants.EVENT_MEDIA_SOURCE, EnumMediaSource.ONLINE_MUSIC.getCode()))) == null) ? EnumMediaSource.ONLINE_MUSIC : mediaSourceByCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void connect2MBService(Context context, String str, String str2) {
        if (this.callback == null) {
            this.callback = new ConnectCallback(context);
        }
        if (this.mediaBrowser == null) {
            this.mediaBrowser = new MediaBrowser(context, new ComponentName(str, str2), this.callback, new Bundle());
        }
        if (this.mediaBrowser.isConnected() || this.callback.isConnecting) {
            return;
        }
        this.mediaBrowser.connect();
    }

    void disConnect() {
        if (this.mediaBrowser == null || !this.mediaBrowser.isConnected()) {
            return;
        }
        this.mediaBrowser.disconnect();
    }

    String getNowPlayingArtist() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
            return null;
        }
        return metadata.getString(MediaMetadataCompat.METADATA_KEY_ARTIST);
    }

    String getNowPlayingTitle() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_TITLE)) {
            return null;
        }
        return metadata.getString(MediaMetadataCompat.METADATA_KEY_TITLE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPlayState() {
        PlaybackState playbackState;
        if (this.mediaController == null || (playbackState = this.mediaController.getPlaybackState()) == null) {
            return 0;
        }
        return playbackState.getState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNowPlayingDuration() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
            return 0L;
        }
        return metadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
    }

    String getNowPlayingDisplayTitle() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE)) {
            return null;
        }
        return metadata.getString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE);
    }

    String getNowPlayingAlbum() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM)) {
            return null;
        }
        return metadata.getString(MediaMetadataCompat.METADATA_KEY_ALBUM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getNowPlayingMediaId() {
        MediaMetadata metadata;
        return (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_MEDIA_ID)) ? "" : metadata.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getPosition() {
        PlaybackState playbackState;
        if (this.mediaController == null || (playbackState = this.mediaController.getPlaybackState()) == null) {
            return 0L;
        }
        return playbackState.getPosition();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getBufferedPosition() {
        PlaybackState playbackState;
        if (this.mediaController == null || (playbackState = this.mediaController.getPlaybackState()) == null) {
            return 0L;
        }
        return playbackState.getBufferedPosition();
    }

    String getNowPlayingDisplayIconUrl() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI)) {
            return null;
        }
        return metadata.getString(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<MediaSession.QueueItem> getQueue() {
        if (this.mediaController == null || this.mediaController.getQueue() == null) {
            return null;
        }
        return this.mediaController.getQueue();
    }

    public CharSequence getQueueTitle() {
        if (this.mediaController != null) {
            return this.mediaController.getQueueTitle();
        }
        return null;
    }

    boolean isCollected() {
        MediaMetadata metadata;
        Rating rating;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_RATING) || (rating = metadata.getRating(MediaMetadataCompat.METADATA_KEY_RATING)) == null) {
            return false;
        }
        return rating.hasHeart();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    class ConnectCallback extends MediaBrowser.ConnectionCallback {
        Context context;
        public boolean isConnecting = false;

        public ConnectCallback(Context context) {
            this.context = context;
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnected() {
            LogUtils.d("onConnected");
            this.isConnecting = false;
            MediaController mediaController = new MediaController(this.context, BaseConnection.this.mediaBrowser.getSessionToken());
            mediaController.registerCallback(BaseConnection.this.mediaControlCallback, BaseConnection.this.handler);
            BaseConnection.this.mediaController = mediaController;
            BaseConnection.this.onSessionCallback.onConnected(mediaController);
            BaseConnection.this.showState(mediaController);
            if (mediaController.getExtras() == null || !mediaController.getExtras().containsKey(Constants.KEY_MEDIA_CONNECTOR)) {
                return;
            }
            BaseConnection.this.onSessionCallback.onExtrasChanged(BaseConnection.this, mediaController.getExtras());
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnectionSuspended() {
            LogUtils.d("onConnectionSuspended");
            this.isConnecting = true;
            BaseConnection.this.onSessionCallback.onConnectionSuspended(BaseConnection.this);
        }

        @Override // android.media.browse.MediaBrowser.ConnectionCallback
        public void onConnectionFailed() {
            LogUtils.d("onConnectionFailed");
            this.isConnecting = false;
            BaseConnection.this.onSessionCallback.onConnectionFailed(BaseConnection.this);
        }
    }

    void showState(MediaController mediaController) {
        MediaMetadata metadata = mediaController.getMetadata();
        if (metadata != null) {
            for (String str : metadata.keySet()) {
                LogUtils.d(getClass().getSimpleName(), String.format(Locale.getDefault(), "[%s]:string=%s, text=%s, long=%d, rating=%s]", str, metadata.getString(str), metadata.getText(str), Long.valueOf(metadata.getLong(str)), metadata.getRating(str)));
            }
            if (metadata.getDescription() != null) {
                LogUtils.showDescription(metadata.getDescription());
            }
        }
        PlaybackState playbackState = mediaController.getPlaybackState();
        if (playbackState != null) {
            LogUtils.d(getClass().getSimpleName(), String.format(Locale.getDefault(), "[PlaybackState] state=%d, bufferedPosition=%d, position=%d, actions=%d, activeQueueItemId=%d, CustomActions=%s, ErrorMessage=%s, playbackSpeed=%f", Integer.valueOf(playbackState.getState()), Long.valueOf(playbackState.getBufferedPosition()), Long.valueOf(playbackState.getPosition()), Long.valueOf(playbackState.getActions()), Long.valueOf(playbackState.getActiveQueueItemId()), playbackState.getCustomActions(), playbackState.getErrorMessage(), Float.valueOf(playbackState.getPlaybackSpeed())));
            LogUtils.showBundle("PlaybackState.getExtras()", playbackState.getExtras());
        }
        if (mediaController.getQueue() != null) {
            Iterator<MediaSession.QueueItem> it = mediaController.getQueue().iterator();
            while (it.hasNext()) {
                LogUtils.showDescription(it.next().getDescription());
            }
        } else {
            LogUtils.d(getClass().getSimpleName(), "[Queue] is null");
        }
        LogUtils.d(getClass().getSimpleName(), "rating type = " + mediaController.getRatingType());
        LogUtils.d(getClass().getSimpleName(), "GetPackageName = " + mediaController.getPackageName());
        LogUtils.showBundle("extras", mediaController.getExtras());
        LogUtils.d(getClass().getSimpleName(), "flags = " + mediaController.getFlags());
        LogUtils.d(getClass().getSimpleName(), "queue title = " + ((Object) mediaController.getQueueTitle()));
    }
}
