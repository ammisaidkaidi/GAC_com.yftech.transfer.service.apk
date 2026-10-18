package com.tencent.taes.impl.location;

import android.util.Log;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.impl.base.BaseConnectApi;
import com.tencent.taes.remote.api.IServerConnectListener;
import com.tencent.taes.remote.api.location.ILocationApi;
import com.tencent.taes.remote.api.location.bean.LocationBean;

/* loaded from: /home/user/work/dex/classes.dex */
public class LocationApiImpl extends BaseConnectApi<ILocationApi> implements com.tencent.taes.api.location.ILocationApi {
    public static final String TAG = "LocationApiImp";
    private ILocationApi mLocationApi;

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    public LocationApiImpl() {
        TAESFrameworkManager.getInstance().registerCompLoadListener("Location", new TAESCommonListener() { // from class: com.tencent.taes.impl.location.LocationApiImpl.1
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                LocationApiImpl.this.getLocationApi();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                Log.e(LocationApiImpl.TAG, "LocationloadFail：errorCode = " + i + ", msg = " + str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ILocationApi getLocationApi() {
        if (this.mLocationApi == null) {
            APIResult api = TAESFrameworkManager.getInstance().getApi("Location", ILocationApi.class, null);
            if (api.isSuccess()) {
                this.mLocationApi = (ILocationApi) api.data;
                registerInnerConnectListener(this.mLocationApi);
            } else {
                Log.d(TAG, "getApi Fail:" + api.codeDescription());
            }
        }
        return this.mLocationApi;
    }

    @Override // com.tencent.taes.impl.base.BaseConnectApi, com.tencent.taes.remote.api.IRegitsterConnectStateApi
    public void registerConnectListener(IServerConnectListener iServerConnectListener) {
        super.registerConnectListener(iServerConnectListener);
        if (this.mLocationApi == null) {
            Log.e(TAG, "registerInnerConnectListener Exception：mLocationApi = " + this.mLocationApi);
            getLocationApi();
            return;
        }
        registerInnerConnectListener(this.mLocationApi);
    }

    @Override // com.tencent.taes.api.location.ILocationApi
    public LocationBean getCurLocation() {
        Log.d(TAG, "getCurLocation");
        if (getLocationApi() != null) {
            return getLocationApi().getCurLocation();
        }
        return new LocationBean();
    }

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
        unregisterInnerConnectListener(this.mLocationApi);
        unregisterConnectListener();
    }
}
