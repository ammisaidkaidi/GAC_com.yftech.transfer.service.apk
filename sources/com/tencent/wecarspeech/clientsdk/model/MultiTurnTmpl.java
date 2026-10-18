package com.tencent.wecarspeech.clientsdk.model;

/* loaded from: /home/user/work/dex/classes.dex */
public class MultiTurnTmpl {
    private String mBindedObject;
    private String mExtraInfo;
    private String mMultiTurnTmplId;
    private int mMultiTurnType;

    public int getMultiTurnType() {
        return this.mMultiTurnType;
    }

    public void setMultiTurnType(int i) {
        this.mMultiTurnType = i;
    }

    public String getBindedObject() {
        return this.mBindedObject;
    }

    public void setBindedObject(String str) {
        this.mBindedObject = str;
    }

    public String getMultiTurnTmplId() {
        return this.mMultiTurnTmplId;
    }

    public void setMultiTurnTmplId(String str) {
        this.mMultiTurnTmplId = str;
    }

    public String getExtraInfo() {
        return this.mExtraInfo;
    }

    public void setExtraInfo(String str) {
        this.mExtraInfo = str;
    }
}
