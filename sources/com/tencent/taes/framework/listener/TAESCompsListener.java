package com.tencent.taes.framework.listener;

import com.tencent.taes.framework.interfaces.ICompManager;

/* loaded from: /home/user/work/dex/classes.dex */
public interface TAESCompsListener extends ICompManager.Listener {
    void onLoadLocalCompsComplete();

    void onLoadServerCompsComplete();
}
