package com.yftech.transfer.callback;

import android.util.Log;
import com.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.sdk.CarTireManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarTireListenerImp extends CarTireManager.CarTireListener {
    private static final HashSet<CarTireObservor> observors = new HashSet<>();
    private final String TAG = getClass().getName();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarTireObservor {
        public void onWheelSpeedFLChanged(float f) {
        }

        public void onWheelSpeedFLEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        public void onWheelSpeedFRChanged(float f) {
        }

        public void onWheelSpeedFREnableStateChanged(IBaseApi.EnableState enableState) {
        }

        public void onWheelSpeedRLChanged(float f) {
        }

        public void onWheelSpeedRLEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        public void onWheelSpeedRRChanged(float f) {
        }

        public void onWheelSpeedRREnableStateChanged(IBaseApi.EnableState enableState) {
        }
    }

    public CarTireListenerImp() {
        LogUtil.i("CarTireListenerImp()");
    }

    public static void registerObservor(CarTireObservor carTireObservor) {
        observors.add(carTireObservor);
    }

    public static void unregisterObservor(CarTireObservor carTireObservor) {
        observors.remove(carTireObservor);
    }

    public static boolean isregisterObservor(CarTireObservor carTireObservor) {
        return observors.contains(carTireObservor);
    }

    public void onWheelSpeedFLChanged(float f) {
        Log.i(this.TAG, "onWheelSpeedFLChanged:" + f);
        Iterator<CarTireObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onWheelSpeedFLChanged(f);
        }
    }

    public void onWheelSpeedFRChanged(float f) {
        Log.i(this.TAG, "onWheelSpeedFRChanged:" + f);
        Iterator<CarTireObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onWheelSpeedFRChanged(f);
        }
    }

    public void onWheelSpeedRLChanged(float f) {
        Log.i(this.TAG, "onWheelSpeedRLChanged:" + f);
        Iterator<CarTireObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onWheelSpeedRLChanged(f);
        }
    }

    public void onWheelSpeedRRChanged(float f) {
        Log.i(this.TAG, "onWheelSpeedRRChanged:" + f);
        Iterator<CarTireObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onWheelSpeedRRChanged(f);
        }
    }

    public void onWheelSpeedFLEnableStateChanged(IBaseApi.EnableState enableState) {
        Log.i(this.TAG, "onWheelSpeedFLEnableStateChanged:" + enableState);
        Iterator<CarTireObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onWheelSpeedFLEnableStateChanged(enableState);
        }
    }

    public void onWheelSpeedFREnableStateChanged(IBaseApi.EnableState enableState) {
        Log.i(this.TAG, "onWheelSpeedFREnableStateChanged:" + enableState);
        Iterator<CarTireObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onWheelSpeedFREnableStateChanged(enableState);
        }
    }

    public void onWheelSpeedRLEnableStateChanged(IBaseApi.EnableState enableState) {
        Log.i(this.TAG, "onWheelSpeedRLEnableStateChanged:" + enableState);
        Iterator<CarTireObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onWheelSpeedRLEnableStateChanged(enableState);
        }
    }

    public void onWheelSpeedRREnableStateChanged(IBaseApi.EnableState enableState) {
        Log.i(this.TAG, "onWheelSpeedRREnableStateChanged:" + enableState);
        Iterator<CarTireObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onWheelSpeedRREnableStateChanged(enableState);
        }
    }
}
