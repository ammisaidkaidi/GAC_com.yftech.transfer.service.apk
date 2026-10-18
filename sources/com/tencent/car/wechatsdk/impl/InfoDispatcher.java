package com.tencent.car.wechatsdk.impl;

import com.tencent.car.export.message.WeChatMessage;
import com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi;
import com.tencent.car.wechatsdk.interfaces.OnWeChatMessageListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatNotDisturbStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatPanelStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatSemiAutoLoginStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatUIStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatUnreadMsgStateListener;
import com.tencent.car.wechatsdk.interfaces.OnWeChatVoipListener;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class InfoDispatcher implements IInfoDispatchApi {
    private final List<OnWeChatMessageListener> mWeChatMessageListeners = new CopyOnWriteArrayList();
    private final List<OnWeChatVoipListener> mWeChatVoipListeners = new CopyOnWriteArrayList();
    private final List<OnWeChatUIStateListener> mWeChatUIStateListeners = new CopyOnWriteArrayList();
    private final List<OnWeChatPanelStateListener> mWeChatPanelStateListeners = new CopyOnWriteArrayList();
    private final List<OnWeChatSemiAutoLoginStateListener> mWeChatSemiAutoLoginStateListeners = new CopyOnWriteArrayList();
    private final List<OnWeChatNotDisturbStateListener> mWeChatNotDisturbStateListeners = new CopyOnWriteArrayList();
    private final List<OnWeChatUnreadMsgStateListener> mWeChatUnreadMsgStateListeners = new CopyOnWriteArrayList();

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void registerWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener) {
        if (onWeChatMessageListener == null || this.mWeChatMessageListeners.contains(onWeChatMessageListener)) {
            return;
        }
        this.mWeChatMessageListeners.add(onWeChatMessageListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void unregisterWeChatMessageListener(OnWeChatMessageListener onWeChatMessageListener) {
        if (onWeChatMessageListener == null) {
            return;
        }
        this.mWeChatMessageListeners.remove(onWeChatMessageListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void dispatchWeChatMessage(WeChatMessage weChatMessage) {
        Iterator<OnWeChatMessageListener> it = this.mWeChatMessageListeners.iterator();
        while (it.hasNext()) {
            it.next().onWeChatMessageChanged(weChatMessage);
        }
        if (weChatMessage.msgType == 1) {
            Iterator<OnWeChatVoipListener> it2 = this.mWeChatVoipListeners.iterator();
            while (it2.hasNext()) {
                it2.next().onVoip(weChatMessage.msgState);
            }
        }
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void registerWeChatVoipListener(OnWeChatVoipListener onWeChatVoipListener) {
        if (onWeChatVoipListener == null || this.mWeChatVoipListeners.contains(onWeChatVoipListener)) {
            return;
        }
        this.mWeChatVoipListeners.add(onWeChatVoipListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void unregisterWeChatVoipListener(OnWeChatVoipListener onWeChatVoipListener) {
        if (onWeChatVoipListener == null) {
            return;
        }
        this.mWeChatVoipListeners.remove(onWeChatVoipListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void registerWeChatUIStateListener(OnWeChatUIStateListener onWeChatUIStateListener) {
        if (onWeChatUIStateListener == null || this.mWeChatUIStateListeners.contains(onWeChatUIStateListener)) {
            return;
        }
        this.mWeChatUIStateListeners.add(onWeChatUIStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void unregisterWeChatUIStateListener(OnWeChatUIStateListener onWeChatUIStateListener) {
        if (onWeChatUIStateListener == null) {
            return;
        }
        this.mWeChatUIStateListeners.remove(onWeChatUIStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void dispatchWeChatUIState(int i) {
        Iterator<OnWeChatUIStateListener> it = this.mWeChatUIStateListeners.iterator();
        while (it.hasNext()) {
            it.next().onUiStateChange(i);
        }
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void dispatchWeChatPanelState(boolean z) {
        Iterator<OnWeChatPanelStateListener> it = this.mWeChatPanelStateListeners.iterator();
        while (it.hasNext()) {
            it.next().onPanelStateChange(z);
        }
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void dispatchWeChatSemiAutoLoginState(boolean z) {
        Iterator<OnWeChatSemiAutoLoginStateListener> it = this.mWeChatSemiAutoLoginStateListeners.iterator();
        while (it.hasNext()) {
            it.next().onSemiAutoLoginStateChange(z);
        }
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void registerWeChatPanelStateListener(OnWeChatPanelStateListener onWeChatPanelStateListener) {
        if (onWeChatPanelStateListener == null || this.mWeChatPanelStateListeners.contains(onWeChatPanelStateListener)) {
            return;
        }
        this.mWeChatPanelStateListeners.add(onWeChatPanelStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void unregisterWeChatPanelStateListener(OnWeChatPanelStateListener onWeChatPanelStateListener) {
        if (onWeChatPanelStateListener == null || this.mWeChatPanelStateListeners.contains(onWeChatPanelStateListener)) {
            return;
        }
        this.mWeChatPanelStateListeners.add(onWeChatPanelStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void registerWeChatSemiAutoLoginStateListener(OnWeChatSemiAutoLoginStateListener onWeChatSemiAutoLoginStateListener) {
        if (onWeChatSemiAutoLoginStateListener == null || this.mWeChatSemiAutoLoginStateListeners.contains(onWeChatSemiAutoLoginStateListener)) {
            return;
        }
        this.mWeChatSemiAutoLoginStateListeners.add(onWeChatSemiAutoLoginStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void unregisterWeChatSemiAutoLoginStateListener(OnWeChatSemiAutoLoginStateListener onWeChatSemiAutoLoginStateListener) {
        if (onWeChatSemiAutoLoginStateListener == null || this.mWeChatSemiAutoLoginStateListeners.contains(onWeChatSemiAutoLoginStateListener)) {
            return;
        }
        this.mWeChatSemiAutoLoginStateListeners.add(onWeChatSemiAutoLoginStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void registerWeChatNotDisturbStateListener(OnWeChatNotDisturbStateListener onWeChatNotDisturbStateListener) {
        if (onWeChatNotDisturbStateListener == null || this.mWeChatNotDisturbStateListeners.contains(onWeChatNotDisturbStateListener)) {
            return;
        }
        this.mWeChatNotDisturbStateListeners.add(onWeChatNotDisturbStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void unregisterWeChatNotDisturbStateListener(OnWeChatNotDisturbStateListener onWeChatNotDisturbStateListener) {
        if (onWeChatNotDisturbStateListener == null || this.mWeChatNotDisturbStateListeners.contains(onWeChatNotDisturbStateListener)) {
            return;
        }
        this.mWeChatNotDisturbStateListeners.add(onWeChatNotDisturbStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void dispatchWeChatNotDisturbState(int i) {
        Iterator<OnWeChatNotDisturbStateListener> it = this.mWeChatNotDisturbStateListeners.iterator();
        while (it.hasNext()) {
            it.next().onNotDisturbStateChange(i);
        }
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void registerWeChatUnreadMsgStateListener(OnWeChatUnreadMsgStateListener onWeChatUnreadMsgStateListener) {
        if (onWeChatUnreadMsgStateListener == null || this.mWeChatUnreadMsgStateListeners.contains(onWeChatUnreadMsgStateListener)) {
            return;
        }
        this.mWeChatUnreadMsgStateListeners.add(onWeChatUnreadMsgStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void unregisterWeChatUnreadMsgStateListener(OnWeChatUnreadMsgStateListener onWeChatUnreadMsgStateListener) {
        if (onWeChatUnreadMsgStateListener == null || this.mWeChatUnreadMsgStateListeners.contains(onWeChatUnreadMsgStateListener)) {
            return;
        }
        this.mWeChatUnreadMsgStateListeners.add(onWeChatUnreadMsgStateListener);
    }

    @Override // com.tencent.car.wechatsdk.interfaces.IInfoDispatchApi
    public void dispatchWeChatUnreadMsgState(int i) {
        Iterator<OnWeChatUnreadMsgStateListener> it = this.mWeChatUnreadMsgStateListeners.iterator();
        while (it.hasNext()) {
            it.next().onUnreadMsgStateChange(i);
        }
    }
}
