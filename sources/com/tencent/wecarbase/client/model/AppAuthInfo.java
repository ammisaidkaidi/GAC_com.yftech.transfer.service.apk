package com.tencent.wecarbase.client.model;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppAuthInfo {
    private int appToken;
    private String appUserId;
    private long expireTime;

    public String getAppUserId() {
        return this.appUserId;
    }

    public void setAppUserId(String str) {
        this.appUserId = str;
    }

    public int getAppToken() {
        return this.appToken;
    }

    public void setAppToken(int i) {
        this.appToken = i;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public void setExpireTime(long j) {
        this.expireTime = j;
    }
}
