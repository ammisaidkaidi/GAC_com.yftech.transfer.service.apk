package com.tencent.wecarbase.carinfo.base;

import com.tencent.wecarbase.carinfo.IWeCarInfoListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarInterface {
    void registerListener(IWeCarInfoListener iWeCarInfoListener);

    void unregisterListener(IWeCarInfoListener iWeCarInfoListener);
}
