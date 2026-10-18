package com.yftech.transfer.txznet.access;

import android.content.Intent;
import android.text.TextUtils;
import com.yftech.transfer.txznet.access.vehicle.AbsBaseController;
import com.yftech.transfer.txznet.access.vehicle.AirConditionController;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class VehicleControlAdapterImpl extends AbsBaseAdapter {
    private static final String ACTION = "action";
    private List<AbsBaseController> mControllers = new ArrayList();

    public VehicleControlAdapterImpl() {
        this.mControllers.add(new AirConditionController());
    }

    @Override // com.yftech.transfer.txznet.access.AbsBaseAdapter
    public String dispatch(Intent intent) {
        String stringExtra = intent.getStringExtra(ACTION);
        if (TextUtils.isEmpty(stringExtra)) {
            return null;
        }
        for (AbsBaseController absBaseController : this.mControllers) {
            if (absBaseController.match(stringExtra)) {
                return absBaseController.invoke(intent);
            }
        }
        return null;
    }
}
