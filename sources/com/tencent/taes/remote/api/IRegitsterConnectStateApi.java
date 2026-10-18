package com.tencent.taes.remote.api;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IRegitsterConnectStateApi {
    void registerConnectListener(IServerConnectListener iServerConnectListener);

    void unregisterConnectListener(IServerConnectListener iServerConnectListener);
}
