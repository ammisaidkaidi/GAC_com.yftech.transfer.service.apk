package com.tencent.wecarflow.contentsdk.bean;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class RadioSecondResponseBean extends BaseResponseBean {
    private List<RadioTabBean> tabs;

    public List<RadioTabBean> getTabs() {
        return this.tabs;
    }

    public void setTabs(List<RadioTabBean> list) {
        this.tabs = list;
    }
}
