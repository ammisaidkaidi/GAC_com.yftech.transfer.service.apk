package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;
import android.support.annotation.NonNull;

@Keep
@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public interface IScreenClient<T> {
    @NonNull
    T decBrightness();

    @NonNull
    T decBrightnessLevel(int i);

    @NonNull
    T incBrightness();

    @NonNull
    T incBrightnessLevel(int i);

    @NonNull
    T maxBrightness();

    @NonNull
    T minBrightness();

    @NonNull
    T muteScreen();

    @NonNull
    T setBrightness(int i);

    @NonNull
    T wakeScreen();
}
