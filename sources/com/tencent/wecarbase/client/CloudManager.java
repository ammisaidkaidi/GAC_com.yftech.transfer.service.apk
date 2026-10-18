package com.tencent.wecarbase.client;

import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.wecarbase.ICloudService;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.model.CloudMessage;

/* loaded from: /home/user/work/dex/classes.dex */
public class CloudManager extends BaseManager {
    private static final String TAG = "CloudManager";
    private static volatile CloudManager mInstance;
    private ICloudService mCloudService;
    private PushListener mPushListener;

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void dispose() {
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    public /* bridge */ /* synthetic */ void destroy() {
        super.destroy();
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    public /* bridge */ /* synthetic */ void init(Context context) {
        super.init(context);
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    public /* bridge */ /* synthetic */ void reInitIfNeed(Context context) {
        super.reInitIfNeed(context);
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceConnectedOk(IBinder iBinder) {
        this.mCloudService = ICloudService.Stub.asInterface(iBinder);
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceDisconnected(ComponentName componentName) {
        this.mCloudService = null;
    }

    public static CloudManager getInstance() {
        if (mInstance == null) {
            synchronized (CloudManager.class) {
                if (mInstance == null) {
                    mInstance = new CloudManager();
                }
            }
        }
        return mInstance;
    }

    private CloudManager() {
        super(SDKConfig.ACTION_CLOUD_SERVICE);
    }

    public boolean sendData(CloudMessage cloudMessage) {
        try {
            return this.mCloudService.sendData(cloudMessage);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isConnected() {
        try {
            return this.mCloudService.isConnected();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public synchronized void setPushListener(PushListener pushListener) {
        this.mPushListener = pushListener;
    }

    public synchronized PushListener getPushListener() {
        return this.mPushListener;
    }
}
