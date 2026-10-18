package com.tencent.taes.remote.api.account;

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
public interface IAccountApi {
    void appletAuth(String str, IMossCallBack iMossCallBack);

    void appletLogin(String str, IMossCallBack iMossCallBack);

    void checkAppletSession(String str, IMossCallBack iMossCallBack);

    String getAccountDebugInfo();

    void getAppletAuthStatus(String str, IMossCallBack iMossCallBack);

    void getAppletBaseCarInfo(String str, IMossCallBack iMossCallBack);

    void getAppletUserInfo(String str, IMossCallBack iMossCallBack);

    WeCarContract getContract(int i);

    void getContractAsync(int i, IContractCallback iContractCallback);

    long getNonce();

    void getPhoneNumber(String str, IMossCallBack iMossCallBack);

    String getSessionKey();

    void getTaiAccountInfo(int i, Map<String, Object> map, ITAIUserInfo iTAIUserInfo, String str);

    WeCarAccount getWeCarAccount();

    void getWeCarAccount(AccountListener accountListener);

    boolean isTAIAuthOk();

    void logoutTaiAccount(int i, Map<String, Object> map, ITAIUserInfo iTAIUserInfo, String str);

    void logoutTaiAccount(int i, Map<String, Object> map, String str, String str2, ITAIUserInfo iTAIUserInfo, String str3);

    void refreshAccessCode(String str, IRefreshAccessCodeCallback iRefreshAccessCodeCallback);

    RefreshAccessCode refreshAccessCodeSync(String str);

    void registerAccountEventReceiverListener(IAccountClientEventListener iAccountClientEventListener);

    boolean removeBindAccount(String str, TxAccount txAccount);

    boolean removeWeCarAccount();

    void unregisterAccountEventReceiverListener(IAccountClientEventListener iAccountClientEventListener);

    void updateSessionKey(String str, long j);
}
