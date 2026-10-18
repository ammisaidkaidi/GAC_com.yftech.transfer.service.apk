package com.tencent.tai.pal.exception;

import com.tencent.tai.pal.INoProguardClass;

/* loaded from: /home/user/work/dex/classes.dex */
public class FeatureNotSupportedException extends RuntimeException implements INoProguardClass {

    /* renamed from: a, reason: collision with root package name */
    private String f113a;

    public FeatureNotSupportedException(String str) {
        super("FeatureNotSupportedException found. NOT supported feature:" + str);
        this.f113a = str;
    }

    public String getFeatureName() {
        return this.f113a;
    }
}
