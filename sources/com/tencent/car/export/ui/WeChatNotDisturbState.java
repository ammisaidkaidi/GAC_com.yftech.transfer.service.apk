package com.tencent.car.export.ui;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: /home/user/work/dex/classes.dex */
public interface WeChatNotDisturbState {
    public static final int HALF_NOTDISTURB_STATE = 1;
    public static final int NORMAL_STATE = 0;
    public static final int NOTDISTURB_STATE = 2;

    @Target({ElementType.PARAMETER})
    @Keep
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface NotDisturbState {
    }
}
