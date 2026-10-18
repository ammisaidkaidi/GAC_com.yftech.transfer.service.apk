package com.tencent.tai.pal.client;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.power.IPower;
import com.tencent.tai.pal.power.PowerInfo;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALPowerManager extends IPower {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface PowerLevelLowListener extends INoProguardInterface {
        void onPowerLevelLow(int i);
    }

    PowerInfo getPowerInfo();

    int getPowerLevelAfterDriving(int i);

    int getPowerType();

    void registerPowerLevelLowListener(PowerLevelLowListener powerLevelLowListener);

    void unregisterPowerLevelLowListener(PowerLevelLowListener powerLevelLowListener);
}
