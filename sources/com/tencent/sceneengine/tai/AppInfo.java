package com.tencent.sceneengine.tai;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class AppInfo {
    public String appName;
    public boolean isReceiveSysMSg;
    public String pkgName;
    public String target;

    public AppInfo(String str, String str2, String str3, boolean z) {
        this.appName = str;
        this.pkgName = str2;
        this.target = str3;
        this.isReceiveSysMSg = z;
    }
}
