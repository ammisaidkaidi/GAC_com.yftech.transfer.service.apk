package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class DomainTypes {
    public static final String DOMAIN_TYPE_FLIGHT = "flight";
    public static final String DOMAIN_TYPE_MUSIC = "music";
    public static final String DOMAIN_TYPE_NAVI = "navigation";

    @Target({ElementType.PARAMETER})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface DomainType {
    }
}
