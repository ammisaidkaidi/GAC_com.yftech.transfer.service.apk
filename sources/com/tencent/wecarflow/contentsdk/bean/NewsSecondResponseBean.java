package com.tencent.wecarflow.contentsdk.bean;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class NewsSecondResponseBean extends BaseResponseBean {
    private List<NewsTabBean> tabs;

    public List<NewsTabBean> getTabs() {
        return this.tabs;
    }

    public void setTabs(List<NewsTabBean> list) {
        this.tabs = list;
    }
}
