package com.tencent.tai.pal.client;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.telephone.ITelephone;
import com.tencent.tai.pal.telephone.PhoneContact;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALTelephoneManager extends ITelephone {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface TelInfoListener extends INoProguardInterface {
        void onCallStatusChange(int i, PhoneContact phoneContact);

        void onSetIncomingCallStrategy(boolean z, boolean z2);

        void onTelEnabled(boolean z);

        void onUploadTelContacts(List<PhoneContact> list);
    }

    int answerInComingCall();

    int call(String str, String str2);

    PhoneContact getRecentContact(int i);

    int ignoreInComingCall();

    boolean isTelEnable();

    boolean isTelephoneSupported();

    int refuseInComingCall();

    void registerTelInfoListener(TelInfoListener telInfoListener);

    void unregisterTelInfoListener(TelInfoListener telInfoListener);

    int viewCallRecord(int i);

    int viewPhonebook();
}
