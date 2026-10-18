package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;
import android.support.annotation.NonNull;

@Keep
@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public interface IVolumeClient<T> {
    @NonNull
    T decVolume(int i);

    @NonNull
    T incVolume(int i);

    @NonNull
    T maxVolume(int i);

    @NonNull
    T minVolume(int i);

    @NonNull
    T muteVolume(boolean z, int i);

    @NonNull
    T setVolume(int i, int i2);
}
