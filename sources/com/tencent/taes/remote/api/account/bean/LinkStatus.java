package com.tencent.taes.remote.api.account.bean;

/* loaded from: /home/user/work/dex/classes.dex */
public class LinkStatus {
    private int isLinked;
    private int isLoginVUser;
    private long linkTime;

    public int getIsLoginVUser() {
        return this.isLoginVUser;
    }

    public void setIsLoginVUser(int i) {
        this.isLoginVUser = i;
    }

    public int getIsLinked() {
        return this.isLinked;
    }

    public void setIsLinked(int i) {
        this.isLinked = i;
    }

    public long getLinkTime() {
        return this.linkTime;
    }

    public void setLinkTime(long j) {
        this.linkTime = j;
    }

    public boolean hasLoginVUser() {
        return this.isLoginVUser == 1;
    }

    public boolean hasLinked() {
        return this.isLinked == 1;
    }
}
