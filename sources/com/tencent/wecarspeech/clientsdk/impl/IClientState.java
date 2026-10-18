package com.tencent.wecarspeech.clientsdk.impl;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface IClientState {
    public static final long STATE_ALIVE = 16;
    public static final long STATE_FRONT = 1;
    public static final long STATE_NAVI = 4;
    public static final long STATE_NAVI_CARD_OPEN = 32;
    public static final long STATE_NAVI_MULTI_PLAN_VIEW = 64;
    public static final long STATE_PLAYING = 2;
    public static final long STATE_POI_VIEW = 8;

    @Target({ElementType.PARAMETER})
    @Keep
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface StateType {
    }
}
