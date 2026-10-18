package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface ThirdAppClient<T> {
    T closeApp(String str);

    T openApp(String str);
}
