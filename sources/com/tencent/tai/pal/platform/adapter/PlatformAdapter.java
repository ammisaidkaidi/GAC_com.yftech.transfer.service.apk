package com.tencent.tai.pal.platform.adapter;

import android.content.Context;
import android.util.Log;
import com.tencent.tai.pal.PlatformSupportInfo;
import com.tencent.tai.pal.audio.AudioAdapter;
import com.tencent.tai.pal.bluetooth.BluetoothAdapter;
import com.tencent.tai.pal.input.CabinKeyEventAdapter;
import com.tencent.tai.pal.network.NetworkAdapter;
import com.tencent.tai.pal.power.PowerAdapter;
import com.tencent.tai.pal.screen.ScreenAdapter;
import com.tencent.tai.pal.service.BaseAdapter;
import com.tencent.tai.pal.telephone.TelephoneAdapter;
import com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter;
import com.tencent.tai.pal.vehiclerichinfo.VehicleRichInfoAdapter;
import com.yftech.transfer.tencent.opensdk.adapter.AudioAdapterImpl;
import com.yftech.transfer.tencent.opensdk.adapter.BluetoothAdapterImpl;
import com.yftech.transfer.tencent.opensdk.adapter.CabinKeyEventAdapterImpl;
import com.yftech.transfer.tencent.opensdk.adapter.NetworkAdapterImpl;
import com.yftech.transfer.tencent.opensdk.adapter.PowerAdapterImpl;
import com.yftech.transfer.tencent.opensdk.adapter.ScreenAdapterImpl;
import com.yftech.transfer.tencent.opensdk.adapter.TelephoneAdapterImpl;
import com.yftech.transfer.tencent.opensdk.adapter.VehicleBasicInfoAdapterImpl;
import com.yftech.transfer.tencent.opensdk.adapter.VehicleRichInfoAdapterImpl;

/* loaded from: /home/user/work/dex/classes.dex */
public class PlatformAdapter implements IPlatformAdapter {
    private static final boolean DEBUG = true;
    private static final String TAG = "PlatformAdapter";
    private AudioAdapterImpl mAudioAdapterImpl;
    private BluetoothAdapterImpl mBluetoothAdapterImpl;
    private CabinKeyEventAdapterImpl mCabinKeyEventAdapterImpl;
    private Context mContext;
    private NetworkAdapterImpl mNetworkAdapterImpl;
    private PowerAdapterImpl mPowerAdapterImpl;
    private ScreenAdapterImpl mScreenAdapterImpl;
    private TelephoneAdapterImpl mTelephoneAdapterImpl;
    private VehicleBasicInfoAdapterImpl mVehicleBasicInfoAdapterImpl;
    private VehicleRichInfoAdapterImpl mVehicleRichInfoAdapterImpl;

    @Override // com.tencent.tai.pal.platform.adapter.IPlatformAdapter
    public void onCreate(Context context) {
        LOGI("================PlatformAdapterService:::onCreate================");
        this.mContext = context;
        this.mPowerAdapterImpl = new PowerAdapterImpl(this.mContext);
        this.mVehicleBasicInfoAdapterImpl = new VehicleBasicInfoAdapterImpl(this.mContext);
        this.mAudioAdapterImpl = new AudioAdapterImpl(this.mContext);
        this.mCabinKeyEventAdapterImpl = new CabinKeyEventAdapterImpl(this.mContext);
        this.mBluetoothAdapterImpl = new BluetoothAdapterImpl(this.mContext);
        this.mScreenAdapterImpl = new ScreenAdapterImpl();
        this.mTelephoneAdapterImpl = new TelephoneAdapterImpl(this.mContext);
        this.mNetworkAdapterImpl = new NetworkAdapterImpl(this.mContext);
        this.mVehicleRichInfoAdapterImpl = new VehicleRichInfoAdapterImpl();
        LOGI("================start flow play control adapter layer!================");
        LOGI("================start navi dispatch layer adapter!================");
    }

    public static void LOGI(String str) {
        Log.i(TAG, str);
    }

    public static void LOGW(String str) {
        Log.w(TAG, str);
    }

    @Override // com.tencent.tai.pal.platform.adapter.IPlatformAdapter
    public void onInitialized() {
        LOGI("================PlatformAdapterService:::onInitialized================");
    }

    @Override // com.tencent.tai.pal.platform.adapter.IPlatformAdapter
    public PlatformSupportInfo getSupportInfo() {
        PlatformSupportInfo platformSupportInfo = new PlatformSupportInfo();
        platformSupportInfo.vehicleBasicInfo_getChannel_supported = true;
        platformSupportInfo.vehicleBasicInfo_supported = true;
        platformSupportInfo.vehicleBasicInfo_getDayNightMode_supported = true;
        platformSupportInfo.vehicleBasicInfo_getDeviceId_supported = true;
        platformSupportInfo.vehicleBasicInfo_getVehicleId_supported = true;
        platformSupportInfo.vehicleBasicInfo_getGear_supported = true;
        platformSupportInfo.vehicleBasicInfo_getSeatBeltBuckled_supported = false;
        platformSupportInfo.vehicleBasicInfo_getSpeed_supported = true;
        platformSupportInfo.vehicleBasicInfo_registerOnVehicleBasicInfoListener_unregisterOnVehicleBasicInfoListener_supported = true;
        platformSupportInfo.vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported = true;
        platformSupportInfo.vehicleRichInfo_supported = true;
        platformSupportInfo.vehicleRichInfo_getDrivingSafetyDisclaimerInfo_supported = false;
        platformSupportInfo.vehicleRichInfo_registerOnDrivingSafetyDisclaimerListener_unregisterOnDrivingSafetyDisclaimerListener_supported = false;
        platformSupportInfo.audio_supported = true;
        platformSupportInfo.audio_getStreamType_supported = true;
        platformSupportInfo.audio_isStreamMute_supported = true;
        platformSupportInfo.audio_getStreamMaxVolume_supported = true;
        platformSupportInfo.audio_getStreamVolume_supported = true;
        platformSupportInfo.audio_setStreamVolume_supported = true;
        platformSupportInfo.audio_getCurrentActiveStream_supported = false;
        platformSupportInfo.audio_requestAudioFocus_abandonAudioFocus_supported = true;
        platformSupportInfo.audio_adjustStreamVolume_supported = true;
        platformSupportInfo.audio_requestMicFocus_abandonMicFocus_supported = false;
        platformSupportInfo.audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported = true;
        platformSupportInfo.bluetooth_supported = true;
        platformSupportInfo.bluetooth_getConnectionState_supported = true;
        platformSupportInfo.bluetooth_getDeviceMac_supported = true;
        platformSupportInfo.bluetooth_getDeviceName_supported = true;
        platformSupportInfo.bluetooth_enableBluetooth_supported = true;
        platformSupportInfo.bluetooth_registerOnDeviceConnectionStateChange_unregisterOnDeviceConnectionStateChange_supported = true;
        platformSupportInfo.cabinKey_supported = true;
        platformSupportInfo.cabinKey_registerCabinKeyEventDispatcher_unregisterCabinKeyEventDispatcher_supported = true;
        platformSupportInfo.ins_supported = false;
        platformSupportInfo.ins_registerOnInsInfoChangeListener_unregisterOnInsInfoChangeListener_supported = false;
        platformSupportInfo.power_supported = true;
        platformSupportInfo.power_getPowerInfo_supported = true;
        platformSupportInfo.power_getPowerLevelAfterDriving_supported = true;
        platformSupportInfo.power_getPowerType_supported = true;
        platformSupportInfo.power_registerOnPowerLevelLowListener_unregisterOnPowerLevelLowListener_supported = false;
        platformSupportInfo.telephone_supported = true;
        platformSupportInfo.telephone_answerInComingCall_supported = true;
        platformSupportInfo.telephone_call_supported = true;
        platformSupportInfo.telephone_getRecentContact_supported = true;
        platformSupportInfo.telephone_ignoreInComingCall_supported = true;
        platformSupportInfo.telephone_refuseInComingCall_supported = true;
        platformSupportInfo.telephone_registerOnTelInfoListener_unregisterOnTelInfoListener_supported = true;
        platformSupportInfo.network_supported = true;
        platformSupportInfo.network_enableMobileNetwork_supported = false;
        platformSupportInfo.network_enableWifi_supported = true;
        platformSupportInfo.network_getMobileConnectionState_supported = false;
        platformSupportInfo.network_getWifiConnectionState_supported = true;
        platformSupportInfo.network_jumpToNetworkSettingPage_supported = true;
        platformSupportInfo.screen_supported = true;
        platformSupportInfo.screen_adjustScreenBrightness_supported = true;
        platformSupportInfo.screen_getScreenBrightness_supported = true;
        platformSupportInfo.screen_getScreenMAXBrightness_supported = true;
        platformSupportInfo.screen_isScreenMute_supported = true;
        return platformSupportInfo;
    }

    @Override // com.tencent.tai.pal.platform.adapter.IPlatformAdapter
    public <T extends BaseAdapter> T getAdapter(Class<T> cls) {
        if (cls == AudioAdapter.class) {
            return this.mAudioAdapterImpl;
        }
        if (cls == BluetoothAdapter.class) {
            return this.mBluetoothAdapterImpl;
        }
        if (cls == CabinKeyEventAdapter.class) {
            return this.mCabinKeyEventAdapterImpl;
        }
        if (cls == PowerAdapter.class) {
            return this.mPowerAdapterImpl;
        }
        if (cls == VehicleBasicInfoAdapter.class) {
            return this.mVehicleBasicInfoAdapterImpl;
        }
        if (cls == VehicleRichInfoAdapter.class) {
            return this.mVehicleRichInfoAdapterImpl;
        }
        if (cls == ScreenAdapter.class) {
            return this.mScreenAdapterImpl;
        }
        if (cls == TelephoneAdapter.class) {
            return this.mTelephoneAdapterImpl;
        }
        if (cls == NetworkAdapter.class) {
            return this.mNetworkAdapterImpl;
        }
        return null;
    }
}
