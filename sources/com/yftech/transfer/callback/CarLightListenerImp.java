package com.yftech.transfer.callback;

import com.utils.LogUtil;
import com.yftech.vehicle.sdk.CarLightManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarLightListenerImp extends CarLightManager.CarLightListener {
    private static final HashSet<CarLightObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarLightObservor {
        public void onSmallLightStateChanged(boolean z) {
        }
    }

    public static void registerObservor(CarLightObservor carLightObservor) {
        observors.add(carLightObservor);
    }

    public static void unregisterObservor(CarLightObservor carLightObservor) {
        observors.remove(carLightObservor);
    }

    public static boolean isregisterObservor(CarLightObservor carLightObservor) {
        return observors.contains(carLightObservor);
    }

    public void onSmallLightStateChanged(boolean z) {
        LogUtil.i("onSmallLightStateChanged isEnabled:" + z);
        Iterator<CarLightObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onSmallLightStateChanged(z);
        }
    }
}
