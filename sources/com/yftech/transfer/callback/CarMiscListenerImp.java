package com.yftech.transfer.callback;

import com.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarMisc;
import com.yftech.vehicle.sdk.CarMiscManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarMiscListenerImp extends CarMiscManager.CarMiscListener {
    private static final HashSet<CarMiscObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarMiscObservor {
        public void onTBoxEcallStateChanged(ICarMisc.ECallState eCallState) {
        }
    }

    public static void registerObservor(CarMiscObservor carMiscObservor) {
        observors.add(carMiscObservor);
    }

    public static void unregisterObservor(CarMiscObservor carMiscObservor) {
        observors.remove(carMiscObservor);
    }

    public static boolean isregisterObservor(CarMiscObservor carMiscObservor) {
        return observors.contains(carMiscObservor);
    }

    public void onTBoxEcallStateChanged(ICarMisc.ECallState eCallState) {
        LogUtil.i("onTBoxEcallStateChanged:" + eCallState);
        Iterator<CarMiscObservor> it = observors.iterator();
        while (it.hasNext()) {
            CarMiscObservor next = it.next();
            if (next != null) {
                next.onTBoxEcallStateChanged(eCallState);
            }
        }
    }
}
