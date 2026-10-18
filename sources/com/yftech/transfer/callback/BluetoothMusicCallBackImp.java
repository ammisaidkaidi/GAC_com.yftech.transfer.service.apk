package com.yftech.transfer.callback;

import android.bluetooth.BluetoothDevice;
import com.utils.LogUtil;
import com.yftech.car.bluetooth.callback.CarBluetoothMusicCallback;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class BluetoothMusicCallBackImp extends CarBluetoothMusicCallback {
    private static final HashSet<BluetoothMusicObservor> observors = new HashSet<>();

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class BluetoothMusicObservor {
        public void onBluetoothA2dpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        }

        public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        }
    }

    public static void registerObservor(BluetoothMusicObservor bluetoothMusicObservor) {
        observors.add(bluetoothMusicObservor);
    }

    public static void unregisterObservor(BluetoothMusicObservor bluetoothMusicObservor) {
        observors.remove(bluetoothMusicObservor);
    }

    public static boolean isregisterObservor(BluetoothMusicObservor bluetoothMusicObservor) {
        return observors.contains(bluetoothMusicObservor);
    }

    public void onBluetoothA2dpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        LogUtil.i("onBluetoothA2dpConnectStateChanged:" + bluetoothDevice + "," + i);
        Iterator<BluetoothMusicObservor> it = observors.iterator();
        while (it.hasNext()) {
            BluetoothMusicObservor next = it.next();
            if (next != null) {
                next.onBluetoothA2dpConnectStateChanged(bluetoothDevice, i);
            }
        }
    }

    public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        LogUtil.i("onBluetoothAvrcpConnectStateChanged:" + bluetoothDevice + "," + i);
        Iterator<BluetoothMusicObservor> it = observors.iterator();
        while (it.hasNext()) {
            BluetoothMusicObservor next = it.next();
            if (next != null) {
                next.onBluetoothAvrcpConnectStateChanged(bluetoothDevice, i);
            }
        }
    }
}
