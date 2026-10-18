package com.tencent.taes.impl.gui;

import android.support.annotation.NonNull;
import android.util.Log;
import com.tencent.taes.api.gui.IGUIPolicyApi;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.impl.base.AbstractApi;
import com.tencent.taes.remote.api.policy.bean.Response;
import com.tencent.taes.remote.api.policy.listener.PolicyCallback;

/* loaded from: /home/user/work/dex/classes.dex */
public class GUIPolicyApiImpl extends AbstractApi implements IGUIPolicyApi {
    public static final String TAG = "GUIPolicyApiImpl";
    private com.tencent.taes.remote.api.policy.IGUIPolicyApi mGUIPolicyApi;

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
    }

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    public GUIPolicyApiImpl() {
        TAESFrameworkManager.getInstance().registerCompLoadListener("Policy", new TAESCommonListener() { // from class: com.tencent.taes.impl.gui.GUIPolicyApiImpl.1
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                GUIPolicyApiImpl.this.getGUIPolicyApi();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                Log.e(GUIPolicyApiImpl.TAG, "PolicyloadFail：errorCode = " + i + ", msg = " + str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.tencent.taes.remote.api.policy.IGUIPolicyApi getGUIPolicyApi() {
        if (this.mGUIPolicyApi == null) {
            APIResult api = TAESFrameworkManager.getInstance().getApi("Policy", com.tencent.taes.remote.api.policy.IGUIPolicyApi.class, null);
            if (api.isSuccess()) {
                Log.d(TAG, "getApi success");
                this.mGUIPolicyApi = (com.tencent.taes.remote.api.policy.IGUIPolicyApi) api.data;
            } else {
                Log.d(TAG, "getApi Fail:" + api.codeDescription());
            }
        }
        return this.mGUIPolicyApi;
    }

    @Override // com.tencent.taes.remote.api.policy.IGUIPolicyApi
    public Response requestJudge(String str, int i, @NonNull PolicyCallback policyCallback, String str2) {
        if (getGUIPolicyApi() == null) {
            Log.e(TAG, "mGUIPolicyRemoteApi is null, grant it");
            Response response = new Response();
            response.setRet(101);
            return response;
        }
        return getGUIPolicyApi().requestJudge(str, i, policyCallback, str2);
    }

    @Override // com.tencent.taes.remote.api.policy.IGUIPolicyApi
    public void stopJudge(int i) {
        if (getGUIPolicyApi() != null) {
            getGUIPolicyApi().stopJudge(i);
        } else {
            Log.e(TAG, "mGUIPolicyRemoteApi is null");
        }
    }

    @Override // com.tencent.taes.remote.api.policy.IGUIPolicyApi
    public String dumpState() {
        return getGUIPolicyApi() != null ? getGUIPolicyApi().dumpState() : "null";
    }
}
