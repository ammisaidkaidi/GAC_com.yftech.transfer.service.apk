package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;
import android.support.annotation.NonNull;

@Keep
@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public interface IWirelessClient<T> {
    @NonNull
    T enableBluetooth(boolean z);

    @NonNull
    T enableHotsPot(boolean z);

    @NonNull
    T enableMobileNetwork(boolean z);

    @NonNull
    T enableWifi(boolean z);
}
