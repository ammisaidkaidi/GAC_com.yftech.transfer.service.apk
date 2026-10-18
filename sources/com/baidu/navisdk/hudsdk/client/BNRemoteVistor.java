package com.baidu.navisdk.hudsdk.client;

import android.content.Context;
import com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback;
import com.baidu.navisdk.hudsdk.socket.BNSocketClient;
import com.baidu.navisdk.hudsdk.util.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class BNRemoteVistor {
    private BNRemoteVistor() {
    }

    /* synthetic */ BNRemoteVistor(BNRemoteVistor bNRemoteVistor) {
        this();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static final class LayzerHolder {
        private static final BNRemoteVistor mInstance = new BNRemoteVistor(null);

        private LayzerHolder() {
        }
    }

    public static BNRemoteVistor getInstance() {
        return LayzerHolder.mInstance;
    }

    @Deprecated
    public void init(Context context, String str, String str2, int i, HUDSDkEventCallback.OnRGInfoEventCallback onRGInfoEventCallback, HUDSDkEventCallback.OnConnectCallback onConnectCallback) {
        BNSocketClient.getInstance().init(context, str, str2, i, onRGInfoEventCallback, onConnectCallback);
    }

    public void init(Context context, String str, String str2, HUDSDkEventCallback.OnRGInfoEventCallback onRGInfoEventCallback, HUDSDkEventCallback.OnConnectCallback onConnectCallback) {
        BNSocketClient.getInstance().init(context, str, str2, 0, onRGInfoEventCallback, onConnectCallback);
    }

    public void unInit() {
        BNSocketClient.getInstance().unInit();
    }

    @Deprecated
    public void open(String str) {
        BNSocketClient.getInstance().open(str);
    }

    public void open() {
        BNSocketClient.getInstance().open();
    }

    public void setServerIPAddr(String str) {
        BNSocketClient.getInstance().setServerIPAddr(str);
    }

    public boolean isConnect() {
        return BNSocketClient.getInstance().isConnect();
    }

    public void close(int i, String str) {
        BNSocketClient.getInstance().close(i, str);
    }

    public void setShowLog(boolean z) {
        LogUtil.LOGGABLE = z;
    }
}
