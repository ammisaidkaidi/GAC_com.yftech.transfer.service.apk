package com.tencent.tai.pal.network;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class NetworkAdapter extends BaseAdapter implements INetwork {

    /* renamed from: a, reason: collision with root package name */
    private static final String f127a = "NetworkAdapter";

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

    public abstract int enableMobileNetwork(boolean z);

    public abstract int enableWifi(boolean z);

    public abstract int getActiveNetworkType();

    public abstract int getMobileConnectionState();

    public abstract float getNetworkSignalStrength(int i);

    public abstract int getWifiConnectionState();

    public abstract boolean isNetworkAvailable();

    public abstract boolean jumpToNetworkSettingPage();

    public abstract void registerOnActiveNetworkTypeChangeListener(OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener);

    public abstract void registerOnNetworkAvailabilityChangeListener(OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener);

    public abstract void registerOnNetworkSignalStrengthChangeListener(OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener);

    public abstract void unregisterOnActiveNetworkTypeChangeListener(OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener);

    public abstract void unregisterOnNetworkAvailabilityChangeListener(OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener);

    public abstract void unregisterOnNetworkSignalStrengthChangeListener(OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener);
}
