package com.tencent.taes.remote.impl.account;

import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.tencent.taes.remote.api.account.IAccountApi;
import com.tencent.taes.remote.api.account.IAccountService;
import com.tencent.taes.remote.api.account.bean.RefreshAccessCode;
import com.tencent.taes.remote.api.account.bean.TxAccount;
import com.tencent.taes.remote.api.account.bean.WeCarAccount;
import com.tencent.taes.remote.api.account.bean.WeCarContract;
import com.tencent.taes.remote.api.account.listener.AccountListener;
import com.tencent.taes.remote.api.account.listener.IAccountClientEventListener;
import com.tencent.taes.remote.api.account.listener.IAccountEventListener;
import com.tencent.taes.remote.api.account.listener.IAccountListener;
import com.tencent.taes.remote.api.account.listener.IContractCallback;
import com.tencent.taes.remote.api.account.listener.IMossCallBack;
import com.tencent.taes.remote.api.account.listener.IRefreshAccessCodeCallback;
import com.tencent.taes.remote.api.account.listener.ITAIContractCallback;
import com.tencent.taes.remote.api.account.listener.ITAIRefreshAccessCodeCallback;
import com.tencent.taes.remote.api.account.listener.ITAIUserInfo;
import com.tencent.taes.remote.impl.BaseRemoteApi;
import com.tencent.taes.util.ContextHolder;
import com.tencent.taes.util.GsonUtils;
import com.tencent.taes.util.PackageUtils;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class AccountRemoteApi extends BaseRemoteApi implements IAccountApi {
    public static final int LOGIN_TYPE_QQ = 1;
    public static final int LOGIN_TYPE_WX = 0;
    private static final String TAG = "AccountRemoteApi";
    private IAccountEventListener mAccountEventListener;
    private final CopyOnWriteArrayList<IAccountClientEventListener> mAccountEventReceiverListener;
    private IAccountService mAccountService;
    private String mClientId;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ErrorCode {
        ERROR_CODE_SERVICE_NOT_START(-2, "Local Server not start!"),
        ERROR_CODE_LOCAL_SERVER_ERROR(-3, "Local Server error!");

        int err;
        String msg;

        ErrorCode(int i, String str) {
            this.err = i;
            this.msg = str;
        }

        public String buildJson() {
            return buildErrorResult(this.err, this.msg);
        }

        private String buildErrorResult(int i, String str) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("err", i);
                jSONObject.put("info", str);
            } catch (JSONException e) {
                Log.e(AccountRemoteApi.TAG, "buildErrorResult error", e);
            }
            return jSONObject.toString();
        }
    }

    private AccountRemoteApi(IBinder iBinder, IBinder iBinder2) {
        super(iBinder, iBinder2);
        this.mAccountEventReceiverListener = new CopyOnWriteArrayList<>();
        this.mAccountEventListener = new IAccountEventListener.Stub() { // from class: com.tencent.taes.remote.impl.account.AccountRemoteApi.1
            @Override // com.tencent.taes.remote.api.account.listener.IAccountEventListener
            public void onEventReceiver(int i, String str, String str2) throws RemoteException {
                StringBuilder sb = new StringBuilder();
                sb.append("onEventReceiver code = ");
                sb.append(i);
                sb.append(" -newResult:");
                sb.append(str);
                sb.append(" ;oldResult is");
                sb.append(str2);
                sb.append(" ;Thread:");
                sb.append(Thread.currentThread().getName());
                sb.append(", listenerList.size=");
                sb.append(AccountRemoteApi.this.mAccountEventReceiverListener != null ? Integer.valueOf(AccountRemoteApi.this.mAccountEventReceiverListener.size()) : "null");
                Log.e(AccountRemoteApi.TAG, sb.toString());
                Iterator it = AccountRemoteApi.this.mAccountEventReceiverListener.iterator();
                while (it.hasNext()) {
                    IAccountClientEventListener iAccountClientEventListener = (IAccountClientEventListener) it.next();
                    switch (i) {
                        case 10:
                            iAccountClientEventListener.onWeCarIdRegistered((WeCarAccount) GsonUtils.fromJson(str, WeCarAccount.class));
                            break;
                        case 11:
                            iAccountClientEventListener.onWeCarIdChanged((WeCarAccount) GsonUtils.fromJson(str2, WeCarAccount.class), (WeCarAccount) GsonUtils.fromJson(str, WeCarAccount.class));
                            break;
                        default:
                            switch (i) {
                                case 20:
                                    iAccountClientEventListener.onAuthChanged(!DeviceHelper.FALSE.equals(str));
                                    break;
                                case 21:
                                    iAccountClientEventListener.onWXAccountBind((TxAccount) GsonUtils.fromJson(str, TxAccount.class));
                                    break;
                                case 22:
                                    iAccountClientEventListener.onWXAccountUnbind((TxAccount) GsonUtils.fromJson(str, TxAccount.class));
                                    break;
                                case 23:
                                    iAccountClientEventListener.onWXAccountUpdate((TxAccount) GsonUtils.fromJson(str2, TxAccount.class), (TxAccount) GsonUtils.fromJson(str, TxAccount.class));
                                    break;
                                case 24:
                                    try {
                                        iAccountClientEventListener.onWXTicketUpdate(str2, str);
                                        break;
                                    } catch (Throwable th) {
                                        Log.e(AccountRemoteApi.TAG, "onEventReceiver exception", th);
                                        break;
                                    }
                            }
                    }
                }
            }
        };
        this.mAccountService = IAccountService.Stub.asInterface(iBinder);
        this.mClientId = toString() + "/" + PackageUtils.getProcessName(ContextHolder.getContext());
        StringBuilder sb = new StringBuilder();
        sb.append("AccountRemoteApi  string is:");
        sb.append(this.mClientId);
        Log.d(TAG, sb.toString());
        registerClient();
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public Pair<String, String> subscribeModuleBinder() {
        return new Pair<>("Account", IAccountService.Stub.class.getName());
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderConnect(IBinder iBinder) {
        this.mAccountService = IAccountService.Stub.asInterface(iBinder);
        this.mClientId = toString() + "/" + PackageUtils.getProcessName(ContextHolder.getContext());
        StringBuilder sb = new StringBuilder();
        sb.append("AccountRemoteApi  string is:");
        sb.append(this.mClientId);
        sb.append(", mAccountService is null? ");
        sb.append(this.mAccountService == null);
        Log.d(TAG, sb.toString());
        registerClient();
        super.binderConnect(iBinder);
    }

    @Override // com.tencent.taes.remote.impl.BaseRemoteApi
    public void binderDisConnect() {
        super.binderDisConnect();
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void registerAccountEventReceiverListener(IAccountClientEventListener iAccountClientEventListener) {
        Log.d(TAG, "registerAccountEventReceiverListener, mAccountEventReceiverListener = " + this.mAccountEventReceiverListener + ", listener = " + iAccountClientEventListener);
        if (iAccountClientEventListener == null || this.mAccountEventReceiverListener.contains(iAccountClientEventListener)) {
            return;
        }
        this.mAccountEventReceiverListener.add(iAccountClientEventListener);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void unregisterAccountEventReceiverListener(IAccountClientEventListener iAccountClientEventListener) {
        Log.d(TAG, "unregisterAccountEventReceiverListener,mAccountEventReceiverListener = " + this.mAccountEventReceiverListener + ", listener = " + iAccountClientEventListener);
        if (iAccountClientEventListener == null) {
            return;
        }
        this.mAccountEventReceiverListener.remove(iAccountClientEventListener);
    }

    private void registerClient() {
        try {
            if (this.mAccountService != null) {
                Log.d(TAG, "registerAccountClient begin! mClientId=" + this.mClientId);
                this.mAccountService.registerClient(this.mClientId, null, this.mAccountEventListener);
                Log.d(TAG, "registerAccountClient success!");
            } else {
                Log.e(TAG, "mAccountService is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "registerClient sync, e = ", e);
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public WeCarAccount getWeCarAccount() {
        try {
            if (this.mAccountService != null) {
                return this.mAccountService.getWeCarAccountSync();
            }
            Log.e(TAG, "mAccountService is null");
            return null;
        } catch (RemoteException e) {
            Log.e(TAG, "getWeCarAccount sync, e = ", e);
            return null;
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getWeCarAccount(AccountListener accountListener) {
        getWeCarAccount(accountListener == null ? null : accountListener.getInnerListener());
    }

    private void getWeCarAccount(IAccountListener iAccountListener) {
        Log.d(TAG, "getWeCarAccount IListener=" + iAccountListener);
        try {
            if (this.mAccountService != null) {
                this.mAccountService.getWeCarAccount(iAccountListener);
            } else {
                Log.e(TAG, "mAccountService is null");
                if (iAccountListener != null) {
                    iAccountListener.onError(0);
                }
            }
        } catch (RemoteException e) {
            Log.e(TAG, "getWeCarAccount exception. ", e);
        }
    }

    private boolean removeBindAccount(TxAccount txAccount) {
        Log.d(TAG, "removeBindAccount account=" + txAccount);
        if (txAccount == null || TextUtils.isEmpty(txAccount.getId())) {
            return false;
        }
        try {
        } catch (RemoteException e) {
            Log.e(TAG, "removeBindAccount manager is not initialed.", e);
        }
        if (this.mAccountService != null) {
            Log.w(TAG, "removeBindAccount : uid=" + txAccount.getUserId() + " id=" + txAccount.getId());
            return this.mAccountService.removeTXAccount(txAccount);
        }
        Log.e(TAG, "mAccountService is null");
        return false;
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public boolean removeBindAccount(String str, TxAccount txAccount) {
        Log.w(TAG, "removeBindAccount Remove account from " + str + " targetAccount=" + txAccount);
        return !TextUtils.isEmpty(str) && removeBindAccount(txAccount);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void updateSessionKey(String str, long j) {
        try {
            if (this.mAccountService != null) {
                this.mAccountService.updateSessionKey(str, j);
            } else {
                Log.e(TAG, "mAccountService is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "account manager is not initialed.", e);
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public String getSessionKey() {
        WeCarAccount weCarAccount = getWeCarAccount();
        if (weCarAccount != null) {
            return weCarAccount.getSessionKey();
        }
        return null;
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public long getNonce() {
        try {
            if (this.mAccountService != null) {
                return this.mAccountService.getNonce();
            }
            return -1L;
        } catch (RemoteException e) {
            Log.e(TAG, "account manager is not initialed.", e);
            return -1L;
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public boolean removeWeCarAccount() {
        Log.e(TAG, "removeWeCarAccount");
        try {
            if (this.mAccountService == null) {
                return false;
            }
            Log.w(TAG, "removeWeCarAccount : ");
            return this.mAccountService.removeWeCarAccount();
        } catch (RemoteException e) {
            Log.e(TAG, "account manager is not initialed.", e);
            return false;
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public boolean isTAIAuthOk() {
        try {
            if (this.mAccountService != null) {
                return this.mAccountService.isTAIAuthOk();
            }
            Log.e(TAG, "isTAIAuthOk, account manager is not initialed, default return true.");
            return true;
        } catch (RemoteException e) {
            Log.e(TAG, "isTAIAuthOk,error is :", e);
            return true;
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void appletLogin(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.appletLogin(str, iMossCallBack);
                } else {
                    Log.e(TAG, "loginWX, account manager is not initialed.");
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
                }
            } catch (Exception e) {
                Log.e(TAG, "loginWX, account manager is error:", e);
                try {
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
                } catch (RemoteException e2) {
                    Log.e(TAG, "loginWX, account manager is error:", e2);
                }
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void checkAppletSession(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.checkAppletSession(str, iMossCallBack);
                } else {
                    Log.e(TAG, "checkAppletSession, account manager is not initialed.");
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
                }
            } catch (Exception e) {
                Log.e(TAG, "checkAppletSession, account manager is error:", e);
                try {
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
                } catch (RemoteException e2) {
                    Log.e(TAG, "checkAppletSession, account manager is error:", e2);
                }
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getPhoneNumber(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getPhoneNumber(str, iMossCallBack);
                } else {
                    Log.e(TAG, "getPhoneNumber, account manager is not initialed.");
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
                }
            } catch (Exception e) {
                Log.e(TAG, "getPhoneNumber, account manager is error:", e);
                try {
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
                } catch (RemoteException e2) {
                    Log.e(TAG, "getPhoneNumber, account manager is error:", e2);
                }
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getAppletUserInfo(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getAppletUserInfo(str, iMossCallBack);
                } else {
                    Log.e(TAG, "getAppletUserInfo, account manager is not initialed.");
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
                }
            } catch (Exception e) {
                Log.e(TAG, "getAppletUserInfo, account manager is error:", e);
                try {
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
                } catch (RemoteException e2) {
                    Log.e(TAG, "getAppletUserInfo, account manager is error:", e2);
                }
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void appletAuth(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.AppletAuth(str, iMossCallBack);
                } else {
                    Log.e(TAG, "AppletAuth, account manager is not initialed.");
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
                }
            } catch (Exception e) {
                Log.e(TAG, "AppletAuth, account manager is error:", e);
                try {
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
                } catch (RemoteException e2) {
                    Log.e(TAG, "AppletAuth, account manager is error:", e2);
                }
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getAppletAuthStatus(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getAuthStatus(str, iMossCallBack);
                } else {
                    Log.e(TAG, "getAppletAuthStatus, account manager is not initialed.");
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
                }
            } catch (Exception e) {
                Log.e(TAG, "getAppletAuthStatus, account manager is error:" + e.getMessage());
                try {
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
                } catch (RemoteException e2) {
                    Log.e(TAG, "getAppletAuthStatus, account manager is error:", e2);
                }
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getAppletBaseCarInfo(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getBaseCarInfo(str, iMossCallBack);
                } else {
                    Log.e(TAG, "getAppletBaseCarInfo, account manager is not initialed.");
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
                }
            } catch (Exception e) {
                Log.e(TAG, "getAppletBaseCarInfo, account manager is error:", e);
                try {
                    iMossCallBack.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
                } catch (RemoteException e2) {
                    Log.e(TAG, "getAppletBaseCarInfo, account manager is error:", e2);
                }
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getTaiAccountInfo(int i, Map<String, Object> map, ITAIUserInfo iTAIUserInfo, String str) {
        Log.e(TAG, "getTaiAccountInfo requestType=" + i + ", packageName=" + str + ", iTAIUserInfo=" + iTAIUserInfo);
        try {
            if (this.mAccountService != null) {
                this.mAccountService.getTaiAccountInfo(i, map, str, iTAIUserInfo);
            } else {
                Log.e(TAG, "getTaiAccountInfo, account manager is not initialed.");
                iTAIUserInfo.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
            }
        } catch (Exception e) {
            Log.e(TAG, "getTaiAccountInfo, account manager is error:", e);
            try {
                iTAIUserInfo.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
            } catch (RemoteException e2) {
                Log.e(TAG, "getTaiAccountInfo, account manager is error:", e2);
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void logoutTaiAccount(int i, Map<String, Object> map, ITAIUserInfo iTAIUserInfo, String str) {
        Log.e(TAG, "logoutTaiAccount requestType=" + i + ", packageName=" + str + ", iTAIUserInfo=" + iTAIUserInfo);
        logoutTaiAccount(i, map, null, null, iTAIUserInfo, str);
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void logoutTaiAccount(int i, Map<String, Object> map, @Nullable String str, @Nullable String str2, ITAIUserInfo iTAIUserInfo, String str3) {
        Log.e(TAG, "logoutTaiAccount requestType=" + i + ", packageName=" + str3 + ", wecarid=" + str + ", userid=" + str2 + ", iTAIUserInfo=" + iTAIUserInfo);
        if (iTAIUserInfo != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.logoutTaiAccount(i, map, str3, str, str2, iTAIUserInfo);
                } else {
                    Log.e(TAG, "logoutTaiAccount, account manager is not initialed.");
                    iTAIUserInfo.onResult(ErrorCode.ERROR_CODE_SERVICE_NOT_START.buildJson());
                }
            } catch (Exception e) {
                Log.e(TAG, "logoutTaiAccount, account manager is error:", e);
                try {
                    iTAIUserInfo.onResult(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.buildJson());
                } catch (RemoteException unused) {
                    Log.e(TAG, "logoutTaiAccount, account manager is error:", e);
                }
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public WeCarContract getContract(int i) {
        Log.e(TAG, "getContract serviceType=" + i);
        if (this.mAccountService != null) {
            try {
                return this.mAccountService.checkContract(i);
            } catch (RemoteException e) {
                Log.e(TAG, "Get contract failed: ", e);
                return null;
            }
        }
        Log.e(TAG, "account manager is not initialed.");
        return null;
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public String getAccountDebugInfo() {
        if (this.mAccountService != null) {
            try {
                return this.mAccountService.getAccountDebugInfo();
            } catch (RemoteException e) {
                Log.e(TAG, "getAccountDebugInfo failed: ", e);
                return null;
            }
        }
        Log.e(TAG, "account manager is not initialed.");
        return null;
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void getContractAsync(int i, final IContractCallback iContractCallback) {
        Log.e(TAG, "getContractAsync serviceType=" + i + ", itaiContractCallback=" + iContractCallback);
        try {
            if (this.mAccountService != null) {
                this.mAccountService.checkContractAsync(i, new ITAIContractCallback.Stub() { // from class: com.tencent.taes.remote.impl.account.AccountRemoteApi.2
                    @Override // com.tencent.taes.remote.api.account.listener.ITAIContractCallback
                    public void onSuccess(WeCarContract weCarContract) {
                        if (iContractCallback != null) {
                            iContractCallback.onSuccess(weCarContract);
                        }
                    }

                    @Override // com.tencent.taes.remote.api.account.listener.ITAIContractCallback
                    public void onError(int i2, String str) {
                        if (iContractCallback != null) {
                            iContractCallback.onError(i2, str);
                        }
                    }
                });
            } else {
                Log.e(TAG, "getTaiAccountInfo, account manager is not initialed.");
                if (iContractCallback != null) {
                    iContractCallback.onError(ErrorCode.ERROR_CODE_SERVICE_NOT_START.err, ErrorCode.ERROR_CODE_SERVICE_NOT_START.msg);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "checkContractAsync failed: ", e);
            if (iContractCallback != null) {
                iContractCallback.onError(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.err, ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.msg);
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public void refreshAccessCode(String str, final IRefreshAccessCodeCallback iRefreshAccessCodeCallback) {
        Log.e(TAG, "refreshAccessCode packageName=" + str + ", callback=" + iRefreshAccessCodeCallback);
        try {
            if (this.mAccountService != null) {
                this.mAccountService.refreshAccessCode(str, new ITAIRefreshAccessCodeCallback.Stub() { // from class: com.tencent.taes.remote.impl.account.AccountRemoteApi.3
                    @Override // com.tencent.taes.remote.api.account.listener.ITAIRefreshAccessCodeCallback
                    public void onSuccess(RefreshAccessCode refreshAccessCode) {
                        if (iRefreshAccessCodeCallback != null) {
                            iRefreshAccessCodeCallback.onSuccess(refreshAccessCode);
                        }
                    }

                    @Override // com.tencent.taes.remote.api.account.listener.ITAIRefreshAccessCodeCallback
                    public void onError(int i, String str2) {
                        if (iRefreshAccessCodeCallback != null) {
                            iRefreshAccessCodeCallback.onError(i, str2);
                        }
                    }
                });
            } else {
                Log.e(TAG, "refreshAccessCode, account manager is not initialed.");
                if (iRefreshAccessCodeCallback != null) {
                    iRefreshAccessCodeCallback.onError(ErrorCode.ERROR_CODE_SERVICE_NOT_START.err, ErrorCode.ERROR_CODE_SERVICE_NOT_START.msg);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "refreshAccessCode failed: ", e);
            if (iRefreshAccessCodeCallback != null) {
                iRefreshAccessCodeCallback.onError(ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.err, ErrorCode.ERROR_CODE_LOCAL_SERVER_ERROR.msg);
            }
        }
    }

    @Override // com.tencent.taes.remote.api.account.IAccountApi
    public RefreshAccessCode refreshAccessCodeSync(String str) {
        Log.e(TAG, "refreshAccessCodeSync packageName=" + str);
        try {
            if (this.mAccountService != null) {
                return this.mAccountService.refreshAccessCodeSync(str);
            }
            Log.e(TAG, "mAccountService is null");
            return null;
        } catch (Exception e) {
            Log.e(TAG, "refreshAccessCodeSync failed: ", e);
            return null;
        }
    }
}
