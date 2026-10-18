package com.yftech.transfer.callback;

import android.bluetooth.BluetoothDevice;
import com.utils.LogUtil;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.car.bluetooth.model.PhoneCall;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothPhoneCallBackImp extends CarBluetoothPhoneCallback {
    private static final HashSet<BluetoothPhoneObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class BluetoothPhoneObservor {
        public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        }

        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
        }
    }

    public static void registerObservor(BluetoothPhoneObservor bluetoothPhoneObservor) {
        observors.add(bluetoothPhoneObservor);
    }

    public static void unregisterObservor(BluetoothPhoneObservor bluetoothPhoneObservor) {
        observors.remove(bluetoothPhoneObservor);
    }

    public static boolean isregisterObservor(BluetoothPhoneObservor bluetoothPhoneObservor) {
        return observors.contains(bluetoothPhoneObservor);
    }

    public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
        LogUtil.i("onBluetoothPhoneCallStateChanged:" + list);
        Iterator<BluetoothPhoneObservor> it = observors.iterator();
        while (it.hasNext()) {
            BluetoothPhoneObservor next = it.next();
            if (next != null) {
                next.onBluetoothPhoneCallStateChanged(list);
            }
        }
    }

    public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
        LogUtil.i("onBluetoothHfpConnectStatusChanged bluetoothDevice:" + bluetoothDevice + ",state:" + i);
        Iterator<BluetoothPhoneObservor> it = observors.iterator();
        while (it.hasNext()) {
            BluetoothPhoneObservor next = it.next();
            if (next != null) {
                next.onBluetoothHfpConnectStatusChanged(bluetoothDevice, i);
            }
        }
    }
}
