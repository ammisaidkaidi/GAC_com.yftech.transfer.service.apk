package com.yftech.transfer.phonelink.manager;

import android.hardware.usb.UsbDevice;
import android.os.SystemProperties;
import android.util.Log;
import com.utils.LogUtil;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.transfer.phonelink.CarPhoneLinkService;
import com.yftech.transfer.phonelink.manager.interf.BasicManager;
import com.yftech.transfer.phonelink.productdevice.A58GHelper;
import com.yftech.transfer.phonelink.productdevice.A79GHelper;
import com.yftech.transfer.phonelink.productdevice.BasicProductDevice;
import com.yftech.transfer.phonelink.productdevice.CA1105Helper;
import com.yftech.transfer.phonelink.productdevice.CBIHU12C1Helper;
import com.yftech.transfer.phonelink.productdevice.CBIHU12Helper;
import com.yftech.transfer.phonelink.productdevice.CBIHU23C1Helper;
import com.yftech.transfer.phonelink.productdevice.CBIHU23Helper;
import com.yftech.transfer.service.utils.SystemPropertiesUtil;
import com.yftech.vehicle.sdk.CarConfig;
import io.reactivex.annotations.SchedulerSupport;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class ProductDeviceManager extends BasicManager {
    public static final String PRODUCT_CA1105 = "CA1105";
    public static final String PRODUCT_CBIHU12 = "CBIHU12";
    public static final String PRODUCT_CB_IHU12_C1 = "CB_IHU12_C1";
    public static final String PRODUCT_CB_IHU19 = "CB_IHU19";
    public static final String PRODUCT_CB_IHU23 = "CB_IHU23";
    public static final String PRODUCT_CB_IHU23_C1 = "CB_IHU23_C1";
    public static final ProductDeviceManager ins = new ProductDeviceManager();
    private final String curProductDevice = SystemPropertiesUtil.getProductDevice();
    private BasicProductDevice targetDevice;

    private ProductDeviceManager() {
        LogUtil.i("ProductDeviceManager:" + this.curProductDevice);
        if (isA58G()) {
            this.targetDevice = new A58GHelper();
            return;
        }
        if (isA79G()) {
            this.targetDevice = new A79GHelper();
            return;
        }
        String str = this.curProductDevice;
        char c = 65535;
        switch (str.hashCode()) {
            case 201076150:
                if (str.equals(PRODUCT_CB_IHU12_C1)) {
                    c = 3;
                    break;
                }
                break;
            case 202029462:
                if (str.equals(PRODUCT_CB_IHU23_C1)) {
                    c = 5;
                    break;
                }
                break;
            case 1292373688:
                if (str.equals(PRODUCT_CBIHU12)) {
                    c = 1;
                    break;
                }
                break;
            case 1979690371:
                if (str.equals(PRODUCT_CA1105)) {
                    c = 0;
                    break;
                }
                break;
            case 2039290871:
                if (str.equals(PRODUCT_CB_IHU23)) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.targetDevice = new CA1105Helper();
                return;
            case 1:
                this.targetDevice = new CBIHU12Helper();
                return;
            case 2:
            case 3:
            default:
                this.targetDevice = new CBIHU12C1Helper();
                return;
            case 4:
                this.targetDevice = new CBIHU23Helper();
                return;
            case 5:
                this.targetDevice = new CBIHU23C1Helper();
                return;
        }
    }

    public String getCurProductDevice() {
        return this.curProductDevice;
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void init() {
        Log.i(this.TAG, "init,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.init();
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void uninit() {
        Log.i(this.TAG, "uninit,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.uninit();
    }

    public boolean shouldPhoneLinkDisableUsb2() {
        Log.i(this.TAG, "shouldDisableUsb2 curProductDevice:" + this.curProductDevice);
        return PRODUCT_CBIHU12.equals(this.curProductDevice);
    }

    public void usbAttached(UsbDevice usbDevice) {
        Log.i(this.TAG, "usbAttached,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.usbAttached(usbDevice);
    }

    public void usbDetached(UsbDevice usbDevice) {
        Log.i(this.TAG, "usbDetached,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.usbDetached(usbDevice);
    }

    public PhoneLink getPhoneLinkByType() {
        Log.i(this.TAG, "getPhoneLinkByType,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(SchedulerSupport.NONE);
            return new PhoneLink(-1, arrayList);
        }
        return this.targetDevice.getPhoneLinkByType();
    }

    public void phoneLinkChanged() {
        Log.i(this.TAG, "phoneLinkChanged,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.phoneLinkChanged();
    }

    public void enablePhoneLink() {
        Log.i(this.TAG, "enablePhoneLink,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.enablePhoneLink();
    }

    public void disablePhoneLink() {
        Log.i(this.TAG, "disablePhoneLink,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.disablePhoneLink();
    }

    public void pickAndroidPriorityLink(String str) {
        Log.i(this.TAG, "pickAndroidPriorityLink,curProductDevice:" + str + "," + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.pickAndroidPriorityLink(str);
    }

    public void pickIOSPriorityLink(String str) {
        Log.i(this.TAG, "pickIOSPriorityLink,curProductDevice:" + str + "," + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.pickIOSPriorityLink(str);
    }

    public void startPriorityLinkAction() {
        Log.i(this.TAG, "pickIOSPriorityLink,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.startPriorityLinkAction();
    }

    public String getAndroidPriorityLink() {
        Log.i(this.TAG, "getAndroidPriorityLink,curProductDevice:" + this.curProductDevice);
        return this.targetDevice == null ? "" : this.targetDevice.getAndroidPriorityLink();
    }

    public String getIOSPriorityLink() {
        Log.i(this.TAG, "getIOSPriorityLink,curProductDevice:" + this.curProductDevice);
        return this.targetDevice == null ? "" : this.targetDevice.getIOSPriorityLink();
    }

    public boolean isPhoneLinkEnable() {
        Log.i(this.TAG, "isPhoneLinkEnable,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return false;
        }
        return this.targetDevice.isPhoneLinkEnable();
    }

    public void onVRStatusChanged(int i) {
        LogUtil.i("onVRStatusChanged:" + this.curProductDevice + "," + i);
        CarPhoneLinkService.sendVRStatusChanged(i);
    }

    public void onCallStatusChanged(int i) {
        LogUtil.i("onCallStatusChanged:" + this.curProductDevice + "," + i);
        CarPhoneLinkService.sendCallStatusChanged(i);
    }

    public void pickCarLifeWhenHuaWei() {
        Log.i(this.TAG, "pickCarLifeWhenHuaWei,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.pickCarLifeWhenHuaWei();
    }

    public void pickHiCarWhenHuaWei() {
        Log.i(this.TAG, "pickHiCarWhenHuaWei,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.pickHiCarWhenHuaWei();
    }

    public boolean isCA1105() {
        Log.i(this.TAG, "isC1105,curProductDevice:" + this.curProductDevice);
        return PRODUCT_CA1105.equals(this.curProductDevice);
    }

    public boolean isAvm() {
        Log.i(this.TAG, "isAvm,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return false;
        }
        return this.targetDevice.isAvm();
    }

    public void resetUsb() {
        Log.i(this.TAG, "resetUsb,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return;
        }
        this.targetDevice.resetUsb();
    }

    public boolean isPowerStandBy() {
        Log.i(this.TAG, "isPowerStandBy,curProductDevice:" + this.curProductDevice);
        if (this.targetDevice == null) {
            return false;
        }
        return this.targetDevice.isPowerStandBy();
    }

    public void storeHiCarWhenHuaWei() {
        char c;
        String str = this.curProductDevice;
        int hashCode = str.hashCode();
        if (hashCode == 201076150) {
            if (str.equals(PRODUCT_CB_IHU12_C1)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 1292373688) {
            if (hashCode == 1979690371 && str.equals(PRODUCT_CA1105)) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(PRODUCT_CBIHU12)) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            this.targetDevice.pickHiCarWhenHuaWei();
        }
    }

    public void storeCarLifeWhenHuaWei() {
        char c;
        String str = this.curProductDevice;
        int hashCode = str.hashCode();
        if (hashCode == 201076150) {
            if (str.equals(PRODUCT_CB_IHU12_C1)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 1292373688) {
            if (hashCode == 1979690371 && str.equals(PRODUCT_CA1105)) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(PRODUCT_CBIHU12)) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            this.targetDevice.pickCarLifeWhenHuaWei();
        }
    }

    public boolean isA58G() {
        String str = SystemProperties.get("ro.build.display.id", "");
        LogUtil.i("isA58G displayId:" + str);
        return str != null && str.startsWith("A58_G");
    }

    public boolean isA79G() {
        String str = SystemProperties.get("ro.build.display.id", "");
        LogUtil.i("isA79G displayId:" + str);
        return str != null && str.startsWith("A79_G");
    }

    public boolean isGACLogoPresent() {
        boolean isGACLogoPresent = CarConfig.isGACLogoPresent();
        Log.i(this.TAG, "isGACLogoPresent = " + isGACLogoPresent);
        return isGACLogoPresent;
    }
}
