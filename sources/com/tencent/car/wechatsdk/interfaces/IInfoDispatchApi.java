package com.tencent.car.wechatsdk.interfaces;

import com.tencent.car.export.message.WeChatMessage;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IInfoDispatchApi {
    void dispatchWeChatMessage(WeChatMessage weChatMessage);

    void dispatchWeChatNotDisturbState(int i);

    void dispatchWeChatPanelState(boolean z);

    void dispatchWeChatSemiAutoLoginState(boolean z);

    void dispatchWeChatUIState(int i);

    void dispatchWeChatUnreadMsgState(int i);

    void registerWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener);

    void registerWeChatNotDisturbStateListener(OnWeChatNotDisturbStateListener onWeChatNotDisturbStateListener);

    void registerWeChatPanelStateListener(OnWeChatPanelStateListener onWeChatPanelStateListener);

    void registerWeChatSemiAutoLoginStateListener(OnWeChatSemiAutoLoginStateListener onWeChatSemiAutoLoginStateListener);

    void registerWeChatUIStateListener(OnWeChatUIStateListener onWeChatUIStateListener);

    void registerWeChatUnreadMsgStateListener(OnWeChatUnreadMsgStateListener onWeChatUnreadMsgStateListener);

    void registerWeChatVoipListener(OnWeChatVoipListener onWeChatVoipListener);

    void unregisterWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener);

    void unregisterWeChatNotDisturbStateListener(OnWeChatNotDisturbStateListener onWeChatNotDisturbStateListener);

    void unregisterWeChatPanelStateListener(OnWeChatPanelStateListener onWeChatPanelStateListener);

    void unregisterWeChatSemiAutoLoginStateListener(OnWeChatSemiAutoLoginStateListener onWeChatSemiAutoLoginStateListener);

    void unregisterWeChatUIStateListener(OnWeChatUIStateListener onWeChatUIStateListener);

    void unregisterWeChatUnreadMsgStateListener(OnWeChatUnreadMsgStateListener onWeChatUnreadMsgStateListener);

    void unregisterWeChatVoipListener(OnWeChatVoipListener onWeChatVoipListener);
}
