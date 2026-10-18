package com.tencent.taes.remote.api.account.bean;

/* loaded from: /home/user/work/dex/classes.dex */
public class CodeInfo {
    public static final int QR_MOSS = 2;
    public static final int QR_MY_CAR = 1;
    private int codeType;
    private long expireTime;
    private int isExpire;
    private int isLoginUser;
    private int isScanned;
    private long liveTime;
    private String ticket;
    private String url;

    public String getTicket() {
        return this.ticket;
    }

    public void setTicket(String str) {
        this.ticket = str;
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public void setExpireTime(long j) {
        this.expireTime = j;
    }

    public String toString() {
        return "CodeInfo{ticket=" + this.ticket + ", url=" + this.url + ", expireTime=" + this.expireTime + ", codeType=" + this.codeType + '}';
    }

    public int getCodeType() {
        return this.codeType;
    }

    public void setCodeType(int i) {
        this.codeType = i;
    }

    public int getIsScanned() {
        return this.isScanned;
    }

    public int getIsLoginUser() {
        return this.isLoginUser;
    }

    public int getIsExpire() {
        return this.isExpire;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public long getLiveTime() {
        return this.liveTime;
    }

    public void setLiveTime(long j) {
        this.liveTime = j;
    }
}
