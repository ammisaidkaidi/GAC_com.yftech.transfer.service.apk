package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class VrSprite {
    public static final int STATE_BROADCAST = 30;
    public static final int STATE_IDLE = 10;
    public static final int STATE_LOADING = 20;

    @Target({ElementType.PARAMETER})
    @Keep
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface StateType {
    }
}
