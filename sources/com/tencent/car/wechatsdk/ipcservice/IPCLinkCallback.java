package com.tencent.car.wechatsdk.ipcservice;

import com.tencent.car.sdk.IWeChatService;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPCLinkCallback {
    void onLinkDisconnected();

    void onLinkFailed(int i, String str);

    void onLinkSuccess(IWeChatService iWeChatService);
}
