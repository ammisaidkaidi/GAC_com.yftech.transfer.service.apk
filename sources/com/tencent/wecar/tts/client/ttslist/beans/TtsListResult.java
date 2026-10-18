package com.tencent.wecar.tts.client.ttslist.beans;

import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class TtsListResult {
    private int errcode;
    private String errmsg;
    private ArrayList<TtsData> ttsDataList;

    public int getErrcode() {
        return this.errcode;
    }

    public void setErrcode(int i) {
        this.errcode = i;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public ArrayList<TtsData> getTtsDataList() {
        return this.ttsDataList;
    }

    public void setTtsDataList(ArrayList<TtsData> arrayList) {
        this.ttsDataList = arrayList;
    }
}
