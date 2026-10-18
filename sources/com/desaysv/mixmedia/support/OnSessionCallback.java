package com.desaysv.mixmedia.support;

import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public interface OnSessionCallback {
    void onAudioInfoChanged(@NotNull BaseConnection baseConnection, MediaController.PlaybackInfo playbackInfo);

    void onConnected(@NotNull MediaController mediaController);

    void onConnectionFailed(@NotNull BaseConnection baseConnection);

    void onConnectionSuspended(@NotNull BaseConnection baseConnection);

    void onExtrasChanged(@NotNull BaseConnection baseConnection, @Nullable Bundle bundle);

    void onMetadataChanged(@NotNull BaseConnection baseConnection, @Nullable MediaMetadata mediaMetadata);

    void onPlaybackStateChanged(@NotNull BaseConnection baseConnection, @Nullable PlaybackState playbackState);

    void onQueueChanged(@NotNull BaseConnection baseConnection, @Nullable List<MediaSession.QueueItem> list);

    void onQueueTitleChanged(@NotNull BaseConnection baseConnection, @Nullable CharSequence charSequence);

    void onSessionDestroyed(@NotNull BaseConnection baseConnection);

    void onSessionEvent(@NotNull BaseConnection baseConnection, @NotNull String str, @Nullable Bundle bundle);
}
