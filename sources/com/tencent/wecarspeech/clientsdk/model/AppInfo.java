package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class AppInfo {
    private String alias;
    private String appName;
    private long appType;
    private String pkgName;

    public AppInfo(String str, String str2) {
        this.appName = str;
        this.pkgName = str2;
    }

    public AppInfo(String str, String str2, long j) {
        this(str, str2);
        this.appType = j;
    }

    public AppInfo(String str, String str2, String str3, long j) {
        this(str, str2);
        this.appType = j;
        this.alias = str3;
    }
}
