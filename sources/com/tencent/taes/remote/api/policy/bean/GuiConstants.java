package com.tencent.taes.remote.api.policy.bean;

/* loaded from: /home/user/work/dex/classes.dex */
public class GuiConstants {

    @Deprecated
    public static final int CALLBACK_GRANT = 301;
    public static final int CALLBACK_INTERRUPT = 302;
    public static final int FROM_SYSTEM = 2;
    public static final int FROM_USER = 1;
    public static final int FROM_VOIP = 3;
    public static final int REQUEST_GRANT = 101;
    public static final int REQUEST_REJECT = 102;
    public static final int UNDEFINED = 0;

    public static boolean isTypeValid(int i) {
        return 2 == i || 1 == i || 3 == i;
    }
}
