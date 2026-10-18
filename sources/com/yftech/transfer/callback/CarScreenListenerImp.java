package com.yftech.transfer.callback;

import android.util.Log;
import com.yftech.car.screen.CarScreenManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarScreenListenerImp extends CarScreenManager.CarScreenCallback {
    private static final HashSet<CarScreenObservor> observors = new HashSet<>();
    private final String TAG = getClass().getName();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarScreenObservor {
        public void onChangedDayNightMode(int i) {
        }
    }

    public static void registerObservor(CarScreenObservor carScreenObservor) {
        observors.add(carScreenObservor);
    }

    public static void unregisterObservor(CarScreenObservor carScreenObservor) {
        observors.remove(carScreenObservor);
    }

    public static boolean isregisterObservor(CarScreenObservor carScreenObservor) {
        return observors.contains(carScreenObservor);
    }

    public void onChangedDayNightMode(int i) {
        Log.i(this.TAG, "onChangedDayNightMode mode:" + i);
        Iterator<CarScreenObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onChangedDayNightMode(i);
        }
    }
}
