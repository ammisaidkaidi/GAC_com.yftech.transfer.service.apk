package com.tencent.tai.pal.telephone;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.service.BaseAdapter;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class TelephoneAdapter extends BaseAdapter implements ITelephone {
    public static final int CALL_RECORD_ALL = 0;
    public static final int CALL_RECORD_ANSWER = 3;
    public static final int CALL_RECORD_DIAL = 1;
    public static final int CALL_RECORD_MISS = 2;
    public static final int PHONE_STATUS_END_CALL = 3;
    public static final int PHONE_STATUS_INCOMING_CALL = 0;
    public static final int PHONE_STATUS_IN_CALL = 2;
    public static final int PHONE_STATUS_OUTCOMING_CALL = 1;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnTelInfoListener extends INoProguardInterface {
        void onCallStatusChange(int i, PhoneContact phoneContact);

        void onSetIncomingCallStrategy(boolean z, boolean z2);

        void onTelEnabled(boolean z);

        void onUploadTelContacts(List<PhoneContact> list);
    }

    public abstract int answerInComingCall();

    public abstract int call(String str, String str2);

    public abstract PhoneContact getRecentContact(int i);

    public abstract int ignoreInComingCall();

    public abstract int refuseInComingCall();

    public abstract void registerOnTelInfoListener(OnTelInfoListener onTelInfoListener);

    public abstract void unregisterOnTelInfoListener(OnTelInfoListener onTelInfoListener);

    public abstract int viewCallRecord(int i);

    public abstract int viewPhonebook();
}
