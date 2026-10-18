package com.desaysv.mixmedia.support;

import android.media.session.MediaSession;
import com.desaysv.mixmedia.media.data.bean.ModeChoices;
import java.util.List;
import org.jetbrains.annotations.Nullable;

/* loaded from: /home/user/work/dex/classes.dex */
public interface MediaSessionCallback {
    default void onBtConnectState(Boolean bool) {
    }

    @Deprecated
    default void onGetKugouLoginInfo(@Nullable String str) {
    }

    @Deprecated
    default void onGetXmlyLoginInfo(@Nullable String str) {
    }

    default void onLyricReceived(@Nullable String str) {
    }

    default void onMediaChanged(String str, @Nullable CharSequence charSequence, long j, boolean z, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
    }

    default void onMediaQueueChanged(@Nullable List<MediaSession.QueueItem> list) {
    }

    default void onMediaQueueTitleChanged(@Nullable CharSequence charSequence) {
    }

    default void onPlayPositionChanged(long j, long j2, long j3) {
    }

    default void onQueryAlbumCallback(String str, int i, String str2, String str3, String str4) {
    }

    default void onQueryChoicesCallback(ModeChoices modeChoices) {
    }

    default void onSourceTypeChanged(EnumMediaSource enumMediaSource) {
    }

    default void onStateChanged(int i) {
    }

    default void onUsbConnectState(Boolean bool) {
    }
}
