package com.tencent.wecarbase.policy;

/* loaded from: /home/user/work/dex/classes.dex */
public class GuiConstants {
    public static final int CALLBACK_GRANT = 301;
    public static final int CALLBACK_IGNORE = 303;
    public static final int CALLBACK_INTERRUPT = 302;
    public static final int IM = 30;

    @Deprecated
    public static final int MESSAGE = 30;

    @Deprecated
    public static final int PHONE = 10;

    @Deprecated
    public static final int RECORD = 20;
    public static final int REQUEST_ERROR = 104;
    public static final int REQUEST_GRANT = 101;
    public static final int REQUEST_REJECT = 102;
    public static final int REQUEST_WAIT = 103;
    public static final int TAI_MESSAGE = 40;
    static final int UNDEFINED = 0;
    public static final int VOIP = 10;
    public static final int VR = 20;

    static boolean isTypeValid(int i) {
        return 10 == i || 20 == i || 30 == i || 40 == i;
    }
}
