package com.tencent.wecarbase.common;

import com.tencent.wecarbase.config.SDKConfig;

/* loaded from: /home/user/work/dex/classes.dex */
public class ConfigHolder {
    private static final ConfigHolder mInstance = new ConfigHolder();
    private static boolean sQuitWecarBase = false;
    private SDKConfig mConfig;
    private boolean mInitialized = false;

    public static ConfigHolder getInstance() {
        return mInstance;
    }

    public void setSDKConfig(SDKConfig sDKConfig) {
        this.mConfig = sDKConfig;
        setInitialized(true);
    }

    public static void setQuitWecarBase(boolean z) {
        sQuitWecarBase = z;
    }

    public static boolean isQuitWecarBase() {
        return sQuitWecarBase;
    }

    public SDKConfig getConfig() {
        return this.mConfig;
    }

    public void setInitialized(boolean z) {
        this.mInitialized = z;
    }

    public boolean hasInitialized() {
        return this.mInitialized;
    }
}
