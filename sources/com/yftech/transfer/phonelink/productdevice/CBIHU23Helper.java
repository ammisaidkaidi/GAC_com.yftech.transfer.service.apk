package com.yftech.transfer.phonelink.productdevice;

import com.yftech.transfer.callback.CarTBoxListenerImp;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.vehicle.internal.adapter.ICarTBox;

/* loaded from: /home/user/work/dex/classes.dex */
public class CBIHU23Helper extends CBIHU12Helper {
    private CarTBoxListenerImp.CarTBoxObservor carTBoxObservor = new CarTBoxListenerImp.CarTBoxObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU23Helper.1
        @Override // com.yftech.transfer.callback.CarTBoxListenerImp.CarTBoxObservor
        public void onPhoneCallStateChanged(ICarTBox.PhoneCallState phoneCallState) {
            if (phoneCallState == ICarTBox.PhoneCallState.__UNKNOWN__) {
                return;
            }
            if (phoneCallState == ICarTBox.PhoneCallState.INCOMING_CALL || phoneCallState == ICarTBox.PhoneCallState.ANSWER || phoneCallState == ICarTBox.PhoneCallState.CONNECTING || phoneCallState == ICarTBox.PhoneCallState.ON_THE_PHONE) {
                LinkHelperManager.ins.pauseForResume();
                LinkHelperManager.ins.mute(true);
            } else if (phoneCallState == ICarTBox.PhoneCallState.HANG_UP || phoneCallState == ICarTBox.PhoneCallState.CALL_OVER) {
                LinkHelperManager.ins.resume();
                LinkHelperManager.ins.mute(false);
            }
        }
    };

    @Override // com.yftech.transfer.phonelink.productdevice.CBIHU12Helper, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void init() {
        super.init();
        CarTBoxListenerImp.registerObservor(this.carTBoxObservor);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.CBIHU12Helper, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void uninit() {
        super.uninit();
        CarTBoxListenerImp.unregisterObservor(this.carTBoxObservor);
    }
}
