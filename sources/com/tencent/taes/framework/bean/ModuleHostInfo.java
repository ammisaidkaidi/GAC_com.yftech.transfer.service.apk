package com.tencent.taes.framework.bean;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class ModuleHostInfo {
    private String hostName;
    private boolean isLoaded;
    private String version;

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String getHostName() {
        return this.hostName;
    }

    public void setHostName(String str) {
        this.hostName = str;
    }

    public boolean isLoaded() {
        return this.isLoaded;
    }

    public void setLoaded(boolean z) {
        this.isLoaded = z;
    }
}
