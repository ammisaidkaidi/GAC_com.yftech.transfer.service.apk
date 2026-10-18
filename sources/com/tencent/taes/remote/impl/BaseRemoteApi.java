package com.tencent.taes.remote.impl;

import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.framework.remote.IServiceManagerService;
import com.tencent.taes.framework.server.connect.DeathRecipientHelper;
import com.tencent.taes.remote.api.IRegitsterConnectStateApi;
import com.tencent.taes.remote.api.IServerConnectListener;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseRemoteApi implements Runnable, IRegitsterConnectStateApi {
    private static final String TAG = "BaseRemoteApi";
    private IBinder mBinder;
    private DeathRecipientHelper mDeathRecipientHelper;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private IServiceManagerService mServiceManagerService;
    private CopyOnWriteArrayList<IServerConnectListener> serverConnectListeners = new CopyOnWriteArrayList<>();
    private final int mDefualtInterval = 3000;
    private int mRetryCount = 0;

    public abstract Pair<String, String> subscribeModuleBinder();

    public BaseRemoteApi(IBinder iBinder, IBinder iBinder2) {
        Log.d(TAG, "BaseRemoteApi:" + iBinder + "   " + getClass().getName());
        this.mHandlerThread = new HandlerThread(getClass().getName());
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
        this.mServiceManagerService = IServiceManagerService.Stub.asInterface(iBinder2);
        this.mBinder = iBinder;
        this.mDeathRecipientHelper = new DeathRecipientHelper(new IBinder.DeathRecipient() { // from class: com.tencent.taes.remote.impl.BaseRemoteApi.1
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.d(BaseRemoteApi.TAG, "BaseRemoteApi binderDied！！" + BaseRemoteApi.this.getClass().getName());
                BaseRemoteApi.this.handleDisconnect();
            }
        });
        this.mDeathRecipientHelper.listenBinderDeath(iBinder);
    }

    public void setServiceManagerService(IServiceManagerService iServiceManagerService) {
        this.mServiceManagerService = iServiceManagerService;
        if (this.mBinder != null && this.mBinder.isBinderAlive()) {
            Log.d(TAG, getClass().getName() + " Binder:" + this.mBinder + " isAlive !");
            return;
        }
        handleDisconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDisconnect() {
        binderDisConnect();
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler.postDelayed(this, ((int) (Math.random() * 2000.0d)) + 3000);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mRetryCount++;
        Pair<String, String> subscribeModuleBinder = subscribeModuleBinder();
        if (this.mServiceManagerService != null && this.mServiceManagerService.asBinder().isBinderAlive()) {
            try {
                Bundle remoteBinder = this.mServiceManagerService.getRemoteBinder((String) subscribeModuleBinder.first, (String) subscribeModuleBinder.second, null);
                if (remoteBinder != null) {
                    int i = remoteBinder.getInt("code", 402);
                    Log.d(TAG, "getApi Remote " + ((String) subscribeModuleBinder.first) + "  " + ((String) subscribeModuleBinder.second) + "  " + i);
                    if (i == 0) {
                        this.mBinder = remoteBinder.getBinder("data");
                        binderConnect(this.mBinder);
                        this.mDeathRecipientHelper.listenBinderDeath(this.mBinder);
                        this.mRetryCount = 0;
                        return;
                    }
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        long j = (this.mRetryCount * 1000) + 3000;
        Handler handler = this.mHandler;
        if (j > 10000) {
            j = 10000;
        }
        handler.postDelayed(this, j);
    }

    public void binderConnect(IBinder iBinder) {
        Iterator<IServerConnectListener> it = this.serverConnectListeners.iterator();
        while (it.hasNext()) {
            IServerConnectListener next = it.next();
            if (next != null) {
                next.onConnected();
            }
        }
    }

    public void binderDisConnect() {
        Iterator<IServerConnectListener> it = this.serverConnectListeners.iterator();
        while (it.hasNext()) {
            IServerConnectListener next = it.next();
            if (next != null) {
                next.onDisConnected();
            }
        }
    }

    @Override // com.tencent.taes.remote.api.IRegitsterConnectStateApi
    public void registerConnectListener(IServerConnectListener iServerConnectListener) {
        if (this.mBinder != null && this.mBinder.isBinderAlive()) {
            iServerConnectListener.onConnected();
        }
        if (this.serverConnectListeners.contains(iServerConnectListener)) {
            return;
        }
        this.serverConnectListeners.add(iServerConnectListener);
    }

    @Override // com.tencent.taes.remote.api.IRegitsterConnectStateApi
    public void unregisterConnectListener(IServerConnectListener iServerConnectListener) {
        if (this.serverConnectListeners.contains(iServerConnectListener)) {
            this.serverConnectListeners.remove(iServerConnectListener);
        }
    }
}
