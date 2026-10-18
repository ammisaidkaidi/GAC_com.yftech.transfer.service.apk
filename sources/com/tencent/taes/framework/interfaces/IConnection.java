package com.tencent.taes.framework.interfaces;

import android.content.Intent;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IConnection {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Listener {
        void onBindFail();

        void onConnected();

        void onDisconnected();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Operation {
        void connect(Intent intent, Listener listener);

        void disconnect();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface State {
        public static final int CONNECTED = 2;
        public static final int CONNECTING = 1;
        public static final int CONNECTION_DIED = 3;
        public static final int UNCONNECTED = 0;

        int getConnectionState();

        String getConnectionStateString();

        boolean isConnected();

        boolean isConnecting();

        boolean isConnectionDied();
    }
}
