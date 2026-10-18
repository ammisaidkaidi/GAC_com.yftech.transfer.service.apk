package com.tencent.tai.pal.ins;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.SDKConstants;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class InsAdapter extends BaseAdapter {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnInsInfoChangeListener extends INoProguardInterface {
        void onInsAccelerometerInfoChanged(float f, float f2, float f3, int i, long j);

        void onInsGyroscopeInfoChanged(float f, float f2, float f3, float f4, int i, long j);

        void onInsSpeedChanged(float f, int i, long j, SDKConstants.SpeedUnit speedUnit);
    }

    public abstract void registerOnInsInfoChangeListener(OnInsInfoChangeListener onInsInfoChangeListener);

    public abstract void unregisterOnInsInfoChangeListener(OnInsInfoChangeListener onInsInfoChangeListener);
}
