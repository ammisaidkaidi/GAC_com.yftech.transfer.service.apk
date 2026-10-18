package com.tencent.wecarflow.contentsdk.bean;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class AudioBookSecondResponseBean extends BaseResponseBean {
    private List<AudioBookTabBean> tabs;

    public List<AudioBookTabBean> getTabs() {
        return this.tabs;
    }

    public void setTabs(List<AudioBookTabBean> list) {
        this.tabs = list;
    }
}
