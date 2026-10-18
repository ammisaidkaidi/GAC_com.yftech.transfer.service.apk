package com.tencent.wecarbase.carinfo;

import com.tencent.wecarbase.model.CloudMessage;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPushCallBack {
    void addMessage(CloudMessage cloudMessage);

    boolean isConnected();
}
