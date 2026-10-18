package com.tencent.tai.pal.power;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class PowerAdapter extends BaseAdapter implements IPower {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnPowerLevelLowListener extends INoProguardInterface {
        void onPowerLevelLowListener(int i);
    }

    public abstract PowerInfo getPowerInfo();

    public abstract int getPowerLevelAfterDriving(int i);

    public abstract int getPowerType();

    public abstract void registerOnPowerLevelLowListener(OnPowerLevelLowListener onPowerLevelLowListener);

    public abstract void unregisterOnPowerLevelLowListener(OnPowerLevelLowListener onPowerLevelLowListener);
}
