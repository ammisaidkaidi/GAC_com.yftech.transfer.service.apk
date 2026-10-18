package com.tencent.wecarspeech.clientsdk.impl;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface IClientType {
    public static final long TYPE_MINIPROGRAM = 8;
    public static final long TYPE_MUSIC = 2;
    public static final long TYPE_NAVI = 1;
    public static final long TYPE_NEWS = 4;
    public static final long TYPE_NULL = 0;
    public static final long TYPE_VIDEO = 16;
    public static final long TYPE_WECHAT = 32;

    @Target({ElementType.PARAMETER})
    @Keep
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface ClientType {
    }
}
