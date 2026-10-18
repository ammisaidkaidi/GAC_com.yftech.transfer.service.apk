package com.tencent.car.export.ui;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: /home/user/work/dex/classes.dex */
public interface WeChatUnreadMsgState {
    public static final int EXIST_UNREADMSG_STATE = 1;
    public static final int NOT_EXIST_UNREADMSG_STATE = 0;

    @Target({ElementType.PARAMETER})
    @Keep
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface UnreadMsgState {
    }
}
