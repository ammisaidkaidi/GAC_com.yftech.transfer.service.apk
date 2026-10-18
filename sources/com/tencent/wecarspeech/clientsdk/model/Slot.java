package com.tencent.wecarspeech.clientsdk.model;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class Slot {
    private String mName;
    private String mType;
    private List<String> mValues;

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public List<String> getValues() {
        return this.mValues;
    }

    public void setValues(List<String> list) {
        this.mValues = list;
    }
}
