package com.yftech.transfer.phonelink.manager;

import android.os.Handler;
import com.utils.LogUtil;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.data.CarData;
import com.yftech.car.data.CarDataManager;
import com.yftech.car.input.CarInputManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.screen.CarScreenManager;
import com.yftech.car.upgrade.CarUpgradeInfo;
import com.yftech.car.upgrade.CarUpgradeManager;
import com.yftech.transfer.callback.CarAudioListenerImp;
import com.yftech.transfer.callback.CarDataCallBackImp;
import com.yftech.transfer.callback.CarInfoListenerImp;
import com.yftech.transfer.callback.CarInputListenerImp;
import com.yftech.transfer.callback.CarLightListenerImp;
import com.yftech.transfer.callback.CarMiscListenerImp;
import com.yftech.transfer.callback.CarPowerListenerImp;
import com.yftech.transfer.callback.CarScreenListenerImp;
import com.yftech.transfer.callback.CarSwcCallBackImp;
import com.yftech.transfer.callback.CarTBoxListenerImp;
import com.yftech.transfer.callback.CarTireListenerImp;
import com.yftech.transfer.phonelink.manager.interf.BasicManager;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.CarInfoManager;
import com.yftech.vehicle.sdk.CarLightManager;
import com.yftech.vehicle.sdk.CarMiscManager;
import com.yftech.vehicle.sdk.CarPowerManager;
import com.yftech.vehicle.sdk.CarSwcManager;
import com.yftech.vehicle.sdk.CarTBoxManager;
import com.yftech.vehicle.sdk.CarTireManager;
import com.yftech.vehicle.sdk.HostConfig;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarControlManager extends BasicManager {
    private static final String KEY_KEEP_MUTE_WARNING_ENABLE = "Keep_Mute_Warning_Enable";
    public static final int VALUE_KEEP_MUTE_WARNING_NO_CHANGED = 0;
    public static final int VALUE_KEEP_MUTE_WARNING_SILENT = 1;
    public static final CarControlManager ins = new CarControlManager();
    private CarInputListenerImp carInputListenerImp = new CarInputListenerImp();
    private CarPowerListenerImp carPowerListenerImp = new CarPowerListenerImp();
    private CarAudioListenerImp carAudioListenerImp = new CarAudioListenerImp();
    private CarMiscListenerImp carMiscListenerImp = new CarMiscListenerImp();
    private CarInfoListenerImp carInfoListenerImp = new CarInfoListenerImp();
    private CarScreenListenerImp carScreenListenerImp = new CarScreenListenerImp();
    private CarLightListenerImp carLightListenerImp = new CarLightListenerImp();
    private CarDataCallBackImp carDataCallBackImp = new CarDataCallBackImp();
    private CarSwcCallBackImp carSwcCallBackImp = new CarSwcCallBackImp();
    private CarTireListenerImp carTireListenerImp = new CarTireListenerImp();
    private CarTBoxListenerImp carTBoxListenerImp = new CarTBoxListenerImp();
    private Handler mHandler = new Handler();

    public int getKEY_KEEP_MUTE_WARNING_ENABLE() {
        CarData carData = CarDataManager.get(new CarData(new CarData.CarDataEntry(KEY_KEEP_MUTE_WARNING_ENABLE, 1)));
        if (carData == null || carData.getDataEntry(KEY_KEEP_MUTE_WARNING_ENABLE) == null) {
            return 1;
        }
        int valueInt = carData.getDataEntry(KEY_KEEP_MUTE_WARNING_ENABLE).getValueInt();
        LogUtil.i("KEY_KEEP_MUTE_WARNING_ENABLE:" + valueInt);
        return valueInt;
    }

    private CarControlManager() {
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void init() {
        CarInputManager.getInstance().registerCarInputCallback(this.carInputListenerImp, this.mHandler);
        CarPowerManager.get().registerListener(this.carPowerListenerImp);
        CarAudioManager.getInstance().registerCarAudioCallback(this.carAudioListenerImp, this.mHandler);
        CarMiscManager.get().registerListener(this.carMiscListenerImp);
        CarInfoManager.get().registerListener(this.carInfoListenerImp);
        CarScreenManager.getInstance().registerCarScreenCallback(this.carScreenListenerImp, this.mHandler);
        CarLightManager.get().registerListener(this.carLightListenerImp);
        CarDataManager.registerCarDataCallback(this.carDataCallBackImp, this.mHandler);
        CarSwcManager.get().registerListener(this.carSwcCallBackImp);
        CarTireManager.get().registerListener(this.carTireListenerImp);
        CarTBoxManager.get().registerListener(this.carTBoxListenerImp);
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void uninit() {
        CarInputManager.getInstance().unregisterCarInputCallback(this.carInputListenerImp);
        CarPowerManager.get().unregisterListener(this.carPowerListenerImp);
        CarAudioManager.getInstance().unregisterCarAudioCallback(this.carAudioListenerImp);
        CarMiscManager.get().unregisterListener(this.carMiscListenerImp);
        CarInfoManager.get().unregisterListener(this.carInfoListenerImp);
        CarScreenManager.getInstance().unregisterCarScreenCallback(this.carScreenListenerImp);
        CarLightManager.get().unregisterListener(this.carLightListenerImp);
        CarDataManager.unregisterCarDataCallback(this.carDataCallBackImp);
        CarSwcManager.get().unregisterListener(this.carSwcCallBackImp);
        CarTireManager.get().unregisterListener(this.carTireListenerImp);
        CarTBoxManager.get().unregisterListener(this.carTBoxListenerImp);
    }

    public void mute(int i, boolean z) {
        LogUtil.i("mute:" + i + "," + z);
        CarAudioManager.getInstance().onlyMuteOneStream(i, z, 0);
    }

    public String getAudioSourcePackage() {
        try {
            String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
            if (currentMediaSource == null) {
                return "";
            }
            String[] split = currentMediaSource.split(",");
            if (split.length != 3) {
                return "";
            }
            String str = split[1];
            return str.equals("null") ? "" : str;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getAudioSourceListener() {
        String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
        if (currentMediaSource == null) {
            return "";
        }
        String[] split = currentMediaSource.split(",");
        if (split.length != 3) {
            return "";
        }
        String str = split[2];
        return str.equals("null") ? "" : str;
    }

    public ICarPower.PowerMode getPowerMode() {
        ICarPower.PowerMode powerMode = CarPowerManager.get().getPowerMode();
        LogUtil.i("getPowerMode:" + powerMode);
        return powerMode;
    }

    public ICarPower.PowerState getPowerState() {
        ICarPower.PowerState powerState = CarPowerManager.get().getPowerState();
        LogUtil.i("getPowerState:" + powerState);
        return powerState;
    }

    public boolean isPowerStateShouldAblePhoneLink() {
        ICarPower.PowerState powerState = CarPowerManager.get().getPowerState();
        LogUtil.i("isPowerStateShouldAblePhoneLink powerState:" + powerState);
        return powerState == ICarPower.PowerState.SYSTEMON || powerState == ICarPower.PowerState.TEST;
    }

    public int getScreenDayNightMode() {
        int dayNightMode = CarScreenManager.getInstance().getDayNightMode();
        LogUtil.i("getDayNightMode:" + dayNightMode);
        return dayNightMode;
    }

    public ICarInfo.DayNightMode getCarInfoDayNightMode() {
        ICarInfo.DayNightMode dayNightMode = CarInfoManager.get().getDayNightMode();
        LogUtil.i("getCarInfoDayNightMode:" + dayNightMode);
        return dayNightMode;
    }

    public float getWheelSpeedFL() {
        float wheelSpeedFL = CarTireManager.get().getWheelSpeedFL();
        LogUtil.i("getWheelSpeedFL result:" + wheelSpeedFL);
        return wheelSpeedFL;
    }

    public float getWheelSpeedFR() {
        float wheelSpeedFR = CarTireManager.get().getWheelSpeedFR();
        LogUtil.i("getWheelSpeedFR result:" + wheelSpeedFR);
        return wheelSpeedFR;
    }

    public float getWheelSpeedRL() {
        float wheelSpeedRL = CarTireManager.get().getWheelSpeedRL();
        LogUtil.i("getWheelSpeedRL result:" + wheelSpeedRL);
        return wheelSpeedRL;
    }

    public float getWheelSpeedRR() {
        float wheelSpeedRR = CarTireManager.get().getWheelSpeedRR();
        LogUtil.i("getWheelSpeedRR result:" + wheelSpeedRR);
        return wheelSpeedRR;
    }

    public float getSwcAngle() {
        float swcAngle = CarSwcManager.get().getSwcAngle();
        LogUtil.i("getSwcAngle swcAngle:" + swcAngle);
        return swcAngle;
    }

    public IBaseApi.EnableState getSwcAngleVdEnableState() {
        IBaseApi.EnableState swcAngleVdEnableState = CarSwcManager.get().getSwcAngleVdEnableState();
        LogUtil.i("getSwcAngleVdEnableState:" + swcAngleVdEnableState);
        return swcAngleVdEnableState;
    }

    public void openScreenBrightnessTransient() {
        CarScreenManager.getInstance().openScreenBrightness(0);
    }

    public void closeScreenBrightnessTransient() {
        CarScreenManager.getInstance().closeScreenBrightness(0);
    }

    public boolean isEngineBoxOn() {
        CarData.CarDataEntry dataEntry;
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        LogUtil.i("isEngineBoxOn curProductDevice:" + curProductDevice);
        if (((curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) ? (char) 0 : (char) 65535) != 0) {
            return false;
        }
        CarData carData = CarDataManager.get(new CarData(new CarData.CarDataEntry(CarDataCallBackImp.COM_ANDROID_SYSTEMUI_ENGINEHOOD_WARNING_OPEN, false)));
        if (carData != null && (dataEntry = carData.getDataEntry(CarDataCallBackImp.COM_ANDROID_SYSTEMUI_ENGINEHOOD_WARNING_OPEN)) != null) {
            boolean valueBoolean = dataEntry.getValueBoolean();
            LogUtil.i("getEngineBoxOn valueBoolean:" + valueBoolean);
            return valueBoolean;
        }
        LogUtil.i("getEngineBoxOn obj is null return false");
        return false;
    }

    public ICarInfo.RearGearState getRearGearState() {
        ICarInfo.RearGearState rearGearState = CarInfoManager.get().getRearGearState();
        LogUtil.i("rearGearState:" + rearGearState);
        return rearGearState;
    }

    public ICarInfo.GearPosition getGearPosition() {
        return CarInfoManager.get().getGearPosition();
    }

    public int getVehicleSpeed() {
        int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
        LogUtil.i("getVehicleSpeed:" + vehicleSpeed);
        return vehicleSpeed;
    }

    public boolean shouldEnablePhoneLink() {
        ICarPower.PowerState powerState = getPowerState();
        LogUtil.i("shouldEnablePhoneLink powerState:" + powerState);
        return ICarPower.PowerState.SYSTEMON == powerState || ICarPower.PowerState.TEST == powerState;
    }

    public boolean isCarplayPresent() {
        boolean isCarplayPresent = HostConfig.isCarplayPresent();
        LogUtil.i("isCarplayPresent :" + isCarplayPresent);
        return isCarplayPresent;
    }

    public boolean isCarlifePresent() {
        boolean isCarlifePresent = HostConfig.isCarlifePresent();
        LogUtil.i("isCarlifePresent :" + isCarlifePresent);
        return isCarlifePresent;
    }

    public boolean isHicarPresent() {
        boolean isHicarPresent = HostConfig.isHicarPresent();
        LogUtil.i("isHicarPresent :" + isHicarPresent);
        return isHicarPresent;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x005e. Please report as an issue. */
    public boolean isUsbAttach() {
        char c;
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        LogUtil.i("isUsbAttach curProductDevice:" + curProductDevice);
        int hashCode = curProductDevice.hashCode();
        if (hashCode == 201076150) {
            if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == 202029462) {
            if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 1292373688) {
            if (hashCode == 2039290871 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                c = 2;
            }
            c = 65535;
        } else {
            if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                c = 3;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                boolean isUsbExists = CarMediaDataManager.getInstance().isUsbExists(0);
                LogUtil.i("isUsbAttach PRODUCT_CB_IHU12_C1 usbExists:" + isUsbExists);
                if (isUsbExists) {
                    return true;
                }
            case 3:
                boolean isUsbExists2 = CarMediaDataManager.getInstance().isUsbExists(0);
                CarMediaDataManager.getInstance().isUsbExists(1);
                LogUtil.i("isUsbAttach usbExists0:" + isUsbExists2 + ",usbExists1:" + isUsbExists2);
                if (isUsbExists2) {
                    return true;
                }
            default:
                return false;
        }
    }

    public boolean isUpgrading() {
        CarUpgradeInfo curUpgradingInfo = CarUpgradeManager.getInstance().getCurUpgradingInfo();
        LogUtil.i("isUpgrading curUpgradingInfo:" + curUpgradingInfo);
        return curUpgradingInfo != null;
    }
}
