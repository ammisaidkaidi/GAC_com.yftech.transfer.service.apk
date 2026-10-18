package com.tencent.car.wechatsdk.ipcservice;

import android.content.Context;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPCLinker {
    boolean getConnectedState();

    void linkRemoteService(Context context, IPCLinkCallback iPCLinkCallback);
}
