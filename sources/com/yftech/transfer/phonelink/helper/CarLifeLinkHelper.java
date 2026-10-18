package com.yftech.transfer.phonelink.helper;

import android.bluetooth.BluetoothDevice;
import android.util.Log;
import com.utils.LogUtil;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.transfer.callback.BluetoothMusicCallBackImp;
import com.yftech.transfer.callback.BluetoothSettingsCallBackImp;
import com.yftech.transfer.phonelink.CarLifeLinkService;
import com.yftech.transfer.phonelink.CarPhoneLinkMediaService;
import com.yftech.transfer.phonelink.carlife.CarLifeClient;
import com.yftech.transfer.phonelink.manager.BlueToothManager;
import com.yftech.transfer.phonelink.manager.CarControlManager;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.phonelink.receiver.ActivityChangedReceiver;
import com.yftech.transfer.phonelink.stub.CarLifeClientCallbackInterfaceStub;
import com.yftech.transfer.service.utils.SettingsUtil;
import com.yftech.vehicle.internal.adapter.ICarPower;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarLifeLinkHelper extends BasicLinkHelper {
    private static final String LAUNCH_HOME = "home";
    private static final String LAUNCH_MAP = "map";
    private static final String LAUNCH_MUSIC = "music";
    private static final String LAUNCH_PHONE = "phone";
    private BluetoothMusicCallBackImp.BluetoothMusicObservor bluetoothMusicObservor = new BluetoothMusicCallBackImp.BluetoothMusicObservor() { // from class: com.yftech.transfer.phonelink.helper.CarLifeLinkHelper.1
        @Override // com.yftech.transfer.callback.BluetoothMusicCallBackImp.BluetoothMusicObservor
        public void onBluetoothAvrcpConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
            Log.i(CarLifeLinkHelper.this.TAG, "onBluetoothAvrcpConnectStateChanged:" + bluetoothDevice + "," + i);
            BlueToothManager.ins.getEnableState();
            if (i == 2 && CarLifeLinkHelper.this.isConnected()) {
                BlueToothManager.ins.disConnectAudio();
            }
        }
    };
    private BluetoothSettingsCallBackImp.BluetoothSettingsObservor bluetoothSettingsObservor = new BluetoothSettingsCallBackImp.BluetoothSettingsObservor() { // from class: com.yftech.transfer.phonelink.helper.CarLifeLinkHelper.2
        @Override // com.yftech.transfer.callback.BluetoothSettingsCallBackImp.BluetoothSettingsObservor
        public void onBluetoothStateChanged(int i) {
            Log.i(CarLifeLinkHelper.this.TAG, "phonlinkbt onBluetoothStateChanged:" + i);
            SettingsUtil.storeBluetoothStatus(i);
        }
    };
    private CarLifeClientCallbackInterfaceStub.OnStatusChangedListener onStatusChangedListener = new CarLifeClientCallbackInterfaceStub.OnStatusChangedListener() { // from class: com.yftech.transfer.phonelink.helper.CarLifeLinkHelper.3
        @Override // com.yftech.transfer.phonelink.stub.CarLifeClientCallbackInterfaceStub.OnStatusChangedListener
        public void connectStatus(int i, int i2) {
            LogUtil.i("OnStatusChangedListener connectStatus:" + i + "," + i2);
            if (i != 0) {
                if (i == 2 && BlueToothManager.ins.isBlueToothConnected()) {
                    BlueToothManager.ins.disConnectAudio();
                    return;
                }
                return;
            }
            CarPhoneLinkMediaService.sendMediaInfoChanged(null);
            ProductDeviceManager.ins.onCallStatusChanged(0);
            ProductDeviceManager.ins.onVRStatusChanged(0);
            BlueToothManager.ins.connectAudio();
        }
    };

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void connectCarLinkDevice(CarLinkDevice carLinkDevice) {
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void forgetCarLinkDevice(CarLinkDevice carLinkDevice) {
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public List<CarLinkDevice> getAvailableCarLinkDeviceList() {
        return null;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public List<CarLinkDevice> getCarLinkDeviceList() {
        return null;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public CarLinkDevice getConnectedCarLinkDeviceList() {
        return null;
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public String linkName() {
        return "carlife";
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void mute(boolean z) {
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public boolean isConnected() {
        int connectStatus = CarLifeClientCallbackInterfaceStub.getConnectStatus();
        Log.i(this.TAG, "carLifeStatus:" + connectStatus);
        return connectStatus == 2;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void init() {
        BluetoothSettingsCallBackImp.registerObservor(this.bluetoothSettingsObservor);
        BluetoothMusicCallBackImp.registerObservor(this.bluetoothMusicObservor);
        CarLifeClientCallbackInterfaceStub.registerStatusChangedListener(this.onStatusChangedListener);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void uninit() {
        BluetoothSettingsCallBackImp.unregisterObservor(this.bluetoothSettingsObservor);
        BluetoothMusicCallBackImp.unregisterObservor(this.bluetoothMusicObservor);
        CarLifeClientCallbackInterfaceStub.unregisterStatusChangedListener(this.onStatusChangedListener);
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public void connectByUsb() {
        enable(true);
        CarLifeClient.getInstance().launchCarlifeApp("");
        ProductDeviceManager.ins.storeCarLifeWhenHuaWei();
        LinkHelperManager.ins.get("hicar").enable(false);
        LogUtil.i("connectByUsb()");
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public void connectByWireless() {
        connectByUsb();
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public void disconnect() {
        boolean isConnected = isConnected();
        LogUtil.i(this.TAG + " disconnect isConnected:" + isConnected);
        if (isConnected) {
            String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
            char c = 65535;
            switch (curProductDevice.hashCode()) {
                case 201076150:
                    if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
                        c = 0;
                        break;
                    }
                    break;
                case 202029462:
                    if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23_C1)) {
                        c = 3;
                        break;
                    }
                    break;
                case 1292373688:
                    if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                        c = 1;
                        break;
                    }
                    break;
                case 1979690371:
                    if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                        c = 4;
                        break;
                    }
                    break;
                case 2039290871:
                    if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU23)) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 2:
                case 3:
                    enable(false);
                    CarLifeClient.getInstance().disconnect();
                    CarLifeClient.getInstance().closeCarlifeActivety();
                    return;
                case 4:
                    if (CarControlManager.ins.getPowerState() == ICarPower.PowerState.SYSTEMON) {
                        CarLifeClient.getInstance().donot_audoconnect();
                        CarLifeClient.getInstance().closeCarlifeActivety();
                        ProductDeviceManager.ins.resetUsb();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void enable(boolean z) {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i(this.TAG + " enable:" + z + ",b:" + checkReady);
        if (checkReady) {
            String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
            char c = 65535;
            if (curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) {
                c = 0;
            }
            if (c != 0 && !CarControlManager.ins.isCarlifePresent()) {
                CarLifeClient.getInstance().donot_audoconnect();
            } else if (z) {
                CarLifeClient.getInstance().audoconnect();
            } else {
                CarLifeClient.getInstance().donot_audoconnect();
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void startVR() {
        LogUtil.i(this.TAG + " startVR()");
        CarLifeLinkService.startCarlifeVR();
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void closeVR() {
        LogUtil.i(this.TAG + " closeVR()");
        CarLifeLinkService.startCarlifeVR();
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public int getVRStatus() {
        return CarLifeClientCallbackInterfaceStub.getVRStatus();
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void acceptPhone() {
        LogUtil.i("carlife no support acceptPhone");
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void rejectPhone() {
        LogUtil.i("carlife no support rejectPhone");
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void starCallPage() {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i("starCallPage checkReady:" + checkReady);
        if (checkReady) {
            LogUtil.i(this.TAG + "starCallPage");
            if ("com.baidu.carlifevehicle".equals(ActivityChangedReceiver.curShowPkg)) {
                CarLifeClient.getInstance().enterpage(LAUNCH_PHONE);
            } else {
                CarLifeClient.getInstance().launchCarlifeApp(LAUNCH_PHONE);
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public int getCallStatus() {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i(this.TAG + "starCallPage checkReady:" + checkReady);
        if (!checkReady || !isConnected()) {
            return 0;
        }
        int callStatus = CarLifeClientCallbackInterfaceStub.getCallStatus();
        LogUtil.i(this.TAG + " getCallStatus:" + callStatus);
        return callStatus;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void startPage(int i) {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i(this.TAG + " startPage checkReady:" + checkReady);
        if (checkReady) {
            LogUtil.i(this.TAG + " startPage:" + i);
            switch (i) {
                case 0:
                    CarLifeClient.getInstance().launchCarlifeApp(LAUNCH_HOME);
                    return;
                case 1:
                    CarLifeClient.getInstance().launchCarlifeApp("map");
                    return;
                case 2:
                    CarLifeClient.getInstance().launchCarlifeApp("music");
                    return;
                case 3:
                    CarLifeClient.getInstance().launchCarlifeApp(LAUNCH_PHONE);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void previous() {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i(this.TAG + " previous checkReady:" + checkReady);
        if (checkReady) {
            CarLifeClient.getInstance().music_previous();
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void next() {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i(this.TAG + " next checkReady:" + checkReady);
        if (checkReady) {
            CarLifeClient.getInstance().music_next();
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void play() {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i(this.TAG + " play checkReady:" + checkReady);
        if (checkReady) {
            CarLifeClient.getInstance().music_play();
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void pause() {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i(this.TAG + " pause checkReady:" + checkReady);
        if (checkReady) {
            CarLifeClient.getInstance().music_pause();
        }
    }

    public void setAndroidConnection(boolean z) {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i(this.TAG + " setAndroidConnection checkReady:" + checkReady);
        if (checkReady) {
            CarLifeClient.getInstance().setAndroidConnection(false, "1060");
            if (z) {
                CarLifeClient.getInstance().setAndroidConnection(z, "4817|13211|1060");
            } else {
                CarLifeClient.getInstance().setAndroidConnection(true, "1060");
            }
        }
    }

    public void setiPhoneConnection(boolean z) {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i("setiPhoneConnection checkReady:" + checkReady);
        if (checkReady) {
            CarLifeClient.getInstance().setiPhoneConnection(z);
        }
    }
}
