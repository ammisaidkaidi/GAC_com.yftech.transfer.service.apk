package com.tencent.wecarbase.client;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.wecarbase.common.BuildConfig;
import com.tencent.wecarbase.common.ConfigHolder;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import com.tencent.wecarbase.config.IServiceConfig;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.config.def.ServiceConfig;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.PackageUtils;
import com.tencent.wecarbase.utils.ServiceUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseManager {
    private static final int ADD_CHECK_TIME = 5;
    private static final int MAX_CHECK_TIME = 60;
    private static final int SUM_RESET_COUNT = 6;
    private static boolean mNeedReset = false;
    private static int mResetCount;
    private int mCheckTime;
    private Context mContext;
    private String mServiceAction;
    IServiceConfig mServiceConfig;
    private final String TAG = getClass().getSimpleName();
    private boolean isDestroy = false;
    private boolean mServiceConnected = false;
    private Handler mMainHandler = new Handler(Looper.getMainLooper());
    private ServiceKeepAliveThread mKeepAliveThread = null;
    private boolean isServiceAlreadyConnected = false;
    private ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.tencent.wecarbase.client.BaseManager.1
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LogUtils.ff(BaseManager.this.TAG, "onServiceDisconnected, isDestroy = " + BaseManager.this.isDestroy + ", mServiceConnected = " + BaseManager.this.mServiceConnected);
            BaseManager.this.mServiceConnected = false;
            boolean unused = BaseManager.mNeedReset = true;
            BaseManager.this.startKeepLiveThread();
            BaseManager.this.onServiceDisconnected(componentName);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtils.ff(BaseManager.this.TAG, "onServiceConnected, isDestroy = " + BaseManager.this.isDestroy + ", mServiceConnected = " + BaseManager.this.mServiceConnected + ", action = " + BaseManager.this.mServiceAction);
            BaseManager.this.mServiceConnected = true;
            if (BaseManager.this.isDestroy) {
                if (BaseManager.this.mContext != null) {
                    BaseManager.this.mContext.unbindService(this);
                }
            } else {
                int unused = BaseManager.mResetCount = 0;
                BaseManager.this.onServiceConnectedOk(iBinder);
            }
        }
    };

    protected abstract void dispose();

    protected abstract void onServiceConnectedOk(IBinder iBinder);

    protected abstract void onServiceDisconnected(ComponentName componentName);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class ServiceKeepAliveThread extends Thread {
        private boolean mIsRunning;

        private ServiceKeepAliveThread() {
            this.mIsRunning = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Thread.currentThread().setName(BaseManager.this.getClass().getSimpleName());
            BaseManager.this.mCheckTime = 5;
            LogUtils.d(BaseManager.this.TAG, "SDK ServiceKeepAliveThread start Success, mIsRunning = " + this.mIsRunning);
            while (this.mIsRunning) {
                try {
                    if (BaseManager.mNeedReset && BaseManager.this.mServiceConfig != null) {
                        BaseManager.this.mServiceConfig.resetHostPackage();
                        boolean unused = BaseManager.mNeedReset = false;
                    }
                    BaseManager.this.checkServiceState();
                    Thread.sleep((BaseManager.this.mCheckTime + ((int) (Math.random() * 4.0d))) * 1000);
                } catch (InterruptedException e) {
                    LogUtils.d(BaseManager.this.TAG, e.toString());
                    Thread.currentThread().interrupt();
                    return;
                }
            }
        }

        void stopThread() {
            this.mIsRunning = false;
            LogUtils.d(BaseManager.this.TAG, "stop SDK ServiceKeepAliveThread");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkServiceState() {
        LogUtils.d(this.TAG, "checkServiceState, mServiceConnected " + this.mServiceConnected + ", isDestroy = " + this.isDestroy + ", mContext = " + this.mContext);
        if (!this.mServiceConnected) {
            if (this.isDestroy || this.mContext == null) {
                return;
            }
            startAndBindService();
            if (this.mCheckTime < 60) {
                this.mCheckTime += 5;
            }
            mResetCount++;
            if (mResetCount >= 6) {
                mNeedReset = true;
                mResetCount = 0;
                return;
            }
            return;
        }
        stopKeepLiveThread();
    }

    private BaseManager() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseManager(String str) {
        this.mServiceAction = str;
    }

    public void init(Context context) {
        synchronized (this) {
            if (this.mContext != null) {
                return;
            }
            LogUtils.d(this.TAG, "init start, ctx=" + context + ", act=" + this.mServiceAction);
            if (context == null) {
                throw new RuntimeException("context is null");
            }
            this.mContext = context;
            this.mServiceConfig = ConfigHolder.getInstance().getConfig() == null ? new ServiceConfig() : ConfigHolder.getInstance().getConfig().getServiceConfig();
            this.isDestroy = false;
            this.isServiceAlreadyConnected = true;
            startAndBindService();
            startKeepLiveThread();
            LogUtils.d(this.TAG, "init end, ctx=" + context + ", act=" + this.mServiceAction);
        }
    }

    public void reInitIfNeed(Context context) {
        LogUtils.d(this.TAG, "ReInit as need, alreadyConnected=" + this.isServiceAlreadyConnected);
        if (this.isServiceAlreadyConnected) {
            init(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void startKeepLiveThread() {
        this.mMainHandler.postDelayed(new Runnable() { // from class: com.tencent.wecarbase.client.BaseManager.2
            @Override // java.lang.Runnable
            public void run() {
                if (BaseManager.this.mKeepAliveThread == null) {
                    BaseManager.this.mKeepAliveThread = new ServiceKeepAliveThread();
                    TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(BaseManager.this.mKeepAliveThread);
                }
            }
        }, 5000L);
    }

    private void stopKeepLiveThread() {
        if (this.mKeepAliveThread != null) {
            this.mKeepAliveThread.stopThread();
            this.mKeepAliveThread = null;
        }
    }

    public void destroy() {
        synchronized (this) {
            this.isDestroy = true;
            if (this.mContext != null && this.mServiceConnected) {
                this.mContext.unbindService(this.mServiceConnection);
            }
            this.mContext = null;
            stopKeepLiveThread();
            dispose();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006d, code lost:
    
        if (r0.startForegroundService(r2) != null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void startAndBindService() {
        Context context = this.mContext;
        if (context == null) {
            LogUtils.ff(this.TAG, "startAndBindService, context = null, return");
            return;
        }
        String hostPackage = this.mServiceConfig.getHostPackage();
        Intent matchIntent = getMatchIntent(context, this.mServiceAction);
        try {
            if (matchIntent != null) {
                matchIntent.putExtra("PackageName", context.getPackageName());
                matchIntent.putExtra("VersionCode", BuildConfig.SDKVersionCode);
                matchIntent.putExtra("ISMapublic static final inthread", PackageUtils.isMainAppProcess(context));
                boolean equals = SDKConfig.ACTION_SPEECH_SERVICE.equals(this.mServiceAction);
                boolean z = false;
                if (Build.VERSION.SDK_INT < 26) {
                    if (context.startService(matchIntent) != null) {
                        z = true;
                    }
                    boolean bindService = context.bindService(matchIntent, this.mServiceConnection, 1);
                    LogUtils.ff(this.TAG, "Start and bind service: svcExist=" + z + ", bindRet=" + bindService + ", act=" + this.mServiceAction);
                    return;
                }
                if (!equals) {
                    Log.d(this.TAG, "[TSPerf] Start and bind at " + SystemClock.elapsedRealtime() + " ver=3.1.0.474");
                }
                boolean bindService2 = context.bindService(matchIntent, this.mServiceConnection, 1);
                LogUtils.ff(this.TAG, "Start and bind service: svcExist=" + z + ", bindRet=" + bindService2 + ", act=" + this.mServiceAction);
                return;
            }
            LogUtils.e(this.TAG, "Cannot find intent for action " + this.mServiceAction + " in " + hostPackage);
        } catch (Exception e) {
            LogUtils.e(this.TAG, "Start and bind service failed with action " + this.mServiceAction, e);
        }
    }

    protected Intent getMatchIntent(Context context, String str) {
        String hostPackage = this.mServiceConfig.getHostPackage();
        Intent matchIntentInPackage = ServiceUtils.getMatchIntentInPackage(context, new Intent(str), hostPackage);
        LogUtils.d(this.TAG, "bindService, hostPkg = " + hostPackage + " intent:" + matchIntentInPackage);
        return matchIntentInPackage;
    }
}
