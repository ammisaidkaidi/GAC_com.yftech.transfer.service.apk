package com.tencent.taes.framework.interfaces;

import com.tencent.taes.framework.bean.IPCEvent;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IEventSubscriber {
    void onEvent(IPCEvent iPCEvent);

    void subscribe(String str, IEventListener iEventListener);

    void unsubscribe(IEventListener iEventListener);

    void unsubscribe(String str, IEventListener iEventListener);
}
