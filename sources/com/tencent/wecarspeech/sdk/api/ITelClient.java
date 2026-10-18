package com.tencent.wecarspeech.sdk.api;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.sdk.model.PhoneContact;

@Keep
@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public interface ITelClient<T> {
    T answerInComingCall();

    T call(PhoneContact phoneContact);

    PhoneContact getRecentContact(int i);

    T refuseInComingCall();

    T viewCallRecord(int i);

    T viewPhonebook();
}
