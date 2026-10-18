package com.yftech.transfer.callback;

import com.utils.LogUtil;
import com.yftech.car.data.CarData;
import com.yftech.car.data.CarDataManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarDataCallBackImp extends CarDataManager.CarDataCallback {
    public static final String COM_ANDROID_SYSTEMUI_ENGINEHOOD_WARNING_OPEN = "com.android.systemui.EnginehoodWarningOpen";
    private static final HashSet<CarDataObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarDataObservor {
        public void onCarDataChanged(CarData carData) {
        }
    }

    public static void registerObservor(CarDataObservor carDataObservor) {
        observors.add(carDataObservor);
    }

    public static void unregisterObservor(CarDataObservor carDataObservor) {
        observors.remove(carDataObservor);
    }

    public static boolean isregisterObservor(CarDataObservor carDataObservor) {
        return observors.contains(carDataObservor);
    }

    public void onCarDataChanged(CarData carData) {
        LogUtil.i("onCarDataChanged:" + carData);
        Iterator<CarDataObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onCarDataChanged(carData);
        }
    }
}
