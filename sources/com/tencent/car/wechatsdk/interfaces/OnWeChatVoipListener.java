package com.tencent.car.wechatsdk.interfaces;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface OnWeChatVoipListener {
    public static final int VOIP_CALLED_CANCEL = 10;
    public static final int VOIP_CALLED_CONNECTING = 4;
    public static final int VOIP_CALLED_FINISH = 9;
    public static final int VOIP_CALLED_START = 0;
    public static final int VOIP_CALLED_TALK = 8;
    public static final int VOIP_CALLING_CONNECTING = 17;
    public static final int VOIP_CALLING_FINISH = 20;
    public static final int VOIP_CALLING_INVITING = 13;
    public static final int VOIP_CALLING_TALKING = 19;
    public static final int VOIP_CALLING_WAITING_ACCEPT = 15;
    public static final int VOIP_STATE_NONE = 21;

    void onVoip(int i);
}
