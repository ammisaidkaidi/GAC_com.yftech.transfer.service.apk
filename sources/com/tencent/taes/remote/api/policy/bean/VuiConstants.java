package com.tencent.taes.remote.api.policy.bean;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public class VuiConstants {

    @Deprecated
    public static final int ASSISTANT = 20;

    @Deprecated
    public static final int ASSISTANT_RECORD = 100;
    public static final int CALLBACK_GRANT = 3000;
    public static final int CALLBACK_IGNORE = 3002;
    public static final int CALLBACK_INTERRUPT = 3004;
    public static final int CALLBACK_MIX = 3001;
    public static final int CALLBACK_MUTE_WAIT = 3003;
    public static final int CALLBACK_UNDEFINED = -1;

    @Deprecated
    public static final int INFORMATION = 60;

    @Deprecated
    public static final int MEDIA_STREAM = 110;

    @Deprecated
    public static final int MESSAGING = 30;

    @Deprecated
    public static final int NAVI_GUIDANCE_L1 = 60;

    @Deprecated
    public static final int NAVI_GUIDANCE_L2 = 50;

    @Deprecated
    public static final int NOTIFICATION = 90;

    @Deprecated
    public static final int PHONE = 10;
    public static final int REQUEST_ERROR = 1000;
    public static final int REQUEST_GRANT = 1001;

    @Deprecated
    public static final int REQUEST_GRANT_DIDI = 1003;
    public static final int REQUEST_GRANT_MIX = 1002;
    public static final int REQUEST_REJECT = 1005;
    public static final int REQUEST_UNDEFINED = -1;
    public static final int REQUEST_WAIT = 1004;
    public static final int TX_IM_TTS = 30;
    public static final int TX_MEDIA = 110;
    public static final int TX_NAVI_GUIDANCE_L1 = 60;
    public static final int TX_NAVI_GUIDANCE_L2 = 50;
    public static final int TX_NOTIFICATION = 80;
    public static final int TX_PHONE = 10;
    public static final int TX_TTS = 90;
    public static final int TX_VR = 100;
    public static final int TX_VR_DUPLEX = 101;
    public static final int TX_VR_TTS = 20;
    public static final int UNDEFINED = 0;

    @Deprecated
    public static final int WECAR_NOTIFICATION = 80;

    public static boolean isTypeValid(int i) {
        return 10 == i || 20 == i || 30 == i || 50 == i || 60 == i || 80 == i || 100 == i || 110 == i || 101 == i;
    }
}
