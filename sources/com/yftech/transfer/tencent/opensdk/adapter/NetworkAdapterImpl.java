package com.yftech.transfer.tencent.opensdk.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.tai.pal.network.NetworkAdapter;
import com.yftech.transfer.service.utils.WifiApManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class NetworkAdapterImpl extends NetworkAdapter {
    private static final String TAG = "NetworkAdapterImpl";
    private Context mContext;
    private WifiApManager mWifiApManager;
    private WifiManager mWifiManager;

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public int getActiveNetworkType() {
        return 0;
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public float getNetworkSignalStrength(int i) {
        return 0.0f;
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public boolean isNetworkAvailable() {
        return false;
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public void registerOnActiveNetworkTypeChangeListener(NetworkAdapter.OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener) {
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public void registerOnNetworkAvailabilityChangeListener(NetworkAdapter.OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener) {
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public void registerOnNetworkSignalStrengthChangeListener(NetworkAdapter.OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener) {
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public void unregisterOnActiveNetworkTypeChangeListener(NetworkAdapter.OnActiveNetworkTypeChangeListener onActiveNetworkTypeChangeListener) {
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public void unregisterOnNetworkAvailabilityChangeListener(NetworkAdapter.OnNetworkAvailabilityChangeListener onNetworkAvailabilityChangeListener) {
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public void unregisterOnNetworkSignalStrengthChangeListener(NetworkAdapter.OnNetworkSignalStrengthChangeListener onNetworkSignalStrengthChangeListener) {
    }

    public NetworkAdapterImpl(Context context) {
        this.mContext = context;
        this.mWifiManager = (WifiManager) context.getSystemService("wifi");
        this.mWifiApManager = new WifiApManager(this.mContext);
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public int getMobileConnectionState() {
        Log.i(TAG, "getMobileConnectionState");
        return 0;
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public int getWifiConnectionState() {
        Log.i(TAG, "getWifiConnectionState");
        WifiInfo connectionInfo = this.mWifiManager.getConnectionInfo();
        return (connectionInfo == null || connectionInfo.getIpAddress() == 0) ? 0 : 1;
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public int enableWifi(boolean z) {
        Log.i(TAG, "enableWifi,the enable:" + z);
        if (this.mWifiApManager.isWifiApEnabled()) {
            this.mWifiApManager.closeWiFiAp();
        }
        if (z && this.mWifiManager.isWifiEnabled()) {
            return 0;
        }
        if (z || this.mWifiManager.isWifiEnabled()) {
            return this.mWifiManager.setWifiEnabled(z) ? 1 : -1;
        }
        return 0;
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public int enableMobileNetwork(boolean z) {
        Log.i(TAG, "enableMobileNetwork,the enable:" + z);
        return -1;
    }

    @Override // com.tencent.tai.pal.network.NetworkAdapter
    public boolean jumpToNetworkSettingPage() {
        Log.i(TAG, "jumpToNetworkSettingPage");
        Intent intent = new Intent("android.settings.WIFI_SETTINGS");
        intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
        this.mContext.startActivity(intent);
        return true;
    }
}
