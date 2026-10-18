package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class HelpInfo {
    private String title;
    private List<String> words;

    public HelpInfo(String str, List<String> list) {
        this.title = str;
        this.words = list;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
