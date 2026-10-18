package com.tencent.taes.framework.server;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.support.annotation.CallSuper;
import android.util.Log;
import com.tencent.taes.framework.interfaces.IConnection;
import com.tencent.taes.framework.server.connect.BaseServiceConnection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseClient implements IConnection.Operation, IConnection.State {
    private static final String TAG = "BaseClient";
    private List<IConnection.Listener> mConnectListeners = new CopyOnWriteArrayList();
    protected Context mContext;
    private IBinder mIBinder;
    private ServiceConnection mServiceConnection;

    protected abstract void handleConnect(IBinder iBinder);

    protected abstract void handleDisConnect();

    public BaseClient(Context context) {
        this.mContext = context;
    }

    @Override // com.tencent.taes.framework.interfaces.IConnection.Operation
    public void connect(Intent intent, IConnection.Listener listener) {
        Log.i(TAG, "connect");
        if (listener != null) {
            this.mConnectListeners.add(listener);
        }
        if (this.mServiceConnection == null) {
            this.mServiceConnection = new ServiceConnection(this.mContext);
            if (this.mServiceConnection.bindService(intent, 1)) {
                notifyBindFail();
            }
        }
    }

    @Override // com.tencent.taes.framework.interfaces.IConnection.Operation
    public void disconnect() {
        Log.i(TAG, "disconnect");
        if (this.mServiceConnection != null) {
            this.mServiceConnection.unbindService();
            this.mServiceConnection = null;
        }
    }

    public void destroy() {
        Log.i(TAG, "destroy");
        disconnect();
    }

    @Override // com.tencent.taes.framework.interfaces.IConnection.State
    public boolean isConnecting() {
        return this.mIBinder == null && this.mServiceConnection != null && this.mServiceConnection.isServiceBound() && !this.mServiceConnection.isServiceDied();
    }

    @Override // com.tencent.taes.framework.interfaces.IConnection.State
    public boolean isConnected() {
        return this.mIBinder != null && this.mIBinder.isBinderAlive();
    }

    @Override // com.tencent.taes.framework.interfaces.IConnection.State
    public boolean isConnectionDied() {
        return this.mServiceConnection != null && this.mServiceConnection.isServiceDied();
    }

    @Override // com.tencent.taes.framework.interfaces.IConnection.State
    public int getConnectionState() {
        if (isConnected()) {
            return 2;
        }
        if (isConnecting()) {
            return 1;
        }
        return isConnectionDied() ? 3 : 0;
    }

    @Override // com.tencent.taes.framework.interfaces.IConnection.State
    public String getConnectionStateString() {
        return isConnected() ? "Connected" : isConnecting() ? "Connecting" : isConnectionDied() ? "ConnectionDied" : "Unconnected";
    }

    public void registerConnectListener(IConnection.Listener listener) {
        synchronized (this.mConnectListeners) {
            try {
                if (listener == null) {
                    return;
                }
                if (isConnected()) {
                    listener.onConnected();
                } else {
                    this.mConnectListeners.add(listener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void unregisterConnectListener(IConnection.Listener listener) {
        synchronized (this.mConnectListeners) {
            try {
                if (listener == null) {
                    return;
                }
                this.mConnectListeners.remove(listener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void notifyConnected() {
        synchronized (this.mConnectListeners) {
            Iterator<IConnection.Listener> it = this.mConnectListeners.iterator();
            while (it.hasNext()) {
                it.next().onConnected();
            }
        }
    }

    protected void notifyBindFail() {
        synchronized (this.mConnectListeners) {
            Iterator<IConnection.Listener> it = this.mConnectListeners.iterator();
            while (it.hasNext()) {
                it.next().onBindFail();
            }
        }
    }

    protected void notifyDisConnected() {
        synchronized (this.mConnectListeners) {
            Iterator<IConnection.Listener> it = this.mConnectListeners.iterator();
            while (it.hasNext()) {
                it.next().onDisconnected();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class ServiceConnection extends BaseServiceConnection {
        @Override // com.tencent.taes.framework.server.connect.BaseServiceConnection
        public void onRebindingService(int i) {
        }

        public ServiceConnection(Context context) {
            super(BaseClient.TAG, context, 3);
        }

        @Override // com.tencent.taes.framework.server.connect.BaseServiceConnection, android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            super.onServiceConnected(componentName, iBinder);
            BaseClient.this.mIBinder = iBinder;
            BaseClient.this.handleConnect(iBinder);
            BaseClient.this.notifyConnected();
        }

        @Override // com.tencent.taes.framework.server.connect.BaseServiceConnection, android.content.ServiceConnection
        @CallSuper
        public void onServiceDisconnected(ComponentName componentName) {
            super.onServiceDisconnected(componentName);
            BaseClient.this.handleDisConnect();
            BaseClient.this.notifyDisConnected();
            BaseClient.this.mIBinder = null;
        }

        @Override // com.tencent.taes.framework.server.connect.BaseServiceConnection
        public void onServiceDied() {
            BaseClient.this.handleDisConnect();
            BaseClient.this.notifyDisConnected();
            BaseClient.this.mIBinder = null;
        }
    }

    protected Intent findIntentFromPkgs(Context context, String[] strArr, Intent intent) {
        for (String str : strArr) {
            Intent matchIntentInPackage = getMatchIntentInPackage(context, intent, str);
            if (matchIntentInPackage != null) {
                return matchIntentInPackage;
            }
        }
        return null;
    }

    protected Intent getMatchIntentInPackage(Context context, Intent intent, String str) {
        List<ResolveInfo> list;
        Log.d(TAG, "getMatchIntentInPackage " + str);
        PackageManager packageManager = context.getPackageManager();
        int i = 0;
        Intent intent2 = null;
        try {
            intent.addFlags(32);
            list = packageManager.queryIntentServices(intent, 0);
        } catch (Exception e) {
            Log.e("ServiceUtils", e.toString());
            list = null;
        }
        if (list == null || list.size() == 0) {
            return null;
        }
        while (true) {
            if (i >= list.size()) {
                break;
            }
            ResolveInfo resolveInfo = list.get(i);
            if (resolveInfo.serviceInfo.packageName.equals(str)) {
                ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                break;
            }
            i++;
        }
        Log.d(TAG, "getMatchIntentInPackage = " + intent2);
        return intent2;
    }
}
