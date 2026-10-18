package com.tencent.car.wechatsdk.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.tencent.car.sdk.IWeChatService;
import com.tencent.car.wechatsdk.ipcservice.IPCLinkCallback;
import com.tencent.car.wechatsdk.ipcservice.IPCLinker;
import com.tencent.car.wechatsdk.utils.log.LogUtils;
import com.tencent.taiutils.SystemUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class IPCLinkerImpl implements IPCLinker {
    public static final String ACTION_WECHAT_SERVICE = "com.tencent.car.sdk.service.WeChatService";
    private static final String TAG = "IPCLinkerImpl";
    private volatile boolean isConnected;
    private IBinder mBinder;
    private ServiceConnection mConnection;
    private Handler mHandler = new Handler(Looper.getMainLooper());

    /* renamed from: com.tencent.car.wechatsdk.impl.IPCLinkerImpl$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class AnonymousClass1 implements ServiceConnection {
        final /* synthetic */ IPCLinkCallback val$callback;

        AnonymousClass1(IPCLinkCallback iPCLinkCallback) {
            this.val$callback = iPCLinkCallback;
        }

        @Override // android.content.ServiceConnection
        public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtils.d(IPCLinkerImpl.TAG, "onServiceConnected");
            final IWeChatService asInterface = IWeChatService.Stub.asInterface(iBinder);
            IPCLinkerImpl.this.isConnected = true;
            if (this.val$callback != null) {
                IPCLinkerImpl.this.mHandler.post(new Runnable() { // from class: com.tencent.car.wechatsdk.impl.IPCLinkerImpl.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.val$callback.onLinkSuccess(asInterface);
                        IPCLinkerImpl.this.mHandler.removeCallbacksAndMessages(null);
                    }
                });
            }
            IPCLinkerImpl.this.mBinder = iBinder;
            try {
                IPCLinkerImpl.this.mBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.tencent.car.wechatsdk.impl.IPCLinkerImpl.1.2
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        IPCLinkerImpl.this.isConnected = false;
                        if (AnonymousClass1.this.val$callback != null) {
                            IPCLinkerImpl.this.mHandler.post(new Runnable() { // from class: com.tencent.car.wechatsdk.impl.IPCLinkerImpl.1.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass1.this.val$callback.onLinkDisconnected();
                                    IPCLinkerImpl.this.mBinder = null;
                                }
                            });
                        }
                    }
                }, 0);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LogUtils.d(IPCLinkerImpl.TAG, "onServiceDisconnected");
            IPCLinkerImpl.this.isConnected = false;
        }
    }

    @Override // com.tencent.car.wechatsdk.ipcservice.IPCLinker
    public void linkRemoteService(Context context, final IPCLinkCallback iPCLinkCallback) {
        if (this.mConnection == null) {
            this.mConnection = new AnonymousClass1(iPCLinkCallback);
        }
        LogUtils.d(TAG, "start bind service");
        Intent intent = new Intent();
        intent.setAction(ACTION_WECHAT_SERVICE);
        intent.setPackage(SystemUtils.WEXIN_PACKAGE_NAME);
        context.bindService(intent, this.mConnection, 1);
        this.mHandler.postDelayed(new Runnable() { // from class: com.tencent.car.wechatsdk.impl.IPCLinkerImpl.2
            @Override // java.lang.Runnable
            public void run() {
                if (IPCLinkerImpl.this.isConnected || iPCLinkCallback == null) {
                    return;
                }
                iPCLinkCallback.onLinkFailed(101, "link timeout !");
            }
        }, 10000L);
    }

    @Override // com.tencent.car.wechatsdk.ipcservice.IPCLinker
    public boolean getConnectedState() {
        return this.isConnected;
    }
}
