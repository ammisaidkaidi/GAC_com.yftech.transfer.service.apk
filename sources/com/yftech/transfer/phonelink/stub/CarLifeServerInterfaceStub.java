package com.yftech.transfer.phonelink.stub;

import android.content.Context;
import android.media.AudioManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.widget.Toast;
import com.baidu.android.common.util.CommonParam;
import com.carlife.client.ICarLifeServerCallbackInterface;
import com.carlife.client.ICarLifeServerInterface;
import com.utils.LogUtil;
import com.yftech.transfer.phonelink.manager.CarLocationManager;
import com.yftech.transfer.phonelink.manager.ManagerHelper;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.phonelink.manager.UsbLinkManager;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.utils.SystemPropertiesUtil;
import com.yftech.vehicle.sdk.CarInfoManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarLifeServerInterfaceStub extends ICarLifeServerInterface.Stub {
    private final String TAG = getClass().getName() + "_";
    private ICarLifeServerCallbackInterface callBack;

    public String getCarlifeInfVersion() {
        return "6.0";
    }

    public boolean getEAPReadStrategy() {
        return false;
    }

    public int getFullScreenOption() {
        return 5894;
    }

    public boolean getReturnLastPageWhenVRDoubleClick() {
        return false;
    }

    public int getStatusBarHeight() {
        return 0;
    }

    public int getStatusBarWidth() {
        return 0;
    }

    public String getWritableDirectory() {
        return null;
    }

    public boolean isWGS84Crood() {
        return false;
    }

    public boolean supportAndroid() {
        return true;
    }

    public boolean supportFocusUI() {
        return false;
    }

    public boolean supportGPS() {
        return false;
    }

    public boolean supportTBT() {
        return false;
    }

    public boolean supportVelocity() {
        return false;
    }

    public boolean supportWIFI() {
        return false;
    }

    public boolean supportWakeup() {
        return false;
    }

    public String getActiveUsbBusNumber() {
        String productDevice = SystemPropertiesUtil.getProductDevice();
        Log.i(this.TAG, "getActiveUsbBusNumber ProductDevice:" + productDevice);
        if (((productDevice.hashCode() == 1292373688 && productDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) ? (char) 0 : (char) 65535) != 0) {
            return null;
        }
        return UsbLinkManager.USB_01_URL;
    }

    public void registerCallback(ICarLifeServerCallbackInterface iCarLifeServerCallbackInterface) {
        this.callBack = iCarLifeServerCallbackInterface;
    }

    public void unregisterCallback() {
        this.callBack = null;
    }

    public void sleepStatus(boolean z) {
        LogUtil.i("sleepStatus:" + this.callBack + "," + z);
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.sleepStatus(z);
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.e("sleepStatus error:" + e.getMessage());
        }
    }

    public void switched_devicemode(boolean z) {
        LogUtil.i("switched_devicemode:" + this.callBack + "," + z);
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.switched_devicemode(z);
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.e("switched_devicemode error:" + e.getMessage());
        }
    }

    public void setbuttonBeep(boolean z) {
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.setbuttonBeep(z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void vr_hardkey_event() {
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.vr_hardkey_event();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void play_pause_hardkey_event() {
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.play_pause_hardkey_event();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void home_hardkey_event() {
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.home_hardkey_event();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void bluetoothcall_event(boolean z) {
        LogUtil.i("bluetoothcall_event:" + z + ",callBack:" + this.callBack);
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.bluetoothcall_event(z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void camera(boolean z) {
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.camera(z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void back_hardkey_event() {
        if (this.callBack == null) {
            return;
        }
        try {
            this.callBack.back_hardkey_event();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void buttonbeep() {
        Context context = CarTransferApplication.context;
        if (context == null) {
            return;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (Settings.System.getInt(context.getContentResolver(), "sound_effects_enabled", 0) == 1) {
            audioManager.playSoundEffect(0);
        }
    }

    public void resetusb(String str) {
        boolean isInit = ManagerHelper.isInit();
        LogUtil.i(this.TAG + "resetusb isInit:" + isInit);
        if (isInit) {
            LogUtil.i(this.TAG + "resetusb:" + str);
            ProductDeviceManager.ins.resetUsb();
        }
    }

    public boolean supportIPhone() {
        LogUtil.i("supportIPhone");
        String productDevice = SystemPropertiesUtil.getProductDevice();
        return ((productDevice.hashCode() == 1979690371 && productDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) ? (char) 0 : (char) 65535) == 0;
    }

    public boolean supportBgConnect() {
        String productDevice = SystemPropertiesUtil.getProductDevice();
        return ((productDevice.hashCode() == 1979690371 && productDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) ? (char) 0 : (char) 65535) == 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public String getChannelNumber() {
        char c;
        String productDevice = SystemPropertiesUtil.getProductDevice();
        switch (productDevice.hashCode()) {
            case 201076150:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 202029462:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1292373688:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1979690371:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 2039290871:
                if (productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return "20492149";
            case 1:
                return isA8E() ? "20492156" : "20492153";
            case 2:
                return "20492152";
            case 3:
                return "20492154";
            case 4:
                return "20492157";
            default:
                return "";
        }
    }

    public boolean isA8E() {
        String str = SystemProperties.get("ro.build.display.id", "");
        LogUtil.i("isA8E displayId:" + str);
        return str != null && str.startsWith("A8E");
    }

    public boolean supportButtonBeep() {
        Context context = CarTransferApplication.context;
        return context != null && Settings.System.getInt(context.getContentResolver(), "sound_effects_enabled", 0) == 1;
    }

    public int getMusicStreamType() {
        Log.i(this.TAG, "getMusicStreamType:34");
        return 34;
    }

    public int getVRVoiceStreamType() {
        Log.i(this.TAG, "getVRVoiceStreamType:42");
        return 42;
    }

    public int getNaviTTSStreamType() {
        Log.i(this.TAG, "getVRVoiceStreamType:40");
        return 40;
    }

    public void toast(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        Toast.makeText(CarTransferApplication.context, str, 1).show();
    }

    public String getCUID() {
        Context context = CarTransferApplication.context;
        LogUtil.i(this.TAG + "getCUID:" + context);
        return context == null ? "" : CommonParam.getCUID(context);
    }

    public String getGPSData() {
        boolean isInit = CarLocationManager.isInit();
        LogUtil.i(this.TAG + "getGPSData isInit:" + isInit);
        return !isInit ? "" : CarLocationManager.ins.getGps2CarLife();
    }

    public int getCarSpeed() {
        int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
        LogUtil.i("getCarSpeed:" + vehicleSpeed);
        return vehicleSpeed;
    }

    public boolean isExitActivityWhenGotoDesktop() {
        String productDevice = SystemPropertiesUtil.getProductDevice();
        return ((productDevice.hashCode() == 201076150 && productDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) ? (char) 0 : (char) 65535) == 0;
    }
}
