package com.tencent.car.export.ui;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: /home/user/work/dex/classes.dex */
public interface WeChatUIState {
    public static final int BACKGROUD_STATE = 0;
    public static final int FRONT_STATE = 1;

    @Target({ElementType.PARAMETER})
    @Keep
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface UIState {
    }
}
