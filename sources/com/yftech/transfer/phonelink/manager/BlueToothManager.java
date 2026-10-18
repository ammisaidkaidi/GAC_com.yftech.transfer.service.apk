package com.yftech.transfer.phonelink.manager;

import android.bluetooth.BluetoothDevice;
import android.os.Handler;
import android.util.Log;
import com.utils.LogUtil;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.transfer.callback.BluetoothMusicCallBackImp;
import com.yftech.transfer.callback.BluetoothPhoneCallBackImp;
import com.yftech.transfer.callback.BluetoothSettingsCallBackImp;
import com.yftech.transfer.phonelink.consumer.ExceptionConsumer;
import com.yftech.transfer.phonelink.manager.interf.BasicManager;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BlueToothManager extends BasicManager {
    public static final BlueToothManager ins = new BlueToothManager();
    private static final HashSet<BlueToothObservor> observors = new HashSet<>();
    private Disposable initD;
    private boolean isServiceConnected = false;
    private Handler mHandler = new Handler();
    private BluetoothPhoneCallBackImp bluetoothPhoneCallBackImp = new BluetoothPhoneCallBackImp();
    private BluetoothMusicCallBackImp bluetoothMusicCallBackImp = new BluetoothMusicCallBackImp();
    private BluetoothSettingsCallBackImp bluetoothSettingsCallBackImp = new BluetoothSettingsCallBackImp();
    private BluetoothSettingsCallBackImp.BluetoothSettingsObservor bluetoothSettingsObservor = new BluetoothSettingsCallBackImp.BluetoothSettingsObservor() { // from class: com.yftech.transfer.phonelink.manager.BlueToothManager.1
        @Override // com.yftech.transfer.callback.BluetoothSettingsCallBackImp.BluetoothSettingsObservor
        public void onBluetoothStateChanged(int i) {
            super.onBluetoothStateChanged(i);
            Log.d(BlueToothManager.this.TAG, "onBluetoothStateChanged: " + i + ",enableState:" + BlueToothManager.this.enableState);
            if (i == 13 || i == 11) {
                return;
            }
            if (BlueToothManager.this.enableState == i) {
                BlueToothManager.this.enableState = -1;
            } else if (BlueToothManager.this.enableState != -1) {
                CarBluetoothManager.getInstance().setEnabled(BlueToothManager.this.enableState == 12);
                BlueToothManager.this.enableState = -1;
            }
        }
    };
    private int enableState = -1;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class BlueToothObservor {
        public void onServiceConnected() {
        }
    }

    public boolean isBlueToothConnected() {
        boolean isConnected = CarBluetoothManager.getInstance().isConnected(4096);
        LogUtil.i("isBlueToothConnected:" + isConnected);
        return isConnected;
    }

    public boolean isAVRCP_CONTROLLERConnected() {
        boolean isConnected = CarBluetoothManager.getInstance().isConnected(12);
        LogUtil.i("isAVRCP_CONTROLLERConnected:" + isConnected);
        return isConnected;
    }

    public boolean isHEADSET_CLIENTConnected() {
        boolean isConnected = CarBluetoothManager.getInstance().isConnected(16);
        LogUtil.i("isHEADSET_CLIENTConnected:" + isConnected);
        return isConnected;
    }

    public boolean isA2DP_SINKConnected() {
        boolean isConnected = CarBluetoothManager.getInstance().isConnected(11);
        LogUtil.i(this.TAG + "isA2DP_SINKConnected:" + isConnected);
        return isConnected;
    }

    public boolean isA2DPConnected() {
        boolean isConnected = CarBluetoothManager.getInstance().isConnected(2);
        LogUtil.i(this.TAG + "isA2DPConnected:" + isConnected);
        return isConnected;
    }

    public void play() {
        CarBluetoothManager.getInstance().startBluetoothMusic(false);
        LogUtil.i(this.TAG + "play");
    }

    public void playAuto() {
        CarBluetoothManager.getInstance().startBluetoothMusic(true);
        LogUtil.i(this.TAG + "playAuto");
    }

    public void pause() {
        CarBluetoothManager.getInstance().pauseBluetoothMusic();
        LogUtil.i(this.TAG + "pause");
    }

    public void next() {
        CarBluetoothManager.getInstance().nextBluetoothMusic();
        LogUtil.i(this.TAG + "next");
    }

    public void pre() {
        CarBluetoothManager.getInstance().previousBluetoothMusic();
        LogUtil.i(this.TAG + "pre");
    }

    public boolean isPlaying() {
        boolean isPlayingBluetoothMusic = CarBluetoothManager.getInstance().isPlayingBluetoothMusic();
        LogUtil.i(this.TAG + "isPlaying isPlayingBluetoothMusic:" + isPlayingBluetoothMusic);
        return isPlayingBluetoothMusic;
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void init() {
        this.initD = Observable.create(new ObservableOnSubscribe<Object>() { // from class: com.yftech.transfer.phonelink.manager.BlueToothManager.3
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<Object> observableEmitter) {
                int enableState = CarBluetoothManager.getInstance().getEnableState();
                LogUtil.i("init start enableState:" + enableState);
                while (enableState == -1) {
                    try {
                        Thread.sleep(800L);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    enableState = CarBluetoothManager.getInstance().getEnableState();
                    LogUtil.i("init while enableState:" + enableState);
                }
                observableEmitter.onNext(0);
            }
        }).subscribeOn(Schedulers.io()).observeOn(Schedulers.io()).subscribe(new Consumer<Object>() { // from class: com.yftech.transfer.phonelink.manager.BlueToothManager.2
            @Override // io.reactivex.functions.Consumer
            public void accept(Object obj) {
                BlueToothManager.this.isServiceConnected = true;
                CarBluetoothManager.getInstance().registerBluetoothSettingsCallback(BlueToothManager.this.bluetoothSettingsCallBackImp, BlueToothManager.this.mHandler);
                CarBluetoothManager.getInstance().registerBluetoothPhoneCallback(BlueToothManager.this.bluetoothPhoneCallBackImp, BlueToothManager.this.mHandler);
                CarBluetoothManager.getInstance().registerBluetoothMusicCallback(BlueToothManager.this.bluetoothMusicCallBackImp, BlueToothManager.this.mHandler);
                BluetoothSettingsCallBackImp.registerObservor(BlueToothManager.this.bluetoothSettingsObservor);
                Iterator it = BlueToothManager.observors.iterator();
                while (it.hasNext()) {
                    ((BlueToothObservor) it.next()).onServiceConnected();
                }
            }
        }, new ExceptionConsumer());
    }

    private BlueToothManager() {
    }

    public void setEnable(boolean z) {
        Log.d(this.TAG, "setEnable: " + z);
        this.enableState = z ? 12 : 10;
        CarBluetoothManager.getInstance().setEnabled(z);
    }

    public boolean isEnable() {
        int enableState = CarBluetoothManager.getInstance().getEnableState();
        LogUtil.i("isEnable:" + enableState);
        return 12 == enableState || 11 == enableState;
    }

    public int getEnableState() {
        int enableState = CarBluetoothManager.getInstance().getEnableState();
        LogUtil.i("getEnableState:" + enableState);
        return enableState;
    }

    public boolean isMusicEnable() {
        boolean isConnected;
        List<BluetoothDevice> pairedDevices = CarBluetoothManager.getInstance().getPairedDevices();
        LogUtil.i("isMusicEnable pairedDevices:" + pairedDevices);
        if (pairedDevices == null || pairedDevices.isEmpty() || !(isConnected = CarBluetoothManager.getInstance().isConnected(4096))) {
            return false;
        }
        LogUtil.i("isMusicEnable device,connected:" + isConnected);
        for (BluetoothDevice bluetoothDevice : pairedDevices) {
            if (bluetoothDevice != null) {
                int deviceConnectState = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 11);
                int deviceConnectState2 = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 12);
                if (2 == deviceConnectState || 2 == deviceConnectState2) {
                    LogUtil.i("isMusicEnable dpEnableState:" + deviceConnectState);
                    LogUtil.i("isMusicEnable vrcEnableState:" + deviceConnectState2);
                    return true;
                }
            }
        }
        return false;
    }

    public BluetoothDevice getConnectedDevice() {
        List<BluetoothDevice> pairedDevices = CarBluetoothManager.getInstance().getPairedDevices();
        LogUtil.i(this.TAG + "#getConnectedDevice pairedDevices:" + pairedDevices);
        if (pairedDevices == null || pairedDevices.isEmpty() || !CarBluetoothManager.getInstance().isConnected(4096)) {
            return null;
        }
        for (BluetoothDevice bluetoothDevice : pairedDevices) {
            if (bluetoothDevice != null) {
                int deviceConnectState = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 11);
                int deviceConnectState2 = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 12);
                int deviceConnectState3 = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 16);
                boolean z = 2 == deviceConnectState || 1 == deviceConnectState;
                boolean z2 = 2 == deviceConnectState2 || 1 == deviceConnectState2;
                boolean z3 = 2 == deviceConnectState3 || 1 == deviceConnectState3;
                LogUtil.i(this.TAG + "#getConnectedDevice dpEnableState:" + deviceConnectState + ",vrcEnableState:" + deviceConnectState2 + ",headsetEnableState:" + deviceConnectState3);
                if (z || z2 || z3) {
                    return bluetoothDevice;
                }
            }
        }
        return null;
    }

    public boolean setBluetoothEnable() {
        boolean scanMode = CarBluetoothManager.getInstance().setScanMode(23, 0);
        LogUtil.i("setBluetoothEnable: setScanMode(23,0)");
        return scanMode;
    }

    public boolean setBluetoothDisable() {
        boolean scanMode = CarBluetoothManager.getInstance().setScanMode(20, 0);
        LogUtil.i("setBluetoothDisable: setScanMode(20,0)");
        return scanMode;
    }

    public void disConnect() {
        Log.i(this.TAG, "disConnect");
        List<BluetoothDevice> pairedDevices = CarBluetoothManager.getInstance().getPairedDevices();
        List remoteDevices = CarBluetoothManager.getInstance().getRemoteDevices();
        if (pairedDevices == null || pairedDevices.isEmpty()) {
            return;
        }
        Log.i(this.TAG, "pairedDevices:" + pairedDevices.size());
        Log.i(this.TAG, "remoteDevices:" + remoteDevices.size());
        for (BluetoothDevice bluetoothDevice : pairedDevices) {
            if (bluetoothDevice != null) {
                Log.i(this.TAG, "disConnect device:" + bluetoothDevice);
                int deviceConnectState = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 16);
                int deviceConnectState2 = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 11);
                Log.i(this.TAG, "disConnect device:" + bluetoothDevice + ",hfpState:" + deviceConnectState + ",a2dpState:" + deviceConnectState2);
                if (2 == deviceConnectState || 2 == deviceConnectState2) {
                    CarBluetoothManager.getInstance().requestDisconnected(bluetoothDevice, 4096);
                    return;
                }
            }
        }
    }

    public void call(String str) {
        LogUtil.i(this.TAG + "call:" + str);
        if (str == null || str.isEmpty()) {
            return;
        }
        CarBluetoothManager.getInstance().dial(str);
    }

    public int getCallState() {
        List phoneCalls = CarBluetoothManager.getInstance().getPhoneCalls();
        if (phoneCalls == null || phoneCalls.isEmpty()) {
            return 7;
        }
        PhoneCall phoneCall = (PhoneCall) phoneCalls.get(0);
        LogUtil.i("getCallState:" + phoneCall);
        return phoneCall.getCallState();
    }

    public String getBluetoothName() {
        String bluetoothName = CarBluetoothManager.getInstance().getBluetoothName();
        LogUtil.i(this.TAG + "#getBluetoothName bluetoothName:" + bluetoothName);
        return bluetoothName;
    }

    public boolean isOnCall() {
        List phoneCalls = CarBluetoothManager.getInstance().getPhoneCalls();
        if (phoneCalls == null || phoneCalls.isEmpty()) {
            return false;
        }
        PhoneCall phoneCall = (PhoneCall) phoneCalls.get(0);
        LogUtil.i("getCallState:" + phoneCall);
        return 4 == phoneCall.getCallState();
    }

    public void disConnectAudio() {
        Log.i(this.TAG, "disConnectAudio");
        List<BluetoothDevice> pairedDevices = CarBluetoothManager.getInstance().getPairedDevices();
        if (pairedDevices == null || pairedDevices.isEmpty()) {
            return;
        }
        for (BluetoothDevice bluetoothDevice : pairedDevices) {
            if (bluetoothDevice != null) {
                int deviceConnectState = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 11);
                int deviceConnectState2 = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 12);
                Log.i(this.TAG, "disConnectAudio device:" + bluetoothDevice + ",a2dpSinkState:" + deviceConnectState + ",rcpSinkState:" + deviceConnectState2);
                if (2 == deviceConnectState || 2 == deviceConnectState2) {
                    CarBluetoothManager.getInstance().requestDisconnected(bluetoothDevice, 11);
                    CarBluetoothManager.getInstance().requestDisconnected(bluetoothDevice, 12);
                    return;
                }
            }
        }
    }

    public void connectAudio() {
        Log.i(this.TAG, "connectAudio");
        List<BluetoothDevice> pairedDevices = CarBluetoothManager.getInstance().getPairedDevices();
        if (pairedDevices == null || pairedDevices.isEmpty()) {
            return;
        }
        for (BluetoothDevice bluetoothDevice : pairedDevices) {
            if (bluetoothDevice != null) {
                int deviceConnectState = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 16);
                Log.i(this.TAG, "connectAudio device:" + bluetoothDevice + ",hfpState:" + deviceConnectState);
                if (2 == deviceConnectState) {
                    CarBluetoothManager.getInstance().requestConnect(bluetoothDevice, 11);
                    CarBluetoothManager.getInstance().requestConnect(bluetoothDevice, 12);
                    return;
                }
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.manager.interf.IManager
    public void uninit() {
        if (this.initD != null) {
            this.initD.dispose();
        }
        CarBluetoothManager.getInstance().unregisterBluetoothSettingsCallback(this.bluetoothSettingsCallBackImp);
        CarBluetoothManager.getInstance().unregisterBluetoothPhoneCallback(this.bluetoothPhoneCallBackImp);
        CarBluetoothManager.getInstance().unregisterBluetoothMusicCallback(this.bluetoothMusicCallBackImp);
        BluetoothSettingsCallBackImp.unregisterObservor(this.bluetoothSettingsObservor);
    }

    public static void registerObservor(BlueToothObservor blueToothObservor) {
        observors.add(blueToothObservor);
    }

    public static void unregisterObservor(BlueToothObservor blueToothObservor) {
        observors.remove(blueToothObservor);
    }

    public static boolean isregisterObservor(BlueToothObservor blueToothObservor) {
        return observors.contains(blueToothObservor);
    }

    public boolean isServiceConnected() {
        return this.isServiceConnected;
    }
}
