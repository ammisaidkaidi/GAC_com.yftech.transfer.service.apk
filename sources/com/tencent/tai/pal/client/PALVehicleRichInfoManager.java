package com.tencent.tai.pal.client;

import com.tencent.tai.pal.INoProguardInterface;
import com.tencent.tai.pal.exception.FeatureNotSupportedException;
import com.tencent.tai.pal.vehiclerichinfo.IVehicleRichInfo;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PALVehicleRichInfoManager extends IVehicleRichInfo {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface DrivingSafetyDisclaimerListener extends INoProguardInterface {
        void onDrivingSafetyDisclaimerUpdated(String str);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDrivingControlStatusChangeListener extends INoProguardInterface {
        void onDrivingControlStatusChange(int i);
    }

    int getDrivingControlStatus();

    String getDrivingSafetyDisclaimerInfo() throws FeatureNotSupportedException;

    void registerDrivingSafetyDisclaimerListener(DrivingSafetyDisclaimerListener drivingSafetyDisclaimerListener);

    void registerOnDrivingControlStatusChangeListener(OnDrivingControlStatusChangeListener onDrivingControlStatusChangeListener);

    void unregisterDrivingSafetyDisclaimerListener(DrivingSafetyDisclaimerListener drivingSafetyDisclaimerListener);

    void unregisterOnDrivingControlStatusChangeListener(OnDrivingControlStatusChangeListener onDrivingControlStatusChangeListener);
}
