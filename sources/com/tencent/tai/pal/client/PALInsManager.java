package com.tencent.tai.pal.client;

import com.tencent.tai.pal.INoProguardInterface;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALInsManager extends INoProguardInterface {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InsInfoListener extends INoProguardInterface {
        void onAccelerometerInfoChanged(float f, float f2, float f3, int i, long j);

        void onGyroscopeInfoChanged(float f, float f2, float f3, float f4, int i, long j);

        void onSpeedChanged(float f, int i, long j);
    }

    void registerInsInfoListener(InsInfoListener insInfoListener);

    void unregisterInsInfoListener(InsInfoListener insInfoListener);
}
