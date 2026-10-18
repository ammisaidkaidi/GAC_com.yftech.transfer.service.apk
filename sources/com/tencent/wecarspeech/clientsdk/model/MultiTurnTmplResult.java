package com.tencent.wecarspeech.clientsdk.model;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MultiTurnTmplResult {
    private String mIntentName;
    private int mMtExTimes;
    private int mMultiTurnExceptionType;
    private MultiTurnTmpl mMultiTurnTmpl;
    private List<Slot> mSlots;

    public MultiTurnTmpl getMultiTurnTmpl() {
        return this.mMultiTurnTmpl;
    }

    public void setMultiTurnTmpl(MultiTurnTmpl multiTurnTmpl) {
        this.mMultiTurnTmpl = multiTurnTmpl;
    }

    public int getMultiTurnExceptionType() {
        return this.mMultiTurnExceptionType;
    }

    public void setMultiTurnExceptionType(int i) {
        this.mMultiTurnExceptionType = i;
    }

    public int getMtExTimes() {
        return this.mMtExTimes;
    }

    public void setMtExTimes(int i) {
        this.mMtExTimes = i;
    }

    public String getIntentName() {
        return this.mIntentName;
    }

    public void setIntentName(String str) {
        this.mIntentName = str;
    }

    public List<Slot> getSlots() {
        return this.mSlots;
    }

    public void setSlots(List<Slot> list) {
        this.mSlots = list;
    }
}
