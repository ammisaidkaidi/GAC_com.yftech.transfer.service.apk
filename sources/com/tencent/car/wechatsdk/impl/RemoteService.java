package com.tencent.car.wechatsdk.impl;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.tencent.car.export.message.WeChatMessage;
import com.tencent.car.export.miniprogramm.WXMiniProgrammDesc;
import com.tencent.car.sdk.IWeChatMsgCallback;
import com.tencent.car.sdk.IWeChatNotDisturbCallback;
import com.tencent.car.sdk.IWeChatPanelCallback;
import com.tencent.car.sdk.IWeChatSemiAutoLoginCallback;
import com.tencent.car.sdk.IWeChatService;
import com.tencent.car.sdk.IWeChatUIStateCallback;
import com.tencent.car.sdk.IWeChatUnreadMsgStateCallback;
import com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi;
import com.tencent.car.wechatsdk.interfaces.OnDisplayStateListener;
import com.tencent.car.wechatsdk.utils.GsonUtils;
import com.tencent.car.wechatsdk.utils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class RemoteService {
    private static final String TAG = "RemoteService";
    private OnDisplayStateListener mDisplayStateListener;
    private IInfoDispatchApi mInfoDispatcher;
    private IWeChatService mWeChatService;

    /* JADX INFO: Access modifiers changed from: protected */
    public RemoteService(@NonNull IWeChatService iWeChatService, @NonNull IInfoDispatchApi iInfoDispatchApi) {
        this.mWeChatService = iWeChatService;
        this.mInfoDispatcher = iInfoDispatchApi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void start() {
        LogUtils.d(TAG, "onLinkSuccess");
        if (this.mWeChatService != null) {
            try {
                this.mWeChatService.setWeChatMsgObserve(new IWeChatMsgCallback.Stub() { // from class: com.tencent.car.wechatsdk.impl.RemoteService.1
                    @Override // com.tencent.car.sdk.IWeChatMsgCallback
                    public void onReceiveWeChatMsg(String str) throws RemoteException {
                        LogUtils.d(RemoteService.TAG, "onReceiveWeChatMsg msg = " + str);
                        if (RemoteService.this.mInfoDispatcher != null) {
                            RemoteService.this.mInfoDispatcher.dispatchWeChatMessage((WeChatMessage) GsonUtils.fromJson(str, WeChatMessage.class));
                        }
                    }
                });
                this.mWeChatService.setWeChaUiStateObserve(new IWeChatUIStateCallback.Stub() { // from class: com.tencent.car.wechatsdk.impl.RemoteService.2
                    @Override // com.tencent.car.sdk.IWeChatUIStateCallback
                    public void onWeChatUiStateChange(int i) throws RemoteException {
                        LogUtils.d(RemoteService.TAG, "onWeChatUiStateChange state = " + i);
                        if (RemoteService.this.mInfoDispatcher != null) {
                            RemoteService.this.mInfoDispatcher.dispatchWeChatUIState(i);
                        }
                    }
                });
                this.mWeChatService.setWeChaPanelStateObserve(new IWeChatPanelCallback.Stub() { // from class: com.tencent.car.wechatsdk.impl.RemoteService.3
                    @Override // com.tencent.car.sdk.IWeChatPanelCallback
                    public void onReceiveWeChatPanel(boolean z) throws RemoteException {
                        LogUtils.d(RemoteService.TAG, "onReceiveWeChatPanel isPanel = " + z);
                        if (RemoteService.this.mInfoDispatcher != null) {
                            RemoteService.this.mInfoDispatcher.dispatchWeChatPanelState(z);
                        }
                    }
                });
                this.mWeChatService.setWeChaSemiAutoLoginStateObserve(new IWeChatSemiAutoLoginCallback.Stub() { // from class: com.tencent.car.wechatsdk.impl.RemoteService.4
                    @Override // com.tencent.car.sdk.IWeChatSemiAutoLoginCallback
                    public void onReceiveWeChatSemiAutoLogin(boolean z) throws RemoteException {
                        LogUtils.d(RemoteService.TAG, "onReceiveWeChatSemiAutoLogin isSemiAutoLogin = " + z);
                        if (RemoteService.this.mInfoDispatcher != null) {
                            RemoteService.this.mInfoDispatcher.dispatchWeChatSemiAutoLoginState(z);
                        }
                    }
                });
                this.mWeChatService.setWeChatNotDisturbStateObserve(new IWeChatNotDisturbCallback.Stub() { // from class: com.tencent.car.wechatsdk.impl.RemoteService.5
                    @Override // com.tencent.car.sdk.IWeChatNotDisturbCallback
                    public void onReceiveWeChatNotDisturb(int i) throws RemoteException {
                        LogUtils.d(RemoteService.TAG, "onReceiveWeChatNotDisturb isNotDisturb = " + i);
                        if (RemoteService.this.mInfoDispatcher != null) {
                            RemoteService.this.mInfoDispatcher.dispatchWeChatNotDisturbState(i);
                        }
                    }
                });
                this.mWeChatService.setWeChatUnreadMsgStateObserve(new IWeChatUnreadMsgStateCallback.Stub() { // from class: com.tencent.car.wechatsdk.impl.RemoteService.6
                    @Override // com.tencent.car.sdk.IWeChatUnreadMsgStateCallback
                    public void onReceiveWeChatUnreadMsgState(int i) throws RemoteException {
                        LogUtils.d(RemoteService.TAG, "onReceiveWeChatUnreadMsgState isExistUnreadMsg = " + i);
                        if (RemoteService.this.mInfoDispatcher != null) {
                            RemoteService.this.mInfoDispatcher.dispatchWeChatUnreadMsgState(i);
                        }
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getWeChatLoginState() {
        LogUtils.d(TAG, "getWeChatLoginState");
        if (this.mWeChatService == null) {
            return false;
        }
        try {
            return this.mWeChatService.getWeChatLoginState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getWeChatVoipState() {
        LogUtils.d(TAG, "getWeChatVoipState");
        if (this.mWeChatService == null) {
            return 21;
        }
        try {
            return this.mWeChatService.getWeChatVoipState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 21;
        }
    }

    public int getWeChatUIState() {
        LogUtils.d(TAG, "getWeChatUIState");
        if (this.mWeChatService == null) {
            return 0;
        }
        try {
            return this.mWeChatService.getWeChatUIState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void SetDisplayStateListener(OnDisplayStateListener onDisplayStateListener) {
        this.mDisplayStateListener = onDisplayStateListener;
    }

    public void setPanel(boolean z) {
        LogUtils.d(TAG, "setPanel");
        if (this.mWeChatService != null) {
            LogUtils.d(TAG, "mWeChatService != null");
            try {
                this.mWeChatService.setPanel(z);
                if (this.mDisplayStateListener != null) {
                    this.mDisplayStateListener.SetState(true);
                    return;
                }
                return;
            } catch (RemoteException e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.mDisplayStateListener != null) {
            this.mDisplayStateListener.SetState(false);
        }
    }

    public void setSemiAutoLogin(boolean z) {
        LogUtils.d(TAG, "setSemiAutoLogin");
        if (this.mWeChatService != null) {
            try {
                this.mWeChatService.setSemiAutoLogin(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getWeChatPanelState() {
        if (this.mWeChatService == null) {
            return false;
        }
        try {
            LogUtils.d(TAG, "getWeChatPanelState: " + this.mWeChatService.getWeChatPanelState());
            return this.mWeChatService.getWeChatPanelState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getWeChatSemiAutoLoginState() {
        if (this.mWeChatService == null) {
            return false;
        }
        try {
            LogUtils.d(TAG, "getWeChatSemiAutoLoginState: " + this.mWeChatService.getWeChatSemiAutoLoginState());
            return this.mWeChatService.getWeChatSemiAutoLoginState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setWeChatNotDisturbState(int i) {
        LogUtils.d(TAG, "setWeChatNotDisturbState: " + i);
        if (this.mWeChatService != null) {
            try {
                this.mWeChatService.setWeChatNotDisturbState(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getWeChatNotDisturbState() {
        if (this.mWeChatService == null) {
            return 0;
        }
        try {
            LogUtils.d(TAG, "getWeChatNotDisturbState: " + this.mWeChatService.getWeChatNotDisturbState());
            return this.mWeChatService.getWeChatNotDisturbState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void logoutWeChat() {
        LogUtils.d(TAG, "logoutWeChat");
        if (this.mWeChatService != null) {
            try {
                this.mWeChatService.logoutWeChat();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void invokeWithText(String str, int i, String str2) {
        LogUtils.d(TAG, "onSemanticSkillCallback: semantic = " + str + ", doa = " + i);
        if (this.mWeChatService != null) {
            try {
                this.mWeChatService.invokeWithText(str, i, str2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void invokeWithWakeupWord(String str, int i, String str2) {
        LogUtils.d(TAG, "onSemanticWakeupCallback: word = " + str + ", doa = " + i);
        if (this.mWeChatService != null) {
            try {
                this.mWeChatService.invokeWithWakeupWord(str, i, str2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getWeChatUnreadMsgState() {
        if (this.mWeChatService == null) {
            return 0;
        }
        try {
            LogUtils.d(TAG, "getWeChatUnreadMsgState: " + this.mWeChatService.getWeChatUnreadMsgState());
            return this.mWeChatService.getWeChatUnreadMsgState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void openWeChatFunctionPage(int i) {
        LogUtils.d(TAG, "openWeChatFunctionPage: " + i);
        if (this.mWeChatService != null) {
            try {
                this.mWeChatService.openWeChatFunctionPage(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getDashboardConfig() {
        if (this.mWeChatService == null) {
            return false;
        }
        try {
            LogUtils.d(TAG, "getDashboardConfig: " + this.mWeChatService.getDashboardConfig());
            return this.mWeChatService.getDashboardConfig();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getNotDisturbConfig() {
        if (this.mWeChatService == null) {
            return false;
        }
        try {
            LogUtils.d(TAG, "getNotDisturbConfig: " + this.mWeChatService.getNotDisturbConfig());
            return this.mWeChatService.getNotDisturbConfig();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getUserGuideConfig() {
        if (this.mWeChatService == null) {
            return false;
        }
        try {
            LogUtils.d(TAG, "getUserGuideConfig: " + this.mWeChatService.getUserGuideConfig());
            return this.mWeChatService.getUserGuideConfig();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int launchMiniProgramm(WXMiniProgrammDesc wXMiniProgrammDesc) {
        LogUtils.d(TAG, "launchMiniProgramm: " + wXMiniProgrammDesc.toString());
        if (this.mWeChatService == null) {
            return -1;
        }
        try {
            return this.mWeChatService.launchMiniProgramm(GsonUtils.toJson(wXMiniProgrammDesc));
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }
}
