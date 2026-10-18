package com.tencent.wecarspeech.clientsdk.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.tencent.wecarspeech.clientsdk.ipcservice.IPCLinkCallback;
import com.tencent.wecarspeech.clientsdk.ipcservice.IPCLinker;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;
import com.tencent.wecarspeech.vframework.ISpeechService;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class IPCLinkerImpl implements IPCLinker {
    public static final String ACTION_WECAR_SERVICE = "com.tencent.wecarspeech.vframework.service.WecarService";
    private static final String TAG = "IPCLinkerImpl";
    private volatile boolean isConnected;
    private IBinder mBinder;
    private ServiceConnection mConnection;
    private Handler mHandler = new Handler(Looper.getMainLooper());

    /* renamed from: com.tencent.wecarspeech.clientsdk.impl.IPCLinkerImpl$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    class AnonymousClass1 implements ServiceConnection {
        final /* synthetic */ IPCLinkCallback val$callback;

        AnonymousClass1(IPCLinkCallback iPCLinkCallback) {
            this.val$callback = iPCLinkCallback;
        }

        @Override // android.content.ServiceConnection
        public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtils.d(IPCLinkerImpl.TAG, "onServiceConnected");
            final ISpeechService asInterface = ISpeechService.Stub.asInterface(iBinder);
            IPCLinkerImpl.this.isConnected = true;
            if (this.val$callback != null) {
                IPCLinkerImpl.this.mHandler.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.IPCLinkerImpl.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.val$callback.onLinkSuccess(asInterface);
                        IPCLinkerImpl.this.mHandler.removeCallbacksAndMessages(null);
                    }
                });
            }
            IPCLinkerImpl.this.mBinder = iBinder;
            try {
                IPCLinkerImpl.this.mBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.tencent.wecarspeech.clientsdk.impl.IPCLinkerImpl.1.2
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        IPCLinkerImpl.this.isConnected = false;
                        if (AnonymousClass1.this.val$callback != null) {
                            IPCLinkerImpl.this.mHandler.post(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.IPCLinkerImpl.1.2.1
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

    @Override // com.tencent.wecarspeech.clientsdk.ipcservice.IPCLinker
    public void linkRemoteService(Context context, final IPCLinkCallback iPCLinkCallback) {
        if (this.mConnection == null) {
            this.mConnection = new AnonymousClass1(iPCLinkCallback);
        }
        LogUtils.d(TAG, "start bind service");
        Intent explicitIntent = getExplicitIntent(context, new Intent(ACTION_WECAR_SERVICE), SpeechServerTool.getServerPackage(context));
        if (explicitIntent == null) {
            explicitIntent = new Intent();
            explicitIntent.setAction(ACTION_WECAR_SERVICE);
            explicitIntent.setPackage("com.tencent.wecarspeech");
        }
        context.bindService(explicitIntent, this.mConnection, 1);
        this.mHandler.postDelayed(new Runnable() { // from class: com.tencent.wecarspeech.clientsdk.impl.IPCLinkerImpl.2
            @Override // java.lang.Runnable
            public void run() {
                if (IPCLinkerImpl.this.isConnected || iPCLinkCallback == null) {
                    return;
                }
                iPCLinkCallback.onLinkFailed(101, "link timeout !");
            }
        }, 10000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Intent getExplicitIntent(Context context, Intent intent, String str) {
        List<ResolveInfo> list;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                list = packageManager.queryIntentServices(intent, 0);
            } catch (Exception e) {
                Log.e("ServiceUtils", e.toString());
            }
            if (list != null) {
                return null;
            }
            for (ResolveInfo resolveInfo : list) {
                String str2 = resolveInfo.serviceInfo.packageName;
                if (str2.equals(str)) {
                    LogUtils.d(TAG, "serviceInfo packageName = " + str2);
                    ComponentName componentName = new ComponentName(str2, resolveInfo.serviceInfo.name);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    return intent2;
                }
            }
            return null;
        }
        list = null;
        if (list != null) {
        }
    }
}
