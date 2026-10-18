package com.yftech.transfer.callback;

import android.util.Log;
import com.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.CarPowerManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarPowerListenerImp extends CarPowerManager.CarPowerListener {
    private static final HashSet<CarPowerObservor> observors = new HashSet<>();
    private final String TAG = getClass().getName();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarPowerObservor {
        public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
            LogUtil.i("onPowerModeChanged:" + powerMode);
        }

        public void onPowerStateChanged(ICarPower.PowerState powerState) {
            LogUtil.i("onPowerStateChanged:" + powerState);
        }
    }

    public static void registerObservor(CarPowerObservor carPowerObservor) {
        observors.add(carPowerObservor);
    }

    public static void unregisterObservor(CarPowerObservor carPowerObservor) {
        observors.remove(carPowerObservor);
    }

    public static boolean isregisterObservor(CarPowerObservor carPowerObservor) {
        return observors.contains(carPowerObservor);
    }

    public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
        Log.i(this.TAG, "onPowerModeChanged mode:" + powerMode);
        Iterator<CarPowerObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onPowerModeChanged(powerMode);
        }
    }

    public void onPowerStateChanged(ICarPower.PowerState powerState) {
        Log.i(this.TAG, "onPowerStateChanged state:" + powerState);
        Iterator<CarPowerObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onPowerStateChanged(powerState);
        }
    }
}
