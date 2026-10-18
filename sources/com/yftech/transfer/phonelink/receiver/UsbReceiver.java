package com.yftech.transfer.phonelink.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.helper.DeviceHelper;
import com.yftech.transfer.phonelink.manager.UsbLinkManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class UsbReceiver extends BroadcastReceiver {
    private final String TAG = getClass().getName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Log.i(this.TAG, "usbdevice action");
        try {
            UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra(DeviceHelper.BUILD_DEVICE);
            if (usbDevice != null && action != null) {
                Log.i(this.TAG, "action:" + action + "\n");
                char c = 65535;
                int hashCode = action.hashCode();
                if (hashCode != -2114103349) {
                    if (hashCode == -1608292967 && action.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
                        c = 1;
                    }
                } else if (action.equals("android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
                    c = 0;
                }
                switch (c) {
                    case 0:
                        Log.i(this.TAG, "devices:" + usbDevice.toString() + "\n");
                        UsbLinkManager.ins.usbAttached(usbDevice);
                        return;
                    case 1:
                        UsbLinkManager.ins.usbDetached(usbDevice);
                        return;
                    default:
                        return;
                }
            }
            Log.e(this.TAG, "usbdevice ACTION_USB_DEVICE_ATTACHED : device is null");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
