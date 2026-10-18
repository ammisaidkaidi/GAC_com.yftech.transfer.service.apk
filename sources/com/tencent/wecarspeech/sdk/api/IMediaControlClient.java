package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;
import android.support.annotation.NonNull;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface IMediaControlClient<T> {
    @NonNull
    T addFavorite(String str);

    @NonNull
    T cancelFavorite(String str);

    T next(String str);

    T pause(String str);

    T play(String str);

    T pre(String str);
}
