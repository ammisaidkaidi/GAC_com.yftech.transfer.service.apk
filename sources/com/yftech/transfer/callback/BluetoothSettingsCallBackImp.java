package com.yftech.transfer.callback;

import android.bluetooth.BluetoothDevice;
import com.utils.LogUtil;
import com.yftech.car.bluetooth.callback.CarBluetoothSettingsCallback;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothSettingsCallBackImp extends CarBluetoothSettingsCallback {
    private static final HashSet<BluetoothSettingsObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class BluetoothSettingsObservor {
        public void onBluetoothConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        }

        public void onBluetoothStateChanged(int i) {
        }
    }

    public static void registerObservor(BluetoothSettingsObservor bluetoothSettingsObservor) {
        observors.add(bluetoothSettingsObservor);
    }

    public static void unregisterObservor(BluetoothSettingsObservor bluetoothSettingsObservor) {
        observors.remove(bluetoothSettingsObservor);
    }

    public static boolean isregisterObservor(BluetoothSettingsObservor bluetoothSettingsObservor) {
        return observors.contains(bluetoothSettingsObservor);
    }

    public void onBluetoothStateChanged(int i) {
        LogUtil.i("onBluetoothStateChanged:" + i);
        Iterator<BluetoothSettingsObservor> it = observors.iterator();
        while (it.hasNext()) {
            BluetoothSettingsObservor next = it.next();
            if (next != null) {
                next.onBluetoothStateChanged(i);
            }
        }
    }

    public void onBluetoothConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        LogUtil.i("onBluetoothConnectStateChanged:" + bluetoothDevice + "," + i);
        Iterator<BluetoothSettingsObservor> it = observors.iterator();
        while (it.hasNext()) {
            BluetoothSettingsObservor next = it.next();
            if (next != null) {
                next.onBluetoothConnectStateChanged(bluetoothDevice, i);
            }
        }
    }
}
