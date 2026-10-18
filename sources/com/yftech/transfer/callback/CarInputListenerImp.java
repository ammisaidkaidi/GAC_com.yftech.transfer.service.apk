package com.yftech.transfer.callback;

import android.util.Log;
import com.yftech.car.input.CarInputManager;
import com.yftech.car.input.CarKey;
import com.yftech.car.input.CarKeyCustomFunction;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarInputListenerImp extends CarInputManager.CarInputCallback {
    private static final HashSet<CarInputObservor> observors = new HashSet<>();
    private final String TAG = getClass().getName();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarInputObservor {
        public void onInputKey(CarKey carKey) {
        }

        public void onInputKeyCustomFunction(CarKeyCustomFunction carKeyCustomFunction) {
        }
    }

    public static void registerObservor(CarInputObservor carInputObservor) {
        observors.add(carInputObservor);
    }

    public static void unregisterObservor(CarInputObservor carInputObservor) {
        observors.remove(carInputObservor);
    }

    public static boolean isregisterObservor(CarInputObservor carInputObservor) {
        return observors.contains(carInputObservor);
    }

    public void onInputKeyCustomFunction(CarKeyCustomFunction carKeyCustomFunction) {
        Log.i(this.TAG, "onInputKeyCustomFunction:" + carKeyCustomFunction);
        if (carKeyCustomFunction == null) {
            return;
        }
        Iterator<CarInputObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onInputKeyCustomFunction(carKeyCustomFunction);
        }
    }

    public void onInputKey(CarKey carKey) {
        Log.i(this.TAG, "onInputKey:" + carKey);
        if (carKey == null) {
            return;
        }
        Iterator<CarInputObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onInputKey(carKey);
        }
    }
}
