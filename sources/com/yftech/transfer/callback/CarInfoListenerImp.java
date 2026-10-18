package com.yftech.transfer.callback;

import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.sdk.CarInfoManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarInfoListenerImp extends CarInfoManager.CarInfoListener {
    private static final HashSet<CarInfoObservor> observors = new HashSet<>();
    private final String TAG = getClass().getName();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarInfoObservor {
        public void onDayNightModeChanged(ICarInfo.DayNightMode dayNightMode) {
        }

        public void onGearPositionChanged(ICarInfo.GearPosition gearPosition) {
        }

        public void onRearGearStateChanged(ICarInfo.RearGearState rearGearState) {
        }

        public void onVehicleSpeedChanged(int i) {
        }
    }

    public static void registerObservor(CarInfoObservor carInfoObservor) {
        observors.add(carInfoObservor);
    }

    public static void unregisterObservor(CarInfoObservor carInfoObservor) {
        observors.remove(carInfoObservor);
    }

    public static boolean isregisterObservor(CarInfoObservor carInfoObservor) {
        return observors.contains(carInfoObservor);
    }

    public void onRearGearStateChanged(ICarInfo.RearGearState rearGearState) {
        if (rearGearState == null) {
            return;
        }
        Iterator<CarInfoObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onRearGearStateChanged(rearGearState);
        }
    }

    public void onVehicleSpeedChanged(int i) {
        Iterator<CarInfoObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onVehicleSpeedChanged(i);
        }
    }

    public void onGearPositionChanged(ICarInfo.GearPosition gearPosition) {
        Iterator<CarInfoObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onGearPositionChanged(gearPosition);
        }
    }

    public void onDayNightModeChanged(ICarInfo.DayNightMode dayNightMode) {
        Iterator<CarInfoObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onDayNightModeChanged(dayNightMode);
        }
    }
}
