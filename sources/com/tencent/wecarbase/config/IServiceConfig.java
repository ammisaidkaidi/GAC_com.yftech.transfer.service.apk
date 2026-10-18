package com.tencent.wecarbase.config;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IServiceConfig {
    String getHostPackage();

    void resetHostPackage();

    boolean shouldLaunchService();

    boolean shouldResetTaiClient();
}
