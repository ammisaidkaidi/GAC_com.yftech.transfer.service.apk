package com.tencent.car.export.ui;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: /home/user/work/dex/classes.dex */
public interface WeChatFunctionType {
    public static final int OPEN_INSTRUCTION = 3;
    public static final int SEND_MSG = 1;
    public static final int SEND_VOIP = 2;
    public static final int UNREAD_MSG = 0;

    @Target({ElementType.PARAMETER})
    @Keep
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface FunctionType {
    }
}
