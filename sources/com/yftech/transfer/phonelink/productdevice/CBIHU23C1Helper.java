package com.yftech.transfer.phonelink.productdevice;

import com.utils.LogUtil;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.vehicle.internal.adapter.ICarTBox;
import com.yftech.vehicle.sdk.CarTBoxManager;
import io.reactivex.annotations.SchedulerSupport;

/* loaded from: /home/user/work/dex/classes.dex */
public class CBIHU23C1Helper extends CBIHU12Helper {
    private CarTBoxManager.CarTBoxListener mCarTBoxListener = new CarTBoxManager.CarTBoxListener() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU23C1Helper.1
        public void onPhoneCallStateChanged(ICarTBox.PhoneCallState phoneCallState) {
            super.onPhoneCallStateChanged(phoneCallState);
            LogUtil.i("CBIHU23C1Helper#onPhoneCallStateChanged state:" + phoneCallState);
            CBIHU23C1Helper.this.update();
        }

        public void onPhoneModeChanged(ICarTBox.PhoneMode phoneMode) {
            LogUtil.i("CBIHU23C1Helper#onPhoneModeChanged mode:" + phoneMode);
            CBIHU23C1Helper.this.update();
        }
    };

    @Override // com.yftech.transfer.phonelink.productdevice.CBIHU12Helper, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void init() {
        super.init();
        LogUtil.i("CBIHU23C1Helper#Init");
        CarTBoxManager.get().registerListener(this.mCarTBoxListener);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.CBIHU12Helper, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void uninit() {
        super.uninit();
        CarTBoxManager.get().unregisterListener(this.mCarTBoxListener);
    }

    private void mutePhoneLink(boolean z) {
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("CBIHU23C1Helper#mutePhoneLink connectedLinkStatus:" + connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            return;
        }
        LinkHelperManager.ins.get(connectedLinkStatus).mute(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        ICarTBox.PhoneCallState phoneCallState = CarTBoxManager.get().getPhoneCallState();
        LogUtil.i("CBIHU23C1Helper#update phoneCallState:" + phoneCallState);
        if (phoneCallState == ICarTBox.PhoneCallState.ON_THE_PHONE || phoneCallState == ICarTBox.PhoneCallState.ANSWER) {
            mutePhoneLink(true);
            return;
        }
        if (phoneCallState == ICarTBox.PhoneCallState.CONNECTING) {
            mutePhoneLink(true);
            return;
        }
        if (phoneCallState == ICarTBox.PhoneCallState.__UNKNOWN__) {
            mutePhoneLink(false);
            return;
        }
        if (phoneCallState == ICarTBox.PhoneCallState.INCOMING_CALL) {
            mutePhoneLink(true);
        } else if (phoneCallState == ICarTBox.PhoneCallState.CALL_OVER || phoneCallState == ICarTBox.PhoneCallState.HANG_UP) {
            mutePhoneLink(false);
        } else {
            mutePhoneLink(false);
        }
    }
}
