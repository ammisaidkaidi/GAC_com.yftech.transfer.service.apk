package com.yftech.transfer.phonelink.productdevice;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.transfer.phonelink.productdevice.intf.IProductDevice;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BasicProductDevice implements IProductDevice {
    protected final String TAG = getClass().getName();
    protected Handler handler = new Handler(Looper.getMainLooper());

    public abstract void disablePhoneLink();

    public abstract void enablePhoneLink();

    public abstract String getAndroidPriorityLink();

    public abstract String getIOSPriorityLink();

    public abstract PhoneLink getPhoneLinkByType();

    public abstract boolean isAvm();

    public abstract boolean isPhoneLinkEnable();

    public abstract boolean isPowerStandBy();

    public abstract void pickAndroidPriorityLink(String str);

    public abstract void pickCarLifeWhenHuaWei();

    public abstract void pickHiCarWhenHuaWei();

    public abstract void pickIOSPriorityLink(String str);

    public abstract void startPriorityLinkAction();

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void usbAttached(UsbDevice usbDevice) {
        UsbInterface usbInterface = usbDevice.getInterface(0);
        String deviceName = usbDevice.getDeviceName();
        String manufacturerName = usbDevice.getManufacturerName();
        String productName = usbDevice.getProductName();
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        int interfaceClass = usbInterface.getInterfaceClass();
        int interfaceSubclass = usbInterface.getInterfaceSubclass();
        int interfaceProtocol = usbInterface.getInterfaceProtocol();
        Log.i(this.TAG, "usbAttached name:" + deviceName);
        Log.i(this.TAG, "usbAttached mManufacturerName:" + manufacturerName);
        Log.i(this.TAG, "usbAttached mProductName:" + productName);
        Log.i(this.TAG, "usbAttached vendorId:" + vendorId);
        Log.i(this.TAG, "usbAttached productId:" + productId);
        Log.i(this.TAG, "usbAttached usbClass:" + interfaceClass);
        Log.i(this.TAG, "usbAttached usbSubClass:" + interfaceSubclass);
        Log.i(this.TAG, "usbAttached usbProtocol:" + interfaceProtocol);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void usbDetached(UsbDevice usbDevice) {
        UsbInterface usbInterface = usbDevice.getInterface(0);
        String deviceName = usbDevice.getDeviceName();
        String manufacturerName = usbDevice.getManufacturerName();
        String productName = usbDevice.getProductName();
        int vendorId = usbDevice.getVendorId();
        int productId = usbDevice.getProductId();
        int interfaceClass = usbInterface.getInterfaceClass();
        int interfaceSubclass = usbInterface.getInterfaceSubclass();
        int interfaceProtocol = usbInterface.getInterfaceProtocol();
        Log.i(this.TAG, "usbDetached name:" + deviceName);
        Log.i(this.TAG, "usbDetached mManufacturerName:" + manufacturerName);
        Log.i(this.TAG, "usbDetached mProductName:" + productName);
        Log.i(this.TAG, "usbDetached vendorId:" + vendorId);
        Log.i(this.TAG, "usbDetached productId:" + productId);
        Log.i(this.TAG, "usbDetached usbClass:" + interfaceClass);
        Log.i(this.TAG, "usbDetached usbSubClass:" + interfaceSubclass);
        Log.i(this.TAG, "usbDetached usbProtocol:" + interfaceProtocol);
    }
}
