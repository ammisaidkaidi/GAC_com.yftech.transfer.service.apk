package com.tencent.wecarbase.client.model;

import com.tencent.wecarbase.model.BaseModel;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppTicket extends BaseModel {
    private AppAuthInfo appAuthInfo;

    public AppAuthInfo getAppAuthInfo() {
        return this.appAuthInfo;
    }

    public void setAppAuthInfo(AppAuthInfo appAuthInfo) {
        this.appAuthInfo = appAuthInfo;
    }
}
