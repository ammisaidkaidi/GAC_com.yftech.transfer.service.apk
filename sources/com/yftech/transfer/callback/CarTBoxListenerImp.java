package com.yftech.transfer.callback;

import com.utils.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarTBox;
import com.yftech.vehicle.sdk.CarTBoxManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarTBoxListenerImp extends CarTBoxManager.CarTBoxListener {
    private static final HashSet<CarTBoxObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarTBoxObservor {
        public void onMuteRadioOrderChanged(ICarTBox.MuteRadioOrder muteRadioOrder) {
        }

        public void onPhoneCallStateChanged(ICarTBox.PhoneCallState phoneCallState) {
        }

        public void onPhoneModeChanged(ICarTBox.PhoneMode phoneMode) {
        }
    }

    public static void registerObservor(CarTBoxObservor carTBoxObservor) {
        observors.add(carTBoxObservor);
    }

    public static void unregisterObservor(CarTBoxObservor carTBoxObservor) {
        observors.remove(carTBoxObservor);
    }

    public static boolean isregisterObservor(CarTBoxObservor carTBoxObservor) {
        return observors.contains(carTBoxObservor);
    }

    public void onMuteRadioOrderChanged(ICarTBox.MuteRadioOrder muteRadioOrder) {
        LogUtil.i("onMuteRadioOrderChanged order:" + muteRadioOrder);
        Iterator<CarTBoxObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onMuteRadioOrderChanged(muteRadioOrder);
        }
    }

    public void onPhoneModeChanged(ICarTBox.PhoneMode phoneMode) {
        LogUtil.i("onPhoneModeChanged mode:" + phoneMode);
        Iterator<CarTBoxObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onPhoneModeChanged(phoneMode);
        }
    }

    public void onPhoneCallStateChanged(ICarTBox.PhoneCallState phoneCallState) {
        LogUtil.i("onPhoneCallStateChanged state:" + phoneCallState);
        Iterator<CarTBoxObservor> it = observors.iterator();
        while (it.hasNext()) {
            it.next().onPhoneCallStateChanged(phoneCallState);
        }
    }
}
