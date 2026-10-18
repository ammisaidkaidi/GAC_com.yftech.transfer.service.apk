package com.tencent.taes.framework.bean;

import java.io.Serializable;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseInfo implements Serializable, Comparable<BaseInfo> {
    private static final long serialVersionUID = 7689157515674961581L;
    protected String mAppId;
    protected long mLastUsedTime;
    protected AppType mType;

    public String getAppId() {
        return this.mAppId;
    }

    public void setAppId(String str) {
        this.mAppId = str;
    }

    public long getLastUsedTime() {
        return this.mLastUsedTime;
    }

    public void setLastUsedTime(long j) {
        this.mLastUsedTime = j;
    }

    public AppType getType() {
        return this.mType;
    }

    public void setType(AppType appType) {
        this.mType = appType;
    }

    @Override // java.lang.Comparable
    public int compareTo(BaseInfo baseInfo) {
        return baseInfo.mLastUsedTime - this.mLastUsedTime >= 0 ? 1 : -1;
    }
}
