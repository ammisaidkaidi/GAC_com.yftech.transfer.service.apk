package com.tencent.taes.framework.interfaces;

import android.content.Context;
import android.content.Intent;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IRouterStrategy {
    ServiceItemInfo getHostServiceInfo();

    void scanAndSortService(Context context, String str, List<String> list);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ServiceItemInfo {
        public Intent intent;
        public String pkgName;
        public int priority;
        public long sdkVersion;
        public String versionCode;

        public ServiceItemInfo(String str, long j, String str2, Intent intent) {
            this.versionCode = str;
            this.sdkVersion = j;
            this.pkgName = str2;
            this.intent = intent;
        }

        public String toString() {
            return "ServiceItemInfo{versionCode=" + this.versionCode + "sdkVersion=" + this.sdkVersion + ", pkgName='" + this.pkgName + "', priority=" + this.priority + ", intent=" + this.intent + '}';
        }
    }
}
