package com.tencent.wecarbase.client.model;

/* loaded from: /home/user/work/dex/classes.dex */
public class CodeInfo {
    private int codeType;
    private long expireTime;
    private String ticket;

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
        return "CodeInfo{ticket=" + this.ticket + "expireTime=" + this.expireTime + "codeType=" + this.codeType + '}';
    }

    public int getCodeType() {
        return this.codeType;
    }

    public void setCodeType(int i) {
        this.codeType = i;
    }
}
