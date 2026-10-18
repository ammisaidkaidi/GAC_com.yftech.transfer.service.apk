package com.tencent.tai.pal.client;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.network.INetwork;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALNetworkManager extends INetwork {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnActiveNetworkTypeChangeListener extends INoProguardInterface {
        void onActiveNetworkTypeChange(int i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnNetworkAvailabilityChangeListener extends INoProguardInterface {
        void onNetworkAvailabilityChange(boolean z);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnNetworkSignalStrengthChangeListener extends INoProguardInterface {
        void onNetworkSignalStrengthChange(int i, float f);
    }

    int enableMobileNetwork(boolean z);

    int enableWifi(boolean z);

    int getActiveNetworkType();

    int getMobileConnectionState();

    float getNetworkSignalStrength(int i);

    int getWifiConnectionState();

    boolean isNetworkAvailable();

    boolean jumpToNetworkSettingPage();

    void registerOnActiveNetworkTypeChangeListener(OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener);

    void registerOnNetworkAvailabilityChangeListener(OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener);

    void registerOnNetworkSignalStrengthChangeListener(OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener);

    void unregisterOnActiveNetworkTypeChangeListener(OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener);

    void unregisterOnNetworkAvailabilityChangeListener(OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener);

    void unregisterOnNetworkSignalStrengthChangeListener(OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener);
}
