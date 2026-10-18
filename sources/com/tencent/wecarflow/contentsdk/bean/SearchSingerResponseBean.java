package com.tencent.wecarflow.contentsdk.bean;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SearchSingerResponseBean extends BaseResponseBean {
    List<SingerItemBean> singer_list;

    public List<SingerItemBean> getSingerList() {
        return this.singer_list;
    }

    public void setSingerList(List<SingerItemBean> list) {
        this.singer_list = list;
    }
}
