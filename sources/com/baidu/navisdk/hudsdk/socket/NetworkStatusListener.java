package com.baidu.navisdk.hudsdk.socket;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class NetworkStatusListener extends BroadcastReceiver {
    public static final int MSG_TYPE_NET_WORK_CHANGE = 5555;
    private static final List<Handler> outboxHandlers = new ArrayList();

    public static void registerMessageHandler(Handler handler) {
        if (handler == null || outboxHandlers.contains(handler)) {
            return;
        }
        outboxHandlers.add(handler);
    }

    public static void unRegisterMessageHandler(Handler handler) {
        if (handler == null || !outboxHandlers.contains(handler)) {
            return;
        }
        outboxHandlers.remove(handler);
    }

    private static void dispatchMessage(int i, int i2, int i3) {
        Message obtain;
        if (outboxHandlers.isEmpty()) {
            return;
        }
        for (Handler handler : outboxHandlers) {
            if (handler != null && (obtain = Message.obtain(handler, i, i2, i3, null)) != null) {
                obtain.sendToTarget();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        NetworkInfo networkInfo;
        ?? r1;
        ConnectivityManager connectivityManager;
        try {
            connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception unused) {
            networkInfo = null;
        }
        if (connectivityManager == null) {
            return;
        }
        networkInfo = connectivityManager.getActiveNetworkInfo();
        int i = 0;
        if (networkInfo != null) {
            int type = networkInfo.getType();
            boolean isConnected = networkInfo.isConnected();
            r1 = isConnected;
            switch (type) {
                case 1:
                    i = isConnected ? 1 : 0;
                    r1 = isConnected;
                    break;
            }
        } else {
            r1 = 0;
        }
        if (i == NetworkUtils.mWifiState) {
            NetworkUtils.mConnectState = r1;
            return;
        }
        if (i != NetworkUtils.mWifiState || r1 != NetworkUtils.mConnectState) {
            NetworkUtils.mWifiState = i;
            NetworkUtils.mConnectState = r1;
            dispatchMessage(MSG_TYPE_NET_WORK_CHANGE, i, NetworkUtils.mConnectState);
        }
        NetworkUtils.mWifiState = i;
        NetworkUtils.mConnectState = r1;
    }
}
