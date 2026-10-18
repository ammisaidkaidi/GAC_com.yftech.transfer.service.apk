package com.tencent.tai.pal.vehiclerichinfo;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.service.BaseAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class VehicleRichInfoAdapter extends BaseAdapter implements IVehicleRichInfo {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDrivingControlStatusChangeListener extends INoProguardInterface {
        void onDrivingControlStatusChange(int i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDrivingSafetyDisclaimerListener extends INoProguardInterface {
        void onDrivingSafetyDisclaimerUpdated(String str);
    }

    public abstract int getDrivingControlStatus();

    public abstract String getDrivingSafetyDisclaimerInfo();

    public abstract void registerOnDrivingControlStatusChangeListener(OnDrivingControlStatusChangeListener onDrivingControlStatusChangeListener);

    public abstract void registerOnDrivingSafetyDisclaimerListener(OnDrivingSafetyDisclaimerListener onDrivingSafetyDisclaimerListener);

    public abstract void unregisterOnDrivingControlStatusChangeListener(OnDrivingControlStatusChangeListener onDrivingControlStatusChangeListener);

    public abstract void unregisterOnDrivingSafetyDisclaimerListener(OnDrivingSafetyDisclaimerListener onDrivingSafetyDisclaimerListener);
}
