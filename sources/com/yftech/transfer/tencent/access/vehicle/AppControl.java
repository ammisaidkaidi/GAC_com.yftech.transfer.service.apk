package com.yftech.transfer.tencent.access.vehicle;

import com.yftech.transfer.tencent.access.TASSystem;
import com.yftech.transfer.tencent.access.VehicleControlImpl;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppControl extends BaseControl {
    @Override // com.yftech.transfer.tencent.access.vehicle.BaseControl
    public String onInvokeAction(boolean z, VehicleControlImpl.VehicleControlType vehicleControlType) {
        TASSystem.LOGI("AppControl onInvokeAction，isOpen:" + z + ",type:" + vehicleControlType);
        return super.onInvokeAction(z, vehicleControlType);
    }
}
