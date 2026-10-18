package com.tencent.wecarbase.model;

import com.google.gson.annotations.SerializedName;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseModel {

    @SerializedName("err")
    public int errorCode = -1;
    private String info;
    private long nonce;
    private String sKey;
    private String xtraceid;

    public String getXtraceid() {
        return this.xtraceid;
    }

    public void setXtraceid(String str) {
        this.xtraceid = str;
    }

    public String getInfo() {
        return this.info;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(int i) {
        this.errorCode = i;
    }

    public boolean isOk() {
        return this.errorCode == 0;
    }

    public String getKey() {
        return this.sKey;
    }

    public void setKey(String str) {
        this.sKey = str;
    }

    public long getBNonce() {
        return this.nonce;
    }

    public void setBNonce(long j) {
        this.nonce = j;
    }
}
