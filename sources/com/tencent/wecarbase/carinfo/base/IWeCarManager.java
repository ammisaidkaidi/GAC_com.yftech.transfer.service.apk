package com.tencent.wecarbase.carinfo.base;

import android.content.Context;
import com.tencent.wecarbase.carinfo.IWeCarInfoInterface;
import com.tencent.wecarbase.carinfo.IWeCarInfoListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IWeCarManager {
    IWeCarInfoInterface getWeCarInfoImpl();

    void init(Context context);

    void registerListener(IWeCarInfoListener iWeCarInfoListener);

    void setWeCarInfoImpl(IWeCarInfoInterface iWeCarInfoInterface);

    void unInit();

    void unregisterListener(IWeCarInfoListener iWeCarInfoListener);
}
