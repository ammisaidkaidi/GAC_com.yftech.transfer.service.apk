package com.tencent.wecarbase.client;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.IAccountListener;
import com.tencent.wecarbase.IAccountService;
import com.tencent.wecarbase.IConfigListener;
import com.tencent.wecarbase.account.request.BaseAccountRequest;
import com.tencent.wecarbase.common.AccountProvider;
import com.tencent.wecarbase.common.ConfigHolder;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.model.TxAccount;
import com.tencent.wecarbase.model.WeCarAccount;
import com.tencent.wecarbase.model.WeCarContract;
import com.tencent.wecarbase.taiaccount.IMossCallBack;
import com.tencent.wecarbase.taiaccount.ITAIUserInfo;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class AccountManager extends BaseManager {
    private static final String TAG = "AccountManager";
    public static final int WECAR_FLOW = 3;
    public static final int WECAR_KARAOKE = 8;
    public static final int WECAR_MUSIC = 4;
    public static final int WECAR_NAVI = 1;
    public static final int WECAR_PARKING = 5;
    public static final int WECAR_RADIO = 7;
    public static final int WECAR_SPEECH = 2;
    public static final int WECAR_WECHAT = 6;
    private static volatile AccountManager sInstance = new AccountManager();
    private final String LOCAL_SERVER_NOT_START;
    private final String SERVER_ERROR;
    private IAccountService mAccountService;
    private AccountServiceReadyListener mAccountServiceReadyListener;
    private volatile BaseAccountRequest mBaseAccountRequest;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface AccountServiceReadyListener {
        void onAccountServiceReady();
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

    protected AccountManager() {
        super(SDKConfig.ACTION_ACCOUNT_SERVICE);
        this.LOCAL_SERVER_NOT_START = "{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}";
        this.SERVER_ERROR = "{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}";
    }

    public static AccountManager getInstance() {
        return sInstance;
    }

    public WeCarAccount getWeCarAccount() {
        try {
            if (this.mAccountService != null) {
                return this.mAccountService.getWeCarAccountSync();
            }
            return null;
        } catch (RemoteException e) {
            e.printStackTrace();
            LogUtils.d(TAG, "getWeCarAccount sync, e = " + e.toString());
            return null;
        }
    }

    public boolean getWeCarAccount(AccountListener accountListener) {
        return getWeCarAccount(accountListener == null ? null : accountListener.getInnerListener());
    }

    public boolean getWeCarAccount(IAccountListener iAccountListener) {
        try {
            if (this.mAccountService != null) {
                this.mAccountService.getWeCarAccount(iAccountListener);
                return true;
            }
            if (iAccountListener == null) {
                return true;
            }
            iAccountListener.onError(0);
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            Log.e(TAG, "getWeCarAccount exception. " + e.toString());
            return false;
        }
    }

    public void addBindAccount(TxAccount txAccount) {
        try {
            if (this.mAccountService != null) {
                this.mAccountService.addBindAccount(txAccount);
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "account manager is not initialed.");
        }
    }

    public boolean removeBindAccount(TxAccount txAccount) {
        if (txAccount == null || TextUtils.isEmpty(txAccount.getId())) {
            return false;
        }
        try {
            if (this.mAccountService != null) {
                LogUtils.ff(TAG, "removeBindAccount : uid=" + txAccount.getUserId() + " id=" + txAccount.getId());
                return this.mAccountService.removeTXAccount(txAccount);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean removeBindAccount(String str, TxAccount txAccount) {
        LogUtils.ff(TAG, "Remove account from " + str + " targetAccount=" + txAccount);
        return removeBindAccount(txAccount);
    }

    public void updateSessionKey(String str, long j) {
        try {
            if (this.mAccountService != null) {
                this.mAccountService.updateSessionKey(str, j);
            }
        } catch (RemoteException unused) {
            Log.e(TAG, "account manager is not initialed.");
        }
    }

    public String getSessionKey() {
        WeCarAccount weCarAccount = getWeCarAccount();
        if (weCarAccount != null) {
            return weCarAccount.getSessionKey();
        }
        return null;
    }

    public long getNonce() {
        try {
            if (this.mAccountService != null) {
                return this.mAccountService.getNonce();
            }
            return -1L;
        } catch (RemoteException unused) {
            Log.e(TAG, "account manager is not initialed.");
            return -1L;
        }
    }

    public boolean removeWeCarAccount() {
        try {
            if (this.mAccountService == null) {
                return false;
            }
            LogUtils.ff(TAG, "removeWeCarAccount : ");
            return this.mAccountService.removeWeCarAccount();
        } catch (RemoteException unused) {
            Log.e(TAG, "account manager is not initialed.");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void getProductConfigByKey(String str, String str2, String str3, IConfigListener iConfigListener) {
        try {
            if (this.mAccountService != null) {
                this.mAccountService.getProductConfigByKey(str, str2, str3, iConfigListener);
            } else {
                Log.e(TAG, "getProductConfigByKey, account manager is not initialed.");
            }
        } catch (Exception unused) {
            Log.e(TAG, "getProductConfigByKey, account manager is not initialed.");
            if (iConfigListener != null) {
                try {
                    iConfigListener.onError(-1);
                } catch (RemoteException unused2) {
                    Log.e(TAG, "getProductConfigByKey, account manager is not initialed.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void getUserConfigByKey(String str, IConfigListener iConfigListener) {
        try {
            if (this.mAccountService != null) {
                this.mAccountService.getUserConfigByKey(str, iConfigListener);
            } else {
                Log.e(TAG, "getUserConfigByKey, account manager is not initialed.");
            }
        } catch (Exception unused) {
            Log.e(TAG, "getUserConfigByKey, account manager is not initialed.");
            if (iConfigListener != null) {
                try {
                    iConfigListener.onError(-1);
                } catch (RemoteException unused2) {
                    Log.e(TAG, "getUserConfigByKey, account manager is not initialed.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setUserConfig(String str, String str2, IConfigListener iConfigListener) {
        try {
            if (this.mAccountService != null) {
                this.mAccountService.setUserConfig(str, str2, iConfigListener);
            } else {
                Log.e(TAG, "setUserConfig, account manager is not initialed.");
            }
        } catch (Exception unused) {
            Log.e(TAG, "setUserConfig, account manager is not initialed.");
            if (iConfigListener != null) {
                try {
                    iConfigListener.onError(-1);
                } catch (RemoteException unused2) {
                    Log.e(TAG, "setUserConfig, account manager is not initialed.");
                }
            }
        }
    }

    public boolean isTAIAuthOk() {
        try {
            if (this.mAccountService != null) {
                return this.mAccountService.isTAIAuthOk();
            }
            Log.e(TAG, "isTAIAuthOk, account manager is not initialed, default return true.");
            return true;
        } catch (Exception e) {
            Log.e(TAG, "isTAIAuthOk,error is :" + e.getMessage() + "  return true!");
            return true;
        }
    }

    protected boolean isServiceConnected() {
        return this.mAccountService != null;
    }

    public void setAccountServiceReadyListener(AccountServiceReadyListener accountServiceReadyListener) {
        this.mAccountServiceReadyListener = accountServiceReadyListener;
        if (this.mAccountService == null || this.mAccountServiceReadyListener == null) {
            return;
        }
        this.mAccountServiceReadyListener.onAccountServiceReady();
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceConnectedOk(IBinder iBinder) {
        this.mAccountService = IAccountService.Stub.asInterface(iBinder);
        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.client.AccountManager.1
            @Override // java.lang.Runnable
            public void run() {
                LogUtils.d(AccountManager.TAG, "onServiceConnectedOk preLoadConfig");
                TAIConfigManager.getInstance().preLoadConfig();
            }
        });
        if (this.mAccountServiceReadyListener != null) {
            this.mAccountServiceReadyListener.onAccountServiceReady();
        }
    }

    public WeCarAccount getWecarAccountFromProvider(Context context) {
        WeCarAccount weCarAccount = null;
        try {
            Bundle call = context.getContentResolver().call(AccountProvider.getUriForPackage(ConfigHolder.getInstance().getConfig().getServiceConfig().getHostPackage()), "getWeCarAccount", (String) null, (Bundle) null);
            if (call != null) {
                call.setClassLoader(WeCarAccount.class.getClassLoader());
                Parcelable parcelable = call.getParcelable("wecar_account");
                if (parcelable != null) {
                    weCarAccount = (WeCarAccount) parcelable;
                }
            }
        } catch (Exception e) {
            LogUtils.e(TAG, e.toString());
        }
        LogUtils.d(TAG, "getWecarAccountFromProvider  return " + weCarAccount);
        return weCarAccount;
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void onServiceDisconnected(ComponentName componentName) {
        this.mAccountService = null;
    }

    @Override // com.tencent.wecarbase.client.BaseManager
    protected void dispose() {
        LogUtils.d(TAG, "dispose");
    }

    public void appletLogin(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.appletLogin(str, iMossCallBack);
                } else {
                    Log.e(TAG, "loginWX, account manager is not initialed.");
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "loginWX, account manager is error:" + e.getMessage());
                try {
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void checkAppletSession(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.checkAppletSession(str, iMossCallBack);
                } else {
                    Log.e(TAG, "checkAppletSession, account manager is not initialed.");
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "checkAppletSession, account manager is error:" + e.getMessage());
                try {
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void getPhoneNumber(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getPhoneNumber(str, iMossCallBack);
                } else {
                    Log.e(TAG, "getPhoneNumber, account manager is not initialed.");
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "getPhoneNumber, account manager is error:" + e.getMessage());
                try {
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void getAppletUserInfo(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getAppletUserInfo(str, iMossCallBack);
                } else {
                    Log.e(TAG, "getAppletUserInfo, account manager is not initialed.");
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "getAppletUserInfo, account manager is error:" + e.getMessage());
                try {
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void AppletAuth(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.AppletAuth(str, iMossCallBack);
                } else {
                    Log.e(TAG, "AppletAuth, account manager is not initialed.");
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "AppletAuth, account manager is error:" + e.getMessage());
                try {
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void getAppletAuthStatus(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getAuthStatus(str, iMossCallBack);
                } else {
                    Log.e(TAG, "getAppletAuthStatus, account manager is not initialed.");
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "getAppletAuthStatus, account manager is error:" + e.getMessage());
                try {
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void getAppletBaseCarInfo(String str, IMossCallBack iMossCallBack) {
        if (iMossCallBack != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getBaseCarInfo(str, iMossCallBack);
                } else {
                    Log.e(TAG, "getAppletBaseCarInfo, account manager is not initialed.");
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "getAppletBaseCarInfo, account manager is error:" + e.getMessage());
                try {
                    iMossCallBack.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void getTaiAccountInfo(int i, Map<String, Object> map, ITAIUserInfo iTAIUserInfo) {
        if (iTAIUserInfo != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.getTaiAccountInfo(i, map, ContextHolder.getContext().getPackageName(), iTAIUserInfo);
                } else {
                    Log.e(TAG, "getTaiAccountInfo, account manager is not initialed.");
                    iTAIUserInfo.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "getTaiAccountInfo, account manager is error:" + e.getMessage());
                try {
                    iTAIUserInfo.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void logoutTaiAccount(int i, Map<String, Object> map, String str, String str2, ITAIUserInfo iTAIUserInfo) {
        if (iTAIUserInfo != null) {
            try {
                if (this.mAccountService != null) {
                    this.mAccountService.logoutTaiAccount(i, map, ContextHolder.getContext().getPackageName(), str, str2, iTAIUserInfo);
                } else {
                    Log.e(TAG, "getTaiAccountInfo, account manager is not initialed.");
                    iTAIUserInfo.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server not start!\"\n}");
                }
            } catch (Exception e) {
                Log.e(TAG, "getTaiAccountInfo, account manager is error:" + e.getMessage());
                try {
                    iTAIUserInfo.onResult("{\n    \"err\":-1,\n    \"info\": \"Local Server error!\"\n}");
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void closeAccountUI(String str) {
        if (this.mAccountService != null) {
            try {
                this.mAccountService.closeAccountUI(str);
            } catch (RemoteException e) {
                Log.e(TAG, "Close account UI failed", e);
            }
        }
    }

    public void closeFeedbackUI(String str) {
        if (this.mAccountService != null) {
            try {
                this.mAccountService.closeFeedbackUI(str);
            } catch (RemoteException e) {
                Log.e(TAG, "Close feedback UI failed", e);
            }
        }
    }

    public WeCarContract getContract(int i) {
        if (this.mAccountService == null) {
            return null;
        }
        try {
            return this.mAccountService.checkContract(i);
        } catch (RemoteException e) {
            Log.e(TAG, "Get contract failed: ", e);
            return null;
        }
    }
}
