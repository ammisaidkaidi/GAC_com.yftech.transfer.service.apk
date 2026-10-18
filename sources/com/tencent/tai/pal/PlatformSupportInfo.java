package com.tencent.tai.pal;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.tencent.tai.pal.audio.AudioAdapter;
import com.tencent.tai.pal.bluetooth.BluetoothAdapter;
import com.tencent.tai.pal.extensible.ExtensibleAdapter;
import com.tencent.tai.pal.input.CabinKeyEventAdapter;
import com.tencent.tai.pal.ins.InsAdapter;
import com.tencent.tai.pal.network.NetworkAdapter;
import com.tencent.tai.pal.power.PowerAdapter;
import com.tencent.tai.pal.screen.ScreenAdapter;
import com.tencent.tai.pal.service.BaseAdapter;
import com.tencent.tai.pal.telephone.TelephoneAdapter;
import com.tencent.tai.pal.vehiclebasicinfo.VehicleBasicInfoAdapter;
import com.tencent.tai.pal.vehiclerichinfo.VehicleRichInfoAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public final class PlatformSupportInfo implements INoProguardClass {

    @SerializedName("audio_supported")
    public boolean audio_supported = false;

    @SerializedName("audio_getStreamType_supported")
    public boolean audio_getStreamType_supported = false;

    @SerializedName("audio_isStreamMute_supported")
    public boolean audio_isStreamMute_supported = false;

    @SerializedName("audio_getStreamMaxVolume_supported")
    public boolean audio_getStreamMaxVolume_supported = false;

    @SerializedName("audio_setStreamVolume_supported")
    public boolean audio_setStreamVolume_supported = false;

    @SerializedName("audio_adjustStreamVolume_supported")
    public boolean audio_adjustStreamVolume_supported = false;

    @SerializedName("audio_adjustVolume_supported")
    public boolean audio_adjustVolume_supported = false;

    @SerializedName("audio_adjustAllVolume_supported")
    public boolean audio_adjustAllVolume_supported = false;

    @SerializedName("audio_getCurrentActiveStream_supported")
    public boolean audio_getCurrentActiveStream_supported = false;

    @SerializedName("audio_getStreamVolume_supported")
    public boolean audio_getStreamVolume_supported = false;

    @SerializedName("audio_monitorAudioEvent")
    public boolean audio_monitorAudioEvent = false;

    @SerializedName("audio_requestAudioFocus_abandonAudioFocus_supported")
    public boolean audio_requestAudioFocus_abandonAudioFocus_supported = false;

    @SerializedName("audio_requestMicFocus_abandonMicFocus_supported")
    public boolean audio_requestMicFocus_abandonMicFocus_supported = false;

    @SerializedName("audio_notifyStreamMuteStateChanged_supported")
    public boolean audio_notifyStreamMuteStateChanged_supported = false;

    @SerializedName("audio_notifyStreamVolumeChanged_supported")
    public boolean audio_notifyStreamVolumeChanged_supported = false;

    @SerializedName("audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported")
    public boolean audio_registerOnStreamVolumeChangeListener_unregisterOnStreamVolumeChangeListener_supported = false;

    @SerializedName("bluetooth_supported")
    public boolean bluetooth_supported = false;

    @SerializedName("bluetooth_getConnectionState_supported")
    public boolean bluetooth_getConnectionState_supported = false;

    @SerializedName("bluetooth_getDeviceName_supported")
    public boolean bluetooth_getDeviceName_supported = false;

    @SerializedName("bluetooth_getDeviceMac_supported")
    public boolean bluetooth_getDeviceMac_supported = false;

    @SerializedName("bluetooth_enableBluetooth_supported")
    public boolean bluetooth_enableBluetooth_supported = false;

    @SerializedName("bluetooth_notifyDeviceConnectionStateChange_supported")
    public boolean bluetooth_notifyDeviceConnectionStateChange_supported = false;

    @SerializedName("bluetooth_registerOnDeviceConnectionStateChange_unregisterOnDeviceConnectionStateChange_supported")
    public boolean bluetooth_registerOnDeviceConnectionStateChange_unregisterOnDeviceConnectionStateChange_supported = false;

    @SerializedName("cabinKey_supported")
    public boolean cabinKey_supported = false;

    @SerializedName("cabinKey_registerCabinKeyEventDispatcher_unregisterCabinKeyEventDispatcher_supported")
    public boolean cabinKey_registerCabinKeyEventDispatcher_unregisterCabinKeyEventDispatcher_supported = false;

    @SerializedName("cabinKey_dispatchKeyEvent_supported")
    public boolean cabinKey_dispatchKeyEvent_supported = false;

    @SerializedName("cabinKey_dispatchKeyLongPressEvent_supported")
    public boolean cabinKey_dispatchKeyLongPressEvent_supported = false;

    @SerializedName("ins_supported")
    public boolean ins_supported = false;

    @SerializedName("ins_registerOnInsInfoChangeListener_unregisterOnInsInfoChangeListener_supported")
    public boolean ins_registerOnInsInfoChangeListener_unregisterOnInsInfoChangeListener_supported = false;

    @SerializedName("ins_notifySpeedChanged_supported")
    public boolean ins_notifySpeedChanged_supported = false;

    @SerializedName("ins_notifyGyroscopeInfoChanged_supported")
    public boolean ins_notifyGyroscopeInfoChanged_supported = false;

    @SerializedName("ins_notifyAccelerometerInfoChanged_supported")
    public boolean ins_notifyAccelerometerInfoChanged_supported = false;

    @SerializedName("power_supported")
    public boolean power_supported = false;

    @SerializedName("power_getPowerType_supported")
    public boolean power_getPowerType_supported = false;

    @SerializedName("power_getPowerInfo_supported")
    public boolean power_getPowerInfo_supported = false;

    @SerializedName("power_getPowerLevelAfterDriving_supported")
    public boolean power_getPowerLevelAfterDriving_supported = false;

    @SerializedName("power_registerOnPowerLevelLowListener_unregisterOnPowerLevelLowListener_supported")
    public boolean power_registerOnPowerLevelLowListener_unregisterOnPowerLevelLowListener_supported = false;

    @SerializedName("power_notifyPowerLevelLow_supported")
    public boolean power_notifyPowerLevelLow_supported = false;

    @SerializedName("vehicleBasicInfo_supported")
    public boolean vehicleBasicInfo_supported = false;

    @SerializedName("vehicleBasicInfo_getDeviceId_supported")
    public boolean vehicleBasicInfo_getDeviceId_supported = false;

    @SerializedName("vehicleBasicInfo_getVehicleId_supported")
    public boolean vehicleBasicInfo_getVehicleId_supported = false;

    @SerializedName("vehicleBasicInfo_jumpToNetworkSettingPage_supported")
    public boolean vehicleBasicInfo_jumpToNetworkSettingPage_supported = false;

    @SerializedName("vehicleBasicInfo_getSpeed_supported")
    public boolean vehicleBasicInfo_getSpeed_supported = false;

    @SerializedName("vehicleBasicInfo_getDayNightMode_supported")
    public boolean vehicleBasicInfo_getDayNightMode_supported = false;

    @SerializedName("vehicleBasicInfo_getGear_supported")
    public boolean vehicleBasicInfo_getGear_supported = false;

    @SerializedName("vehicleBasicInfo_getSeatBeltBuckled_supported")
    public boolean vehicleBasicInfo_getSeatBeltBuckled_supported = false;

    @SerializedName("vehicleBasicInfo_registerOnVehicleBasicInfoListener_unregisterOnVehicleBasicInfoListener_supported")
    public boolean vehicleBasicInfo_registerOnVehicleBasicInfoListener_unregisterOnVehicleBasicInfoListener_supported = false;

    @SerializedName("vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported")
    public boolean vehicleBasicInfo_registerOnVehicleSpeedListener_unregisterOnVehicleSpeedListener_supported = false;

    @SerializedName("vehicleBasicInfo_notifyGearChanged_supported")
    public boolean vehicleBasicInfo_notifyGearChanged_supported = false;

    @SerializedName("vehicleBasicInfo_notifySeatBeltBuckledChanged_supported")
    public boolean vehicleBasicInfo_notifySeatBeltBuckledChanged_supported = false;

    @SerializedName("vehicleBasicInfo_notifyDayNightModeChanged_supported")
    public boolean vehicleBasicInfo_notifyDayNightModeChanged_supported = false;

    @SerializedName("vehicleBasicInfo_notifySpeedChanged_supported")
    public boolean vehicleBasicInfo_notifySpeedChanged_supported = false;

    @SerializedName("vehicleBasicInfo_getPermanentPartitionPath_supported")
    public boolean vehicleBasicInfo_getPermanentPartitionPath_supported = false;

    @SerializedName("vehicleBasicInfo_getChannel_supported")
    public boolean vehicleBasicInfo_getChannel_supported = false;

    @SerializedName("vehicleBasicInfo_getVehicleModel_supported")
    public boolean vehicleBasicInfo_getVehicleModel_supported = false;

    @SerializedName("telephone_supported")
    public boolean telephone_supported = false;

    @SerializedName("telephone_registerOnTelInfoListener_unregisterOnTelInfoListener_supported")
    public boolean telephone_registerOnTelInfoListener_unregisterOnTelInfoListener_supported = false;

    @SerializedName("telephone_call_supported")
    public boolean telephone_call_supported = false;

    @SerializedName("telephone_answerInComingCall_supported")
    public boolean telephone_answerInComingCall_supported = false;

    @SerializedName("telephone_refuseInComingCall_supported")
    public boolean telephone_refuseInComingCall_supported = false;

    @SerializedName("telephone_ignoreInComingCall_supported")
    public boolean telephone_ignoreInComingCall_supported = false;

    @SerializedName("telephone_viewPhonebook_supported")
    public boolean telephone_viewPhonebook_supported = false;

    @SerializedName("telephone_viewCallRecord_supported")
    public boolean telephone_viewCallRecord_supported = false;

    @SerializedName("telephone_getRecentContact_supported")
    public boolean telephone_getRecentContact_supported = false;

    @SerializedName("network_supported")
    public boolean network_supported = false;

    @SerializedName("network_enableWifi_supported")
    public boolean network_enableWifi_supported = false;

    @SerializedName("network_enableMobileNetwork_supported")
    public boolean network_enableMobileNetwork_supported = false;

    @SerializedName("network_getMobileConnectionState_supported")
    public boolean network_getMobileConnectionState_supported = false;

    @SerializedName("network_getWifiConnectionState_supported")
    public boolean network_getWifiConnectionState_supported = false;

    @SerializedName("network_jumpToNetworkSettingPage_supported")
    public boolean network_jumpToNetworkSettingPage_supported = false;

    @SerializedName("network_getActiveNetworkType_supported")
    public boolean network_getActiveNetworkType_supported = false;

    @SerializedName("network_registerOnActiveNetworkTypeChangeListener_unregisterOnActiveNetworkTypeChangeListener_supported")
    public boolean network_registerOnActiveNetworkTypeChangeListener_unregisterOnActiveNetworkTypeChangeListener_supported = false;

    @SerializedName("network_isNetworkAvailable_supported")
    public boolean network_isNetworkAvailable_supported = false;

    @SerializedName("network_registerOnNetworkAvailabilityChangeListener_unregisterOnNetworkAvailabilityChangeListener_supported")
    public boolean network_registerOnNetworkAvailabilityChangeListener_unregisterOnNetworkAvailabilityChangeListener_supported = false;

    @SerializedName("network_getNetworkSignalStrength_supported")
    public boolean network_getNetworkSignalStrength_supported = false;

    @SerializedName("network_registerOnNetworkSignalStrengthChangeListener_unregisterOnNetworkSignalStrengthChangeListener_supported")
    public boolean network_registerOnNetworkSignalStrengthChangeListener_unregisterOnNetworkSignalStrengthChangeListener_supported = false;

    @SerializedName("screen_supported")
    public boolean screen_supported = false;

    @SerializedName("screen_adjustScreenBrightness_supported")
    public boolean screen_adjustScreenBrightness_supported = false;

    @SerializedName("screen_getScreenBrightness_supported")
    public boolean screen_getScreenBrightness_supported = false;

    @SerializedName("screen_getScreenMAXBrightness_supported")
    public boolean screen_getScreenMAXBrightness_supported = false;

    @SerializedName("screen_isScreenMute_supported")
    public boolean screen_isScreenMute_supported = false;

    @SerializedName("vehicleRichInfo_supported")
    public boolean vehicleRichInfo_supported = false;

    @SerializedName("vehicleRichInfo_registerOnDrivingSafetyDisclaimerListener_unregisterOnDrivingSafetyDisclaimerListener_supported")
    public boolean vehicleRichInfo_registerOnDrivingSafetyDisclaimerListener_unregisterOnDrivingSafetyDisclaimerListener_supported = false;

    @SerializedName("vehicleRichInfo_notifyDrivingSafetyDisclaimerUpdated_supported")
    public boolean vehicleRichInfo_notifyDrivingSafetyDisclaimerUpdated_supported = false;

    @SerializedName("vehicleRichInfo_getDrivingSafetyDisclaimerInfo_supported")
    public boolean vehicleRichInfo_getDrivingSafetyDisclaimerInfo_supported = false;

    @SerializedName("vehicleRichInfo_registerOnDrivingControlStatusChangeListener_unregisterOnDrivingControlStatusChangeListener_supported")
    public boolean vehicleRichInfo_registerOnDrivingControlStatusChangeListener_unregisterOnDrivingControlStatusChangeListener_supported = false;

    @SerializedName("vehicleRichInfo_getDrivingControlStatus_supported")
    public boolean vehicleRichInfo_getDrivingControlStatus_supported = false;

    @SerializedName("extensible_supported")
    public boolean extensible_supported = false;

    @SerializedName("extensible_callExtensibleApi_supported")
    public boolean extensible_callExtensibleApi_supported = false;

    @SerializedName("extensible_registerExtensibleListener_unregisterExtensibleListener_supported")
    public boolean extensible_registerExtensibleListener_unregisterExtensibleListener_supported = false;

    public String toString() {
        return new Gson().toJson(this);
    }

    public static PlatformSupportInfo fromJson(String str) {
        return (PlatformSupportInfo) new Gson().fromJson(str, PlatformSupportInfo.class);
    }

    public <T extends BaseAdapter> boolean isAdapterSupported(Class<T> cls) {
        if (cls == AudioAdapter.class) {
            return this.audio_supported;
        }
        if (cls == BluetoothAdapter.class) {
            return this.bluetooth_supported;
        }
        if (cls == CabinKeyEventAdapter.class) {
            return this.cabinKey_supported;
        }
        if (cls == InsAdapter.class) {
            return this.ins_supported;
        }
        if (cls == PowerAdapter.class) {
            return this.power_supported;
        }
        if (cls == VehicleBasicInfoAdapter.class) {
            return this.vehicleBasicInfo_supported;
        }
        if (cls == ScreenAdapter.class) {
            return this.screen_supported;
        }
        if (cls == TelephoneAdapter.class) {
            return this.telephone_supported;
        }
        if (cls == NetworkAdapter.class) {
            return this.network_supported;
        }
        if (cls == VehicleRichInfoAdapter.class) {
            return this.vehicleRichInfo_supported;
        }
        if (cls == ExtensibleAdapter.class) {
            return this.extensible_supported;
        }
        return false;
    }
}
