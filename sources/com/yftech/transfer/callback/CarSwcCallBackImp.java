package com.yftech.transfer.callback;

import com.utils.LogUtil;
import com.yftech.vehicle.sdk.CarSwcManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarSwcCallBackImp extends CarSwcManager.CarSwcListener {
    private static final HashSet<CarSwcObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarSwcObservor {
        public void onSwcAngleChanged(float f) {
        }
    }

    public static void registerObservor(CarSwcObservor carSwcObservor) {
        observors.add(carSwcObservor);
    }

    public static void unregisterObservor(CarSwcObservor carSwcObservor) {
        observors.remove(carSwcObservor);
    }

    public static boolean isregisterObservor(CarSwcObservor carSwcObservor) {
        return observors.contains(carSwcObservor);
    }

    public void onSwcAngleChanged(float f) {
        LogUtil.i(" onSwcAngleChanged angle:" + f);
        Iterator<CarSwcObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onSwcAngleChanged(f);
        }
    }
}
