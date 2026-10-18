package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;
import android.support.annotation.NonNull;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface IMusicClient<T> {
    @NonNull
    T addFavorite();

    @NonNull
    T cancelFavorite();

    T closeApp(String str);

    T isPlayModeSupported(int i);

    T next();

    T openApp(String str);

    T pause();

    T play();

    T playByMediaSource(String str, String str2);

    T playSong(String str, String str2, String str3);

    T pre();

    T searchSong(String str, String str2, String str3);

    T setPlayMode(int i);
}
