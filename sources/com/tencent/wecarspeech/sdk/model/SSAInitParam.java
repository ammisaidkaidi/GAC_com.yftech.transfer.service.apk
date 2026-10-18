package com.tencent.wecarspeech.sdk.model;

import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class SSAInitParam {
    public String appId;
    public String appToken;
    public Integer customWakeWordThreshold;
    public String deviceUniqueId;
    public boolean floatBtnEnabled;
    public String storageRootPath;
    public ArrayList<String> wakeupKeywords;

    @Deprecated
    public void setCustomWakeWordThreshold(int i) {
        this.customWakeWordThreshold = Integer.valueOf(i);
    }

    @Deprecated
    public void setDeviceUniqueId(String str) {
        this.deviceUniqueId = str;
    }

    public void setFloatBtnEnabled(boolean z) {
        this.floatBtnEnabled = z;
    }

    @Deprecated
    public void setStorageRootPath(String str) {
        this.storageRootPath = str;
    }

    public void setWakeupKeywords(ArrayList<String> arrayList) {
        this.wakeupKeywords = arrayList;
    }
}
