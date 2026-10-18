package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface IRadioClient<T> {
    T closeApp(String str);

    T openApp(String str);

    T playAMChannel(String str);

    T playChannel(String str, String str2);

    T playFMChannel(String str);

    T startAutoScan();
}
