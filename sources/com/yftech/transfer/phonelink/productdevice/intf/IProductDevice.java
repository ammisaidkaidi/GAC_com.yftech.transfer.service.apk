package com.yftech.transfer.phonelink.productdevice.intf;

import android.hardware.usb.UsbDevice;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IProductDevice {
    void init();

    void phoneLinkChanged();

    void resetUsb();

    void uninit();

    void usbAttached(UsbDevice usbDevice);

    void usbDetached(UsbDevice usbDevice);
}
