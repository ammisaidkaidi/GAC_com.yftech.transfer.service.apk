package com.yftech.transfer.phonelink.productdevice;

import android.hardware.usb.UsbDevice;
import com.utils.LogUtil;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.transfer.phonelink.CarPhoneLinkService;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.UsbLinkManager;
import com.yftech.transfer.service.utils.SettingsUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaiduCBIHU12Helper extends CBIHU12Helper {
    @Override // com.yftech.transfer.phonelink.productdevice.CBIHU12Helper, com.yftech.transfer.phonelink.productdevice.BasicProductDevice, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void usbAttached(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return;
        }
        super.usbAttached(usbDevice);
        LogUtil.i("usbAttached  pre curPhoneType:" + this.curPhoneType);
        int baiduPhoneType = UsbLinkManager.ins.getBaiduPhoneType(usbDevice, false);
        LogUtil.i("usbAttached  newType:" + baiduPhoneType);
        char c = 65535;
        if (-1 == baiduPhoneType) {
            return;
        }
        this.curPhoneType = baiduPhoneType;
        LogUtil.i("usbAttached  now curPhoneType:" + this.curPhoneType);
        PhoneLink phoneLinkByType = getPhoneLinkByType();
        LogUtil.i("usbAttached phoneLink:" + phoneLinkByType);
        String huaWeiPhoneLinkPicked = SettingsUtil.getHuaWeiPhoneLinkPicked();
        LogUtil.i("usbAttached hwpicked:" + huaWeiPhoneLinkPicked);
        int type = phoneLinkByType.getType();
        if (type == 0) {
            LinkHelperManager.ins.get("carlife").enable(true);
        } else if (type == 2) {
            if (huaWeiPhoneLinkPicked == null || huaWeiPhoneLinkPicked.isEmpty()) {
                LinkHelperManager.ins.get("carlife").enable(false);
                LinkHelperManager.ins.get("hicar").enable(false);
                CarPhoneLinkService.sendShowHuaWeiConnectedDialog();
            } else {
                int hashCode = huaWeiPhoneLinkPicked.hashCode();
                if (hashCode != 99272499) {
                    if (hashCode == 554181840 && huaWeiPhoneLinkPicked.equals("carlife")) {
                        c = 0;
                    }
                } else if (huaWeiPhoneLinkPicked.equals("hicar")) {
                    c = 1;
                }
                switch (c) {
                    case 0:
                        LinkHelperManager.ins.get("carlife").enable(true);
                        LinkHelperManager.ins.get("hicar").enable(false);
                        break;
                    case 1:
                        LinkHelperManager.ins.get("carlife").enable(false);
                        LinkHelperManager.ins.get("hicar").enable(true);
                        break;
                }
            }
        }
        CarPhoneLinkService.sendDeviceChangedCallBack(phoneLinkByType);
    }
}
