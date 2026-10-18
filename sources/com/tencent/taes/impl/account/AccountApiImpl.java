package com.tencent.taes.impl.account;

import android.util.Log;
import com.tencent.taes.api.account.IAccountApi;
import com.tencent.taes.framework.APIResult;
import com.tencent.taes.framework.TAESFrameworkManager;
import com.tencent.taes.framework.listener.TAESCommonListener;
import com.tencent.taes.impl.base.AbstractApi;
import com.tencent.taes.remote.api.account.bean.RefreshAccessCode;
import com.tencent.taes.remote.api.account.bean.TxAccount;
import com.tencent.taes.remote.api.account.bean.WeCarAccount;
import com.tencent.taes.remote.api.account.bean.WeCarContract;
import com.tencent.taes.remote.api.account.listener.AccountListener;
import com.tencent.taes.remote.api.account.listener.IAccountClientEventListener;
import com.tencent.taes.remote.api.account.listener.IContractCallback;
import com.tencent.taes.remote.api.account.listener.IMossCallBack;
import com.tencent.taes.remote.api.account.listener.IRefreshAccessCodeCallback;
import com.tencent.taes.remote.api.account.listener.ITAIUserInfo;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class AccountApiImpl extends AbstractApi implements IAccountApi {
    private static final String TAG = "AccountApiImpl";
    private com.tencent.taes.remote.api.account.IAccountApi mAccountApi = null;

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
    }

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return "1.0";
    }

    public AccountApiImpl() {
        TAESFrameworkManager.getInstance().registerCompLoadListener("Account", new TAESCommonListener() { // from class: com.tencent.taes.impl.account.AccountApiImpl.1
            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onSuccess() {
                AccountApiImpl.this.getAccountApi();
            }

            @Override // com.tencent.taes.framework.listener.TAESCommonListener
            public void onFail(int i, String str) {
                Log.e(AccountApiImpl.TAG, "AccountloadFail：errorCode = " + i + ", msg = " + str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.tencent.taes.remote.api.account.IAccountApi getAccountApi() {
        if (this.mAccountApi == null) {
            APIResult api = TAESFrameworkManager.getInstance().getApi("Account", com.tencent.taes.remote.api.account.IAccountApi.class, null);
            if (api.isSuccess()) {
                this.mAccountApi = (com.tencent.taes.remote.api.account.IAccountApi) api.data;
            } else {
                Log.d(TAG, "getApi Fail:" + api.codeDescription());
            }
        }
        return this.mAccountApi;
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public WeCarAccount getWeCarAccount() {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return null;
        }
        return this.mAccountApi.getWeCarAccount();
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getWeCarAccount(AccountListener accountListener) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.getWeCarAccount(accountListener);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void registerAccountEventReceiverListener(IAccountClientEventListener iAccountClientEventListener) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.registerAccountEventReceiverListener(iAccountClientEventListener);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void unregisterAccountEventReceiverListener(IAccountClientEventListener iAccountClientEventListener) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.unregisterAccountEventReceiverListener(iAccountClientEventListener);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public boolean removeBindAccount(String str, TxAccount txAccount) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return false;
        }
        return this.mAccountApi.removeBindAccount(str, txAccount);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void updateSessionKey(String str, long j) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.updateSessionKey(str, j);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public String getSessionKey() {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return null;
        }
        return this.mAccountApi.getSessionKey();
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public long getNonce() {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return 0L;
        }
        return this.mAccountApi.getNonce();
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public boolean removeWeCarAccount() {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return false;
        }
        return this.mAccountApi.removeWeCarAccount();
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public boolean isTAIAuthOk() {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return false;
        }
        return this.mAccountApi.isTAIAuthOk();
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void appletLogin(String str, IMossCallBack iMossCallBack) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.appletLogin(str, iMossCallBack);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void checkAppletSession(String str, IMossCallBack iMossCallBack) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.checkAppletSession(str, iMossCallBack);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getPhoneNumber(String str, IMossCallBack iMossCallBack) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.getPhoneNumber(str, iMossCallBack);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getAppletUserInfo(String str, IMossCallBack iMossCallBack) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.getAppletUserInfo(str, iMossCallBack);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void appletAuth(String str, IMossCallBack iMossCallBack) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.appletAuth(str, iMossCallBack);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getAppletAuthStatus(String str, IMossCallBack iMossCallBack) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.getAppletAuthStatus(str, iMossCallBack);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getAppletBaseCarInfo(String str, IMossCallBack iMossCallBack) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.getAppletBaseCarInfo(str, iMossCallBack);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getTaiAccountInfo(int i, Map<String, Object> map, ITAIUserInfo iTAIUserInfo, String str) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.getTaiAccountInfo(i, map, iTAIUserInfo, str);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void logoutTaiAccount(int i, Map<String, Object> map, String str, String str2, ITAIUserInfo iTAIUserInfo, String str3) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.logoutTaiAccount(i, map, str, str2, iTAIUserInfo, str3);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public WeCarContract getContract(int i) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return null;
        }
        return this.mAccountApi.getContract(i);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public String getAccountDebugInfo() {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return null;
        }
        return this.mAccountApi.getAccountDebugInfo();
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void logoutTaiAccount(int i, Map<String, Object> map, ITAIUserInfo iTAIUserInfo, String str) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.logoutTaiAccount(i, map, iTAIUserInfo, str);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getContractAsync(int i, IContractCallback iContractCallback) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.getContractAsync(i, iContractCallback);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void refreshAccessCode(String str, IRefreshAccessCodeCallback iRefreshAccessCodeCallback) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return;
        }
        this.mAccountApi.refreshAccessCode(str, iRefreshAccessCodeCallback);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public RefreshAccessCode refreshAccessCodeSync(String str) {
        if (getAccountApi() == null || this.mAccountApi == null) {
            return null;
        }
        return this.mAccountApi.refreshAccessCodeSync(str);
    }
}
