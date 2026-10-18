package com.tencent.wecarflow.contentsdk.bean;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class FindRecommendResponseBean extends BaseResponseBean {
    List<FindRecommendItem> content;
    List<FindFixItem> fix;

    public List<FindRecommendItem> getContent() {
        return this.content;
    }

    public List<FindFixItem> getFix() {
        return this.fix;
    }
}
