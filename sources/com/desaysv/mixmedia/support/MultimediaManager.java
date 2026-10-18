package com.desaysv.mixmedia.support;

import android.content.Context;
import android.content.Intent;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.desaysv.mixmedia.BuildConfig;
import com.desaysv.mixmedia.media.data.bean.Album;
import com.desaysv.mixmedia.media.data.bean.ModeChoices;
import com.desaysv.mixmedia.media.data.bean.Music;
import com.desaysv.mixmedia.media.data.bean.User;
import com.desaysv.mixradio.media.data.model.xm.Profile;
import com.google.gson.Gson;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: /home/user/work/dex/classes.dex */
public class MultimediaManager {
    private static final String TAG = "MultimediaManager";
    private static MultimediaManager sInstance;
    private KugouUsbBtConnection kugouUsbBtConnection;
    private volatile MediaController mediaController;
    private WeakReference<Context> weakReferenceContext;
    private XMLYConnection xmlyConnection;
    private final HashSet<MediaSessionCallback> callbacks = new HashSet<>();
    private final HashSet<AccountCallback> accountCallbacks = new HashSet<>();
    private final AtomicBoolean needReconnect = new AtomicBoolean(true);
    private final Handler handler = new Handler(Looper.getMainLooper()) { // from class: com.desaysv.mixmedia.support.MultimediaManager.1
        @Override // android.os.Handler
        public void handleMessage(@NotNull Message message) {
            long duration = MultimediaManager.this.getDuration();
            LogUtils.d(MultimediaManager.TAG, "handleMessage(): " + message.what + ",  position = " + MultimediaManager.this.position + ", duration = " + duration);
            if (message.what == 3) {
                MultimediaManager.this.position.set(MultimediaManager.this.position.get() + 1000);
                if (!MultimediaManager.this.callbacks.isEmpty()) {
                    Iterator it = MultimediaManager.this.callbacks.iterator();
                    while (it.hasNext()) {
                        ((MediaSessionCallback) it.next()).onPlayPositionChanged(MultimediaManager.this.position.get(), MultimediaManager.this.positionBuffer.get(), duration);
                    }
                }
                if (MultimediaManager.this.position.get() < duration) {
                    sendEmptyMessageDelayed(3, 1000L);
                }
            } else if (message.what == 8 && MultimediaManager.this.weakReferenceContext.get() != null) {
                if (message.arg1 == 1) {
                    MultimediaManager.this.kugouUsbBtConnection.reconnect((Context) MultimediaManager.this.weakReferenceContext.get());
                } else if (message.arg1 == 2) {
                    MultimediaManager.this.xmlyConnection.reconnect((Context) MultimediaManager.this.weakReferenceContext.get());
                }
            }
            super.handleMessage(message);
        }
    };
    private final AtomicReference<String> mediaId = new AtomicReference<>("");
    private final AtomicLong position = new AtomicLong(0);
    private final AtomicLong positionBuffer = new AtomicLong(0);
    private final AtomicInteger state = new AtomicInteger();
    private volatile EnumMediaSource sourceType = EnumMediaSource.ONLINE_MUSIC;
    private final AtomicReference<String> lyric = new AtomicReference<>();
    private final OnSessionCallback mediaControlCallback = new OnSessionCallback() { // from class: com.desaysv.mixmedia.support.MultimediaManager.2
        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onConnected(@NotNull MediaController mediaController) {
            BaseConnection baseConnection;
            if (MultimediaManager.this.xmlyConnection.mediaController == mediaController) {
                baseConnection = MultimediaManager.this.xmlyConnection;
                mediaController.getTransportControls().sendCustomAction(Constants.KEY_REQUIRE_MEDIA_SOURCE, new Bundle());
            } else {
                baseConnection = MultimediaManager.this.kugouUsbBtConnection.mediaController == mediaController ? MultimediaManager.this.kugouUsbBtConnection : null;
            }
            if (baseConnection != null) {
                MultimediaManager.this.refreshLiveData(baseConnection);
                MultimediaManager.this.requestBtUsbConnState();
                MultimediaManager.this.requestLoginState();
            }
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onConnectionSuspended(@NotNull BaseConnection baseConnection) {
            MultimediaManager.this.mediaController = null;
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onConnectionFailed(@NotNull BaseConnection baseConnection) {
            MultimediaManager.this.mediaController = null;
            if (baseConnection == MultimediaManager.this.xmlyConnection) {
                MultimediaManager.this.xmlyConnection.mediaController = null;
                MultimediaManager.this.handler.sendMessageDelayed(MultimediaManager.this.handler.obtainMessage(8, 2, 0), 2000L);
            } else if (baseConnection == MultimediaManager.this.kugouUsbBtConnection) {
                MultimediaManager.this.kugouUsbBtConnection.mediaController = null;
                MultimediaManager.this.handler.sendMessageDelayed(MultimediaManager.this.handler.obtainMessage(8, 1, 0), 2000L);
            }
            if (MultimediaManager.this.callbacks.isEmpty()) {
                return;
            }
            Iterator it = MultimediaManager.this.callbacks.iterator();
            while (it.hasNext()) {
                MediaSessionCallback mediaSessionCallback = (MediaSessionCallback) it.next();
                mediaSessionCallback.onStateChanged(0);
                mediaSessionCallback.onMediaChanged("", "", 1L, false, null, null, null);
                mediaSessionCallback.onPlayPositionChanged(0L, 0L, 1L);
                mediaSessionCallback.onMediaQueueChanged(null);
                mediaSessionCallback.onMediaQueueTitleChanged(null);
            }
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onQueueChanged(@NotNull BaseConnection baseConnection, @Nullable List<MediaSession.QueueItem> list) {
            LogUtils.d(MultimediaManager.TAG, "onQueueChanged(): connection = " + baseConnection + ",  queue = " + list);
            LogUtils.d(MultimediaManager.TAG, "onQueueChanged(): mediaController = " + MultimediaManager.this.mediaController + ",  connection.mediaController = " + baseConnection.mediaController);
            if (baseConnection.mediaController == MultimediaManager.this.mediaController) {
                LogUtils.d(MultimediaManager.TAG, "onQueueChanged(): start callback");
                if (MultimediaManager.this.callbacks.isEmpty()) {
                    return;
                }
                Iterator it = MultimediaManager.this.callbacks.iterator();
                while (it.hasNext()) {
                    ((MediaSessionCallback) it.next()).onMediaQueueChanged(list);
                }
            }
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onMetadataChanged(@NotNull BaseConnection baseConnection, @Nullable MediaMetadata mediaMetadata) {
            LogUtils.d(MultimediaManager.TAG, "onMetadataChanged: connection =" + baseConnection + ", metadata = " + mediaMetadata);
            if (mediaMetadata != null && mediaMetadata.getDescription() != null) {
                LogUtils.showDescription(mediaMetadata.getDescription());
            }
            if (mediaMetadata != null) {
                LogUtils.d(MultimediaManager.TAG, "onMetadataChanged(): mediaController = " + MultimediaManager.this.mediaController + ",  connection.mediaController = " + baseConnection.mediaController);
                if (baseConnection.mediaController == MultimediaManager.this.mediaController) {
                    LogUtils.d(MultimediaManager.TAG, "onMetadataChanged 1");
                    String string = mediaMetadata.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
                    LogUtils.d(MultimediaManager.TAG, "onMetadataChanged id = " + string);
                    if (MultimediaManager.this.mediaId.get() == null || !Objects.equals(string, MultimediaManager.this.mediaId.get())) {
                        LogUtils.d(MultimediaManager.TAG, "onMetadataChanged 2");
                        String string2 = mediaMetadata.getString(MediaMetadataCompat.METADATA_KEY_TITLE);
                        String string3 = mediaMetadata.getString(MediaMetadataCompat.METADATA_KEY_ALBUM);
                        String string4 = mediaMetadata.getString(MediaMetadataCompat.METADATA_KEY_ARTIST);
                        long j = mediaMetadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
                        String string5 = mediaMetadata.getString(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI);
                        boolean z = mediaMetadata.containsKey(MediaMetadataCompat.METADATA_KEY_RATING) && mediaMetadata.getRating(MediaMetadataCompat.METADATA_KEY_RATING) != null && mediaMetadata.getRating(MediaMetadataCompat.METADATA_KEY_RATING).hasHeart();
                        MultimediaManager.this.mediaId.set(string);
                        MultimediaManager.this.lyric.set("");
                        LogUtils.d(MultimediaManager.TAG, "id = " + string);
                        if (MultimediaManager.this.callbacks.isEmpty()) {
                            return;
                        }
                        LogUtils.d(MultimediaManager.TAG, "onMetadataChanged 3");
                        Iterator it = MultimediaManager.this.callbacks.iterator();
                        while (it.hasNext()) {
                            ((MediaSessionCallback) it.next()).onMediaChanged(string, string2, j, z, string3, string4, string5);
                        }
                        return;
                    }
                    return;
                }
                LogUtils.d(MultimediaManager.TAG, "current media controller[" + MultimediaManager.this.mediaController + "] not equal " + baseConnection);
            }
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onPlaybackStateChanged(@NotNull BaseConnection baseConnection, @Nullable PlaybackState playbackState) {
            LogUtils.d(MultimediaManager.TAG, "onPlaybackStateChanged: connection =" + baseConnection + ", onPlaybackStateChanged(): " + playbackState);
            if (playbackState != null && playbackState.getExtras() != null) {
                LogUtils.showBundle("onPlaybackStateChanged", playbackState.getExtras());
            }
            if (playbackState != null) {
                if (baseConnection.mediaController == MultimediaManager.this.mediaController) {
                    MultimediaManager.this.state.set(playbackState.getState());
                    MultimediaManager.this.position.set(playbackState.getPosition());
                    MultimediaManager.this.positionBuffer.set(playbackState.getBufferedPosition());
                    if (playbackState.getState() == 3) {
                        MultimediaManager.this.handler.removeMessages(3);
                        if (MultimediaManager.this.sourceType != EnumMediaSource.BT_MUSIC) {
                            MultimediaManager.this.handler.sendEmptyMessageDelayed(playbackState.getState(), 1000L);
                        }
                    } else {
                        MultimediaManager.this.handler.removeMessages(3);
                    }
                    if (MultimediaManager.this.callbacks.isEmpty()) {
                        return;
                    }
                    Iterator it = MultimediaManager.this.callbacks.iterator();
                    while (it.hasNext()) {
                        MediaSessionCallback mediaSessionCallback = (MediaSessionCallback) it.next();
                        mediaSessionCallback.onStateChanged(playbackState.getState());
                        mediaSessionCallback.onPlayPositionChanged(MultimediaManager.this.position.get(), MultimediaManager.this.positionBuffer.get(), MultimediaManager.this.getDuration());
                    }
                    return;
                }
                if (playbackState.getState() == 3) {
                    LogUtils.d(MultimediaManager.TAG, "onPlaybackStateChanged: not focus and require it ");
                    MultimediaManager.this.handler.removeMessages(3);
                    MultimediaManager.this.handler.sendEmptyMessageDelayed(playbackState.getState(), 1000L);
                }
            }
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onQueueTitleChanged(@NotNull BaseConnection baseConnection, @Nullable CharSequence charSequence) {
            LogUtils.d(MultimediaManager.TAG, "onQueueTitleChanged: connection =" + baseConnection + ", onQueueTitleChanged(): " + ((Object) charSequence));
            LogUtils.d(MultimediaManager.TAG, "onQueueTitleChanged(): mediaController = " + MultimediaManager.this.mediaController + ",  connection.mediaController = " + baseConnection.mediaController);
            if (baseConnection.mediaController != MultimediaManager.this.mediaController || MultimediaManager.this.callbacks.isEmpty()) {
                return;
            }
            Iterator it = MultimediaManager.this.callbacks.iterator();
            while (it.hasNext()) {
                ((MediaSessionCallback) it.next()).onMediaQueueTitleChanged(charSequence);
            }
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onExtrasChanged(@NotNull BaseConnection baseConnection, @Nullable Bundle bundle) {
            LogUtils.showBundle("onExtrasChanged: connection =" + baseConnection + ", onExtrasChanged", bundle);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x0044, code lost:
        
            if (r8.equals(com.desaysv.mixmedia.support.Constants.KEY_MUSIC_LYRICS) != false) goto L27;
         */
        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onSessionEvent(@NotNull BaseConnection baseConnection, @NotNull String str, @Nullable Bundle bundle) {
            char c = 1;
            LogUtils.d(MultimediaManager.TAG, String.format("onSessionEvent: connection =" + baseConnection + ", MediaControllerCallback onSessionEvent():%s", str));
            LogUtils.showBundle("onSessionEvent", bundle);
            switch (str.hashCode()) {
                case -1590388536:
                    if (str.equals(Constants.KEY_USER)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -405930231:
                    if (str.equals("key_usb0_connect_state")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 173124184:
                    if (str.equals(Constants.KEY_QUERY_ALBUM)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1412498093:
                    if (str.equals(Constants.KEY_MEDIA_CONNECTOR)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 1529965722:
                    if (str.equals(Constants.KEY_QUERY_MODE)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1826820398:
                    break;
                case 2147425711:
                    if (str.equals("key_bt_connect_state")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    if (bundle != null) {
                        EnumMediaSource enumMediaSource = null;
                        if (bundle.containsKey(Constants.KEY_MEDIA_CONNECTOR)) {
                            LogUtils.d("extras.getInt = " + bundle.getInt(Constants.KEY_MEDIA_CONNECTOR));
                            enumMediaSource = EnumMediaSource.getMediaSourceByCode(bundle.getInt(Constants.KEY_MEDIA_CONNECTOR));
                        }
                        if (enumMediaSource == null || !MultimediaManager.this.onChangeMediaSource(enumMediaSource) || MultimediaManager.this.callbacks.isEmpty()) {
                            return;
                        }
                        Iterator it = MultimediaManager.this.callbacks.iterator();
                        while (it.hasNext()) {
                            ((MediaSessionCallback) it.next()).onSourceTypeChanged(enumMediaSource);
                        }
                        return;
                    }
                    return;
                case 1:
                    if (bundle == null || !bundle.containsKey(Constants.VALUE_MUSIC_LYRICS)) {
                        return;
                    }
                    String string = bundle.getString(Constants.VALUE_MUSIC_LYRICS);
                    MultimediaManager.this.setAtomicReference(MultimediaManager.this.lyric, string);
                    if (MultimediaManager.this.callbacks.isEmpty()) {
                        return;
                    }
                    Iterator it2 = MultimediaManager.this.callbacks.iterator();
                    while (it2.hasNext()) {
                        ((MediaSessionCallback) it2.next()).onLyricReceived(string);
                    }
                    return;
                case 2:
                    Iterator it3 = MultimediaManager.this.callbacks.iterator();
                    while (it3.hasNext()) {
                        MediaSessionCallback mediaSessionCallback = (MediaSessionCallback) it3.next();
                        if (bundle != null) {
                            mediaSessionCallback.onBtConnectState(Boolean.valueOf(bundle.getBoolean("value_bt_connect_state", false)));
                        }
                    }
                    return;
                case 3:
                    Iterator it4 = MultimediaManager.this.callbacks.iterator();
                    while (it4.hasNext()) {
                        MediaSessionCallback mediaSessionCallback2 = (MediaSessionCallback) it4.next();
                        if (bundle != null) {
                            mediaSessionCallback2.onUsbConnectState(Boolean.valueOf(bundle.getBoolean("value_usb_connect_state", false)));
                        }
                    }
                    return;
                case 4:
                    Iterator it5 = MultimediaManager.this.accountCallbacks.iterator();
                    while (it5.hasNext()) {
                        AccountCallback accountCallback = (AccountCallback) it5.next();
                        if (bundle != null) {
                            if (baseConnection != MultimediaManager.this.xmlyConnection) {
                                if (baseConnection == MultimediaManager.this.kugouUsbBtConnection) {
                                    bundle.setClassLoader(User.class.getClassLoader());
                                    accountCallback.onKugouUserChanged((User) bundle.getParcelable(Constants.VALUE_USER));
                                }
                            } else {
                                bundle.setClassLoader(Profile.class.getClassLoader());
                                accountCallback.onXmlyUserChanged((Profile) bundle.getParcelable(Constants.VALUE_USER));
                            }
                        }
                    }
                    return;
                case 5:
                    Iterator it6 = MultimediaManager.this.callbacks.iterator();
                    while (it6.hasNext()) {
                        MediaSessionCallback mediaSessionCallback3 = (MediaSessionCallback) it6.next();
                        if (bundle != null) {
                            bundle.setClassLoader(Album.class.getClassLoader());
                            mediaSessionCallback3.onQueryAlbumCallback(bundle.getString(Constants.VALUE_QUERY_GROUP), bundle.getInt(Constants.VALUE_QUERY_KEY), bundle.getString(Constants.VALUE_ALBUM_ID), bundle.getString(Constants.VALUE_IMAGE_URL), bundle.getString(Constants.VALUE_ALBUM_TITLE));
                        }
                    }
                    return;
                case 6:
                    Iterator it7 = MultimediaManager.this.callbacks.iterator();
                    while (it7.hasNext()) {
                        MediaSessionCallback mediaSessionCallback4 = (MediaSessionCallback) it7.next();
                        if (bundle != null) {
                            mediaSessionCallback4.onQueryChoicesCallback((ModeChoices) new Gson().fromJson(bundle.getString(Constants.KEY_QUERY_MODE), ModeChoices.class));
                        }
                    }
                    return;
                default:
                    return;
            }
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onSessionDestroyed(@NotNull BaseConnection baseConnection) {
            LogUtils.d(MultimediaManager.TAG, "onSessionDestroyed: connection =" + baseConnection + ", onSessionDestroyed()");
            if (baseConnection.mediaController != MultimediaManager.this.mediaController) {
                MultimediaManager.this.state.set(7);
                MultimediaManager.this.position.set(0L);
                MultimediaManager.this.positionBuffer.set(0L);
                MultimediaManager.this.mediaId.set("");
            }
        }

        @Override // com.desaysv.mixmedia.support.OnSessionCallback
        public void onAudioInfoChanged(@NotNull BaseConnection baseConnection, MediaController.PlaybackInfo playbackInfo) {
            LogUtils.d(MultimediaManager.TAG, "onAudioInfoChanged: connection =" + baseConnection + ", onAudioInfoChanged: info = " + playbackInfo);
        }
    };

    public static MultimediaManager getInstance() {
        if (sInstance == null) {
            synchronized (MultimediaManager.class) {
                if (sInstance == null) {
                    sInstance = new MultimediaManager();
                }
            }
        }
        return sInstance;
    }

    private MediaSession.QueueItem getQueueItem(BaseConnection baseConnection, String str) {
        if (baseConnection == null || baseConnection.getQueue() == null || baseConnection.getQueue().isEmpty() || TextUtils.isEmpty(str)) {
            LogUtils.d(TAG, "getQueueItem  return null");
            return null;
        }
        for (MediaSession.QueueItem queueItem : baseConnection.getQueue()) {
            if (queueItem.getDescription() != null && Objects.equals(queueItem.getDescription().getMediaId(), str)) {
                return queueItem;
            }
        }
        return null;
    }

    private MultimediaManager() {
    }

    public EnumMediaSource[] getMediaSourceArray() {
        return EnumMediaSource.values();
    }

    public MultimediaManager connect(Context context) {
        this.needReconnect.set(true);
        this.weakReferenceContext = new WeakReference<>(context);
        if (this.xmlyConnection == null) {
            this.xmlyConnection = new XMLYConnection(context, this.handler, this.mediaControlCallback);
        } else if (this.xmlyConnection.mediaController == null) {
            this.xmlyConnection.reconnect(context);
        }
        if (this.kugouUsbBtConnection == null) {
            this.kugouUsbBtConnection = new KugouUsbBtConnection(context, this.handler, this.mediaControlCallback);
        } else if (this.kugouUsbBtConnection.mediaController == null) {
            this.kugouUsbBtConnection.reconnect(context);
        }
        return this;
    }

    public void disConnect() {
        this.needReconnect.set(false);
        if (this.xmlyConnection != null) {
            this.xmlyConnection.mediaBrowser.disconnect();
        }
        if (this.kugouUsbBtConnection != null) {
            this.kugouUsbBtConnection.mediaBrowser.disconnect();
        }
    }

    public void changeMediaSource(EnumMediaSource enumMediaSource) {
        if (this.mediaController != null) {
            LogUtils.d(TAG, "[changeMediaSource] change source to " + enumMediaSource.getName());
            switch (enumMediaSource) {
                case ONLINE_MUSIC:
                case USB0_MUSIC:
                case BT_MUSIC:
                    Bundle bundle = new Bundle();
                    bundle.putInt(Constants.VALUE_MEDIA_SOURCE, enumMediaSource.getCode());
                    this.kugouUsbBtConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_MEDIA_SOURCE, bundle);
                    return;
                case ONLINE_TRACK:
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt(Constants.VALUE_MEDIA_SOURCE, enumMediaSource.getCode());
                    this.xmlyConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_MEDIA_SOURCE, bundle2);
                    return;
                default:
                    return;
            }
        }
    }

    @Deprecated
    public void play(MediaSession.QueueItem queueItem) {
        LogUtils.d(TAG, "play(): " + ((Object) queueItem.getDescription().getTitle()));
        if (this.mediaController == null || getQueue() == null) {
            return;
        }
        int indexOf = getQueue().indexOf(queueItem);
        LogUtils.d(TAG, "play(): index = " + indexOf);
        this.mediaController.getTransportControls().skipToQueueItem((long) indexOf);
    }

    public void play() {
        if (this.mediaController != null) {
            this.mediaController.getTransportControls().play();
        }
    }

    public void pause() {
        if (this.mediaController != null) {
            this.mediaController.getTransportControls().pause();
        }
    }

    public void previous() {
        if (this.mediaController != null) {
            this.mediaController.getTransportControls().skipToPrevious();
        }
    }

    public void next() {
        if (this.mediaController != null) {
            this.mediaController.getTransportControls().skipToNext();
        }
    }

    public void skipToQueueItem(long j) {
        if (this.mediaController != null) {
            this.mediaController.getTransportControls().skipToQueueItem(j);
        }
    }

    public void stop() {
        if (this.mediaController != null) {
            this.mediaController.getTransportControls().stop();
        }
    }

    public void collectOrNot() {
        if (this.mediaController != null) {
            this.mediaController.getTransportControls().setRating(Rating.newHeartRating(!getCollected()));
        }
    }

    public long getDuration() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
            return 0L;
        }
        return metadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
    }

    public long getPosition() {
        PlaybackState playbackState;
        if (this.mediaController == null || (playbackState = this.mediaController.getPlaybackState()) == null) {
            return 0L;
        }
        return playbackState.getPosition();
    }

    public long getPositionBuf() {
        PlaybackState playbackState;
        if (this.mediaController == null || (playbackState = this.mediaController.getPlaybackState()) == null) {
            return 0L;
        }
        return playbackState.getBufferedPosition();
    }

    public CharSequence getTitle() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_TITLE)) {
            return null;
        }
        return metadata.getString(MediaMetadataCompat.METADATA_KEY_TITLE);
    }

    public int getState() {
        PlaybackState playbackState;
        if (this.mediaController == null || (playbackState = this.mediaController.getPlaybackState()) == null) {
            return 0;
        }
        return playbackState.getState();
    }

    public String getMediaId() {
        MediaMetadata metadata;
        return (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_MEDIA_ID)) ? "" : metadata.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
    }

    public String getAlbum() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM)) {
            return null;
        }
        return metadata.getString(MediaMetadataCompat.METADATA_KEY_ALBUM);
    }

    public String getArtist() {
        MediaMetadata metadata;
        if (this.mediaController == null || (metadata = this.mediaController.getMetadata()) == null || !metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
            return null;
        }
        return metadata.getString(MediaMetadataCompat.METADATA_KEY_ARTIST);
    }

    public CharSequence getQueueTitle() {
        if (this.mediaController != null) {
            return this.mediaController.getQueueTitle();
        }
        return null;
    }

    public String getImageUrl() {
        if (this.mediaController == null || this.mediaController.getMetadata() == null) {
            return null;
        }
        return this.mediaController.getMetadata().getString(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI);
    }

    public boolean getCollected() {
        Rating rating;
        if (this.mediaController == null || this.mediaController.getMetadata() == null || (rating = this.mediaController.getMetadata().getRating(MediaMetadataCompat.METADATA_KEY_RATING)) == null) {
            return false;
        }
        return rating.hasHeart();
    }

    public EnumMediaSource getSourceType() {
        return this.sourceType;
    }

    public String getLyric() {
        return this.lyric.get();
    }

    public void registerCallback(MediaSessionCallback mediaSessionCallback) {
        if (mediaSessionCallback == null) {
            throw new RuntimeException("registerCallback : MediaSessionCallback cannot be null.");
        }
        this.callbacks.add(mediaSessionCallback);
        if (this.mediaController == null || this.mediaId.get() == null) {
            return;
        }
        long duration = getDuration();
        mediaSessionCallback.onLyricReceived(this.lyric.get());
        mediaSessionCallback.onMediaChanged(this.mediaId.get(), getTitle(), duration, getCollected(), getAlbum(), getArtist(), getImageUrl());
        mediaSessionCallback.onMediaQueueChanged(getQueue());
        mediaSessionCallback.onMediaQueueTitleChanged(getQueueTitle());
        mediaSessionCallback.onSourceTypeChanged(this.sourceType);
        mediaSessionCallback.onPlayPositionChanged(this.position.get(), this.positionBuffer.get(), duration);
        mediaSessionCallback.onStateChanged(this.state.get());
    }

    public void unregisterCallback(MediaSessionCallback mediaSessionCallback) {
        if (mediaSessionCallback == null) {
            throw new RuntimeException("unregisterCallback : MediaSessionCallback cannot be null.");
        }
        this.callbacks.remove(mediaSessionCallback);
    }

    public void addAccountListener(AccountCallback accountCallback) {
        if (accountCallback == null) {
            throw new RuntimeException("addAccountListener : callback cannot be null.");
        }
        this.accountCallbacks.add(accountCallback);
    }

    public void removeAccountListener(AccountCallback accountCallback) {
        if (accountCallback == null) {
            throw new RuntimeException("unregisterCallback : MediaSessionCallback cannot be null.");
        }
        this.accountCallbacks.remove(accountCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshLiveData(BaseConnection baseConnection) {
        LogUtils.d(TAG, "[refreshLiveData] connection = " + baseConnection);
        if (baseConnection == null || baseConnection.mediaController == null) {
            return;
        }
        this.mediaController = baseConnection.mediaController;
        long nowPlayingDuration = baseConnection.getNowPlayingDuration();
        this.position.set(baseConnection.getPosition());
        this.positionBuffer.set(baseConnection.getBufferedPosition());
        this.state.set(baseConnection.getPlayState());
        this.sourceType = baseConnection.getMediaSource();
        setAtomicReference(this.mediaId, baseConnection.getNowPlayingMediaId());
        if (baseConnection.getPlayState() == 3) {
            this.handler.removeMessages(3);
            if (this.sourceType != EnumMediaSource.BT_MUSIC) {
                this.handler.sendEmptyMessage(3);
            }
        }
        if (this.callbacks.isEmpty()) {
            return;
        }
        Iterator<MediaSessionCallback> it = this.callbacks.iterator();
        while (it.hasNext()) {
            MediaSessionCallback next = it.next();
            next.onStateChanged(baseConnection.getPlayState());
            next.onMediaChanged(this.mediaId.get(), getTitle(), nowPlayingDuration, getCollected(), getAlbum(), getArtist(), getImageUrl());
            next.onPlayPositionChanged(this.position.get(), this.positionBuffer.get(), nowPlayingDuration);
            next.onMediaQueueChanged(getQueue());
            next.onMediaQueueTitleChanged(getQueueTitle());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T> void setAtomicReference(AtomicReference<T> atomicReference, T t) {
        if (Objects.equals(atomicReference.get(), t)) {
            return;
        }
        atomicReference.set(t);
    }

    private String getNowPlayingArtist() {
        if (this.mediaController == null || this.mediaController.getMetadata() == null) {
            return null;
        }
        MediaMetadata metadata = this.mediaController.getMetadata();
        if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ARTIST)) {
            return metadata.getString(MediaMetadataCompat.METADATA_KEY_ARTIST);
        }
        return null;
    }

    private String getNowPlayingTitle() {
        if (this.mediaController == null || this.mediaController.getMetadata() == null) {
            return null;
        }
        MediaMetadata metadata = this.mediaController.getMetadata();
        if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_TITLE)) {
            return metadata.getString(MediaMetadataCompat.METADATA_KEY_TITLE);
        }
        return null;
    }

    private long getNowPlayingDuration() {
        if (this.mediaController == null || this.mediaController.getMetadata() == null) {
            return 0L;
        }
        MediaMetadata metadata = this.mediaController.getMetadata();
        if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DURATION)) {
            return metadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
        return 0L;
    }

    private String getNowPlayingDisplayTitle() {
        if (this.mediaController == null || this.mediaController.getMetadata() == null) {
            return null;
        }
        MediaMetadata metadata = this.mediaController.getMetadata();
        if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE)) {
            return metadata.getString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE);
        }
        return null;
    }

    private String getNowPlayingAlbum() {
        if (this.mediaController == null || this.mediaController.getMetadata() == null) {
            return null;
        }
        MediaMetadata metadata = this.mediaController.getMetadata();
        if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_ALBUM)) {
            return metadata.getString(MediaMetadataCompat.METADATA_KEY_ALBUM);
        }
        return null;
    }

    private String getNowPlayingMediaId() {
        if (this.mediaController == null || this.mediaController.getMetadata() == null) {
            return null;
        }
        MediaMetadata metadata = this.mediaController.getMetadata();
        if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_MEDIA_ID)) {
            return metadata.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
        }
        return null;
    }

    private String getNowPlayingDisplayIconUrl() {
        if (this.mediaController == null || this.mediaController.getMetadata() == null) {
            return null;
        }
        MediaMetadata metadata = this.mediaController.getMetadata();
        if (metadata.containsKey(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI)) {
            return metadata.getString(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI);
        }
        return null;
    }

    public List<MediaSession.QueueItem> getQueue() {
        if (this.mediaController == null || this.mediaController.getQueue() == null) {
            return null;
        }
        return this.mediaController.getQueue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onChangeMediaSource(EnumMediaSource enumMediaSource) {
        LogUtils.d(TAG, "[onChangeMediaSource] source = " + enumMediaSource + ", sourceType = " + this.sourceType);
        if (enumMediaSource == null) {
            return false;
        }
        BaseConnection baseConnection = null;
        switch (enumMediaSource) {
            case ONLINE_MUSIC:
            case USB0_MUSIC:
            case BT_MUSIC:
                baseConnection = this.kugouUsbBtConnection;
                LogUtils.d(TAG, "[onChangeMediaSource] connection to kugou: " + enumMediaSource.getName());
                break;
            case ONLINE_TRACK:
                baseConnection = this.xmlyConnection;
                LogUtils.d(TAG, "[onChangeMediaSource] connection to ximalaya: " + enumMediaSource.getName());
                break;
            default:
                LogUtils.d(TAG, "[onChangeMediaSource] connection null ");
                break;
        }
        this.mediaController = baseConnection.mediaController;
        this.sourceType = enumMediaSource;
        refreshLiveData(baseConnection);
        return true;
    }

    public static void startMixMedia(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClassName(BuildConfig.LIBRARY_PACKAGE_NAME, "com.desaysv.mixmedia.MainActivity");
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        context.startActivity(intent);
    }

    public static void startAccountActivity(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setClassName(BuildConfig.LIBRARY_PACKAGE_NAME, "com.desaysv.mixmedia.AccountActivity");
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        context.startActivity(intent);
    }

    public void requestLoginState() {
        LogUtils.d(TAG, "requestLoginState");
        if (this.kugouUsbBtConnection != null && this.kugouUsbBtConnection.mediaController != null) {
            this.kugouUsbBtConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_USER, new Bundle());
        }
        if (this.xmlyConnection == null || this.xmlyConnection.mediaController == null) {
            return;
        }
        this.xmlyConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_USER, new Bundle());
    }

    public Boolean requestBtUsbConnState() {
        if (this.kugouUsbBtConnection != null && this.kugouUsbBtConnection.mediaController != null) {
            this.kugouUsbBtConnection.mediaController.getTransportControls().sendCustomAction(Constants.REQUEST_BT_USB_CONN_STATE, new Bundle());
        }
        return false;
    }

    public void requestMediaSource() {
        if (this.mediaController != null) {
            this.mediaController.getTransportControls().sendCustomAction(Constants.KEY_REQUIRE_MEDIA_SOURCE, new Bundle());
        }
    }

    public void queryModeChoice() {
        if (this.xmlyConnection.mediaController != null) {
            this.xmlyConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_QUERY_MODE, new Bundle());
        } else if (this.kugouUsbBtConnection.mediaController != null) {
            this.xmlyConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_QUERY_MODE, new Bundle());
        }
    }

    public void queryAlbum(String str, int i) {
        if (this.kugouUsbBtConnection.mediaController != null) {
            Bundle bundle = new Bundle();
            bundle.putInt(Constants.VALUE_QUERY_KEY, i);
            bundle.putString(Constants.VALUE_QUERY_GROUP, str);
            this.kugouUsbBtConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_QUERY_ALBUM, bundle);
        }
        if (this.xmlyConnection.mediaController != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(Constants.VALUE_QUERY_KEY, i);
            bundle2.putString(Constants.VALUE_QUERY_GROUP, str);
            this.xmlyConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_QUERY_ALBUM, bundle2);
        }
    }

    public void playAlbum(int i, String str) {
        if (this.kugouUsbBtConnection.mediaController != null) {
            Bundle bundle = new Bundle();
            bundle.putInt(Constants.VALUE_QUERY_KEY, i);
            bundle.putString(Constants.VALUE_ALBUM_ID, str);
            this.kugouUsbBtConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_PLAY_ALBUM, bundle);
        }
        if (this.xmlyConnection.mediaController != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(Constants.VALUE_QUERY_KEY, i);
            bundle2.putString(Constants.KEY_ACTIVE_ITEM_ID, str);
            this.kugouUsbBtConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_PLAY_TRACK, bundle2);
        }
    }

    public void playKgSongs(String str, List<Music> list) {
        if (this.kugouUsbBtConnection.mediaController != null) {
            Bundle bundle = new Bundle();
            bundle.putString(Constants.KEY_QUEUE_TITLE, str);
            bundle.putString(Constants.KEY_ACTION_PLAY_SONGS, new Gson().toJson(list));
            this.kugouUsbBtConnection.mediaController.getTransportControls().sendCustomAction(Constants.KEY_ACTION_PLAY_SONGS, bundle);
        }
    }
}
