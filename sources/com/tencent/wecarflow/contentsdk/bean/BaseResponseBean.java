package com.tencent.wecarflow.contentsdk.bean;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseResponseBean {
    protected int errcode = -1;
    protected int id;

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
    }

    public String toString() {
        return "errcode : " + this.errcode;
    }

    public boolean isSuccess() {
        return this.errcode == 0;
    }

    public boolean isQQExpired() {
        return this.errcode == 800;
    }

    public boolean isWxExpired() {
        return this.errcode == 801;
    }

    public boolean isNewUser() {
        return this.errcode == 860;
    }

    public boolean shouldBind() {
        return this.errcode == 861;
    }
}
