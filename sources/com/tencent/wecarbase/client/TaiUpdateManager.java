package com.tencent.wecarbase.client;

import android.content.ComponentName;
import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.wecarbase.common.BuildConfig;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.taiupdate.ITaiUpdateListener;
import com.tencent.wecarbase.taiupdate.ITaiUpdateService;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class TaiUpdateManager extends BaseManager {
    private static final String TAG = "TaiUpdateManager";
    private static volatile TaiUpdateManager sInstance = new TaiUpdateManager();
    private ITaiUpdateListener.Stub mTaiCallback;
    private ITaiUpdateService mTaiUpdateService;

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

    protected TaiUpdateManager(String str) {
        super(str);
        this.mTaiCallback = new ITaiUpdateListener.Stub() { // from class: com.tencent.wecarbase.client.TaiUpdateManager.1
            @Override // com.tencent.wecarbase.taiupdate.ITaiUpdateListener
            public void onResult(String str2) throws RemoteException {
                LogUtils.d(TaiUpdateManager.TAG, "syncVersionInfo, onResult = " + str2);
            }
        };
    }

    public static TaiUpdateManager getInstance() {
        return sInstance;
    }

    protected TaiUpdateManager() {
        super(SDKConfig.ACTION_TAI_UPDATE_SERVICE);
        this.mTaiCallback = new ITaiUpdateListener.Stub() { // from class: com.tencent.wecarbase.client.TaiUpdateManager.1
            @Override // com.tencent.wecarbase.taiupdate.ITaiUpdateListener
            public void onResult(String str2) throws RemoteException {
                LogUtils.d(TaiUpdateManager.TAG, "syncVersionInfo, onResult = " + str2);
            }
        };
    }

    public void syncVersionInfo(Map<String, String> map, ITaiUpdateListener iTaiUpdateListener) {
        try {
            if (this.mTaiUpdateService != null) {
                this.mTaiUpdateService.syncVersionInfo(map, iTaiUpdateListener);
            }
        } catch (Exception unused) {
            LogUtils.e(TAG, "syncVersionInfo, TaiUpdateService is not initialed.");
        }
    }

    private HashMap<String, String> getCientInfo() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("SDKVersion", "3.1.0.474");
        hashMap.put("VersionCode", BuildConfig.SDKVersionCode);
        hashMap.put("PackageName", ContextHolder.getContext().getPackageName());
        return hashMap;
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceConnectedOk(IBinder iBinder) {
        this.mTaiUpdateService = ITaiUpdateService.Stub.asInterface(iBinder);
        syncVersionInfo(getCientInfo(), this.mTaiCallback);
        LogUtils.d(TAG, " syncVersionInfo TaiUpdateService onConnectedOk");
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceDisconnected(ComponentName componentName) {
        this.mTaiUpdateService = null;
    }
}
