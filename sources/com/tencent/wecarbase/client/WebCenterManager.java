package com.tencent.wecarbase.client;

import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.wecarbase.Constants;
import com.tencent.wecarbase.IX5InitStatusListener;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.h5.IWebCenterService;
import com.tencent.wecarbase.h5.core.X5CoreInitializer;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class WebCenterManager extends BaseManager {
    private static final String TAG = "WebCenterManager";
    private static volatile WebCenterManager sInstance = new WebCenterManager();
    private String mPackageName;
    private IWebCenterService mWebCenterService;
    private IX5InitStatusListener mX5InitStatusListener;

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void dispose() {
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    public /* bridge */ /* synthetic */ void init(Context context) {
        super.init(context);
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    public /* bridge */ /* synthetic */ void reInitIfNeed(Context context) {
        super.reInitIfNeed(context);
    }

    protected WebCenterManager() {
        super(SDKConfig.ACTION_WWBCENTER_SERVICE);
    }

    public static WebCenterManager getInstance() {
        return sInstance;
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    public void destroy() {
        if (this.mX5InitStatusListener != null) {
            this.mX5InitStatusListener = null;
        }
        super.destroy();
    }

    public void init(Context context, IX5InitStatusListener iX5InitStatusListener) {
        init(context);
        if (iX5InitStatusListener != null) {
            this.mX5InitStatusListener = iX5InitStatusListener;
        }
        this.mPackageName = context.getPackageName();
        if (this.mPackageName.equals(this.mServiceConfig.getHostPackage()) || Constants.SDK_BUILD_TYPE.contains(Constants.SDK_BUILD_TYPE_SUB_CS)) {
            return;
        }
        TAIThreadPoolProxyFactory.getIOPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.client.WebCenterManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    LogUtils.d(WebCenterManager.TAG, "WebCenterService init in");
                    X5CoreInitializer.getInstance().registerListener(WebCenterManager.this.mX5InitStatusListener);
                    X5CoreInitializer.getInstance().init(ContextHolder.getContext());
                } catch (Throwable th) {
                    LogUtils.e(WebCenterManager.TAG, th.getMessage());
                }
            }
        });
    }

    public void getX5CoreStatus(IX5InitStatusListener iX5InitStatusListener) {
        LogUtils.e(TAG, "getX5CoreStatus in .");
        try {
            if (this.mWebCenterService != null) {
                this.mWebCenterService.getX5CoreStatus(iX5InitStatusListener);
            } else {
                LogUtils.e(TAG, "getX5CoreStatus, WebCenter manager is not initialed.");
                if (iX5InitStatusListener != null) {
                    iX5InitStatusListener.onResult(false);
                }
            }
        } catch (Exception unused) {
            LogUtils.e(TAG, "getX5CoreStatus, WebCenter manager is not initialed.");
            if (iX5InitStatusListener != null) {
                try {
                    iX5InitStatusListener.onResult(false);
                } catch (RemoteException unused2) {
                    LogUtils.e(TAG, "getX5CoreStatus, WebCenter manager is not initialed.");
                }
            }
        }
        LogUtils.e(TAG, "getX5CoreStatus end .");
    }

    public void launchApplet(String str, Map<String, String> map) {
        try {
            if (this.mWebCenterService != null) {
                this.mWebCenterService.launchApplet(str, map);
            }
        } catch (Exception unused) {
            LogUtils.e(TAG, "launchApplet, WebCenter manager is not initialed.");
        }
    }

    public void launchWebView(String str, Map<String, String> map) {
        try {
            if (this.mWebCenterService != null) {
                this.mWebCenterService.launchWebView(str, map);
            }
        } catch (Exception unused) {
            LogUtils.e(TAG, "launchWebView, WebCenter manager is not initialed.");
        }
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceConnectedOk(IBinder iBinder) {
        this.mWebCenterService = IWebCenterService.Stub.asInterface(iBinder);
        LogUtils.d(TAG, "WebCenterService onConnectedOk");
        if ((this.mServiceConfig.getHostPackage().equals(this.mPackageName) || Constants.SDK_BUILD_TYPE.contains(Constants.SDK_BUILD_TYPE_SUB_CS)) && this.mX5InitStatusListener != null) {
            getX5CoreStatus(this.mX5InitStatusListener);
        }
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceDisconnected(ComponentName componentName) {
        this.mWebCenterService = null;
    }
}
