package com.tencent.wecarflow.contentsdk.bean;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MusicSecondResponseBean extends BaseResponseBean {
    private List<MusicTabBean> tabs;

    public List<MusicTabBean> getTabs() {
        return this.tabs;
    }

    public void setTabs(List<MusicTabBean> list) {
        this.tabs = list;
    }
}
