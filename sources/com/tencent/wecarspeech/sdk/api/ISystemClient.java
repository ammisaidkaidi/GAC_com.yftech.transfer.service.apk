package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface ISystemClient<T> {
    String getSysCurrentNavi();

    T openDomainHelp(String str, String str2);

    T openGlobalHelp();

    T toggleAction(boolean z, String str, String str2, int i);
}
