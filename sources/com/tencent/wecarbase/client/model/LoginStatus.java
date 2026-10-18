package com.tencent.wecarbase.client.model;

/* loaded from: /home/user/work/dex/classes.dex */
public class LoginStatus {
    private long expireTime;
    private int isLinked;
    private long isLogin;
    private int isLoginUser;
    private int isLoginVUser;
    private int isTokenExpired;
    private long lastLoginTime;

    public int getIsLoginUser() {
        return this.isLoginUser;
    }

    public void setIsLoginUser(int i) {
        this.isLoginUser = i;
    }

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

    public long getLastLoginTime() {
        return this.lastLoginTime;
    }

    public void setLastLoginTime(long j) {
        this.lastLoginTime = j;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public void setExpireTime(long j) {
        this.expireTime = j;
    }

    public long getIsLogin() {
        return this.isLogin;
    }

    public void setIsLogin(long j) {
        this.isLogin = j;
    }

    public boolean hasLoginUser() {
        return this.isLoginUser == 1;
    }

    public boolean hasLoginVUser() {
        return this.isLoginVUser == 1;
    }

    public boolean hasLinked() {
        return this.isLinked == 1;
    }

    public boolean hasLoginQQ() {
        return this.isLogin == 1;
    }

    public boolean isTokenExpired() {
        return this.isTokenExpired == 1;
    }

    public void setIsTokenExpired(int i) {
        this.isTokenExpired = i;
    }
}
