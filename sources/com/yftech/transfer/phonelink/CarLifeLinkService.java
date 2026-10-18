package com.yftech.transfer.phonelink;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.utils.LogUtil;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.car.input.CarKeyCustomFunction;
import com.yftech.transfer.callback.BluetoothPhoneCallBackImp;
import com.yftech.transfer.callback.CarInputListenerImp;
import com.yftech.transfer.callback.CarPowerListenerImp;
import com.yftech.transfer.phonelink.receiver.AvmserviceReceiver;
import com.yftech.transfer.phonelink.stub.CarLifeServerInterfaceStub;
import com.yftech.vehicle.internal.adapter.ICarPower;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarLifeLinkService extends Service {
    public static final CarLifeServerInterfaceStub stub = new CarLifeServerInterfaceStub();
    private final String TAG = getClass().getName();
    private CarPowerListenerImp.CarPowerObservor carPowerObservor = new CarPowerListenerImp.CarPowerObservor() { // from class: com.yftech.transfer.phonelink.CarLifeLinkService.1
        @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
        public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
        }

        @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
        public void onPowerStateChanged(ICarPower.PowerState powerState) {
            if (ICarPower.PowerState.STANDBY.value == powerState.value || ICarPower.PowerState.SLEEP.value == powerState.value || ICarPower.PowerState.VOLFAULTSTBY.value == powerState.value) {
                CarLifeLinkService.stub.sleepStatus(true);
            } else {
                CarLifeLinkService.stub.sleepStatus(false);
            }
        }
    };
    private CarInputListenerImp.CarInputObservor carInputObservor = new CarInputListenerImp.CarInputObservor() { // from class: com.yftech.transfer.phonelink.CarLifeLinkService.2
        @Override // com.yftech.transfer.callback.CarInputListenerImp.CarInputObservor
        public void onInputKeyCustomFunction(CarKeyCustomFunction carKeyCustomFunction) {
            Log.i(CarLifeLinkService.this.TAG, "onInputKeyCustomFunction:" + carKeyCustomFunction);
            if (carKeyCustomFunction.getAction() != 0) {
                return;
            }
            int i = carKeyCustomFunction.code;
            if (i == 0) {
                CarLifeLinkService.stub.play_pause_hardkey_event();
                return;
            }
            switch (i) {
                case 3:
                    CarLifeLinkService.stub.home_hardkey_event();
                    return;
                case 4:
                    CarLifeLinkService.stub.back_hardkey_event();
                    return;
                default:
                    return;
            }
        }
    };
    private AvmserviceReceiver.AvmserviceObservor avmserviceObservor = new AvmserviceReceiver.AvmserviceObservor() { // from class: com.yftech.transfer.phonelink.CarLifeLinkService.3
        @Override // com.yftech.transfer.phonelink.receiver.AvmserviceReceiver.AvmserviceObservor
        public void onChanged(int i, boolean z) {
            super.onChanged(i, z);
            LogUtil.i("avmserviceObservor onChanged:" + i + "," + z);
            CarLifeLinkService.stub.camera(z);
        }
    };
    private BluetoothPhoneCallBackImp.BluetoothPhoneObservor bluetoothPhoneObservor = new BluetoothPhoneCallBackImp.BluetoothPhoneObservor() { // from class: com.yftech.transfer.phonelink.CarLifeLinkService.4
        @Override // com.yftech.transfer.callback.BluetoothPhoneCallBackImp.BluetoothPhoneObservor
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            for (PhoneCall phoneCall : list) {
                if (phoneCall != null) {
                    int callState = phoneCall.getCallState();
                    LogUtil.i("onBluetoothPhoneCallStateChanged phoneStatus:" + callState);
                    if (callState != 4) {
                        if (callState != 7) {
                            switch (callState) {
                            }
                        } else {
                            CarLifeLinkService.stub.bluetoothcall_event(false);
                        }
                    }
                    CarLifeLinkService.stub.bluetoothcall_event(true);
                }
            }
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        LogUtil.i("CarLifeLinkService onCreate");
        CarPowerListenerImp.registerObservor(this.carPowerObservor);
        CarInputListenerImp.registerObservor(this.carInputObservor);
        AvmserviceReceiver.registerObservor(this.avmserviceObservor);
        BluetoothPhoneCallBackImp.registerObservor(this.bluetoothPhoneObservor);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return stub;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        CarPowerListenerImp.unregisterObservor(this.carPowerObservor);
        CarInputListenerImp.unregisterObservor(this.carInputObservor);
        AvmserviceReceiver.unregisterObservor(this.avmserviceObservor);
        BluetoothPhoneCallBackImp.unregisterObservor(this.bluetoothPhoneObservor);
    }

    public static void startCarlifeVR() {
        stub.vr_hardkey_event();
    }

    public static void switched_devicemode(boolean z) {
        stub.switched_devicemode(z);
    }
}
