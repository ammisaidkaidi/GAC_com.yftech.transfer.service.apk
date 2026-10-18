package com.yftech.transfer.phonelink.helper;

import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.os.IBinder;
import android.util.Log;
import com.tencent.taes.api.moss.util.SkillCommand;
import com.utils.LogUtil;
import com.yftech.car.phonelink.CarLinkDevice;
import com.yftech.hicar.sdk.ConnectStateEntity;
import com.yftech.hicar.sdk.HiCarDeviceEntity;
import com.yftech.hicar.sdk.HiCarStateConst;
import com.yftech.hicar.sdk.IBindCallBack;
import com.yftech.hicar.sdk.IStateChange;
import com.yftech.hicar.sdk.YFHiCarInterface;
import com.yftech.transfer.callback.BluetoothSettingsCallBackImp;
import com.yftech.transfer.phonelink.CarPhoneLinkMediaService;
import com.yftech.transfer.phonelink.CarPhoneLinkService;
import com.yftech.transfer.phonelink.manager.BlueToothManager;
import com.yftech.transfer.phonelink.manager.CarControlManager;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.utils.AppUtil;
import com.yftech.transfer.service.utils.SettingsUtil;
import com.yftech.vehicle.internal.adapter.ICarPower;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class HiCarLinkHelper extends BasicLinkHelper {
    private static final HashSet<HiCarObservor> observors = new HashSet<>();
    private String curPhoneName;
    private DefalutBindCallBack defalutBindCallBack = new DefalutBindCallBack() { // from class: com.yftech.transfer.phonelink.helper.HiCarLinkHelper.1
        @Override // com.yftech.transfer.phonelink.helper.HiCarLinkHelper.DefalutBindCallBack, com.yftech.hicar.sdk.IBindCallBack
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtil.i("onServiceConnected");
        }

        @Override // com.yftech.transfer.phonelink.helper.HiCarLinkHelper.DefalutBindCallBack, com.yftech.hicar.sdk.IBindCallBack
        public void onBindingDied(ComponentName componentName) {
            LogUtil.i("onBindingDied");
            YFHiCarInterface.getInstance().unBindService(CarTransferApplication.context);
            YFHiCarInterface.getInstance().bindService(CarTransferApplication.context, this);
        }
    };
    private IStateChange callBack = new IStateChange() { // from class: com.yftech.transfer.phonelink.helper.HiCarLinkHelper.2
        @Override // com.yftech.hicar.sdk.IStateChange
        public void initSuccess() {
            LogUtil.i("initSuccess()");
            Iterator it = HiCarLinkHelper.observors.iterator();
            while (it.hasNext()) {
                ((HiCarObservor) it.next()).onServiceConnected();
            }
        }

        @Override // com.yftech.hicar.sdk.IStateChange
        public void connectStateChange(boolean z) {
            LogUtil.i("callBack connectStateChange:" + z);
            if (!z) {
                CarPhoneLinkMediaService.sendMediaInfoChanged(null);
                ProductDeviceManager.ins.onVRStatusChanged(0);
                ProductDeviceManager.ins.onCallStatusChanged(0);
            }
            ConnectStateEntity connectState = YFHiCarInterface.getInstance().connectState();
            LogUtil.i("connectStateChange connectStateEntity:" + connectState);
            if (connectState != null) {
                HiCarLinkHelper.this.curPhoneName = connectState.getDeviceName();
            }
            ProductDeviceManager.ins.phoneLinkChanged();
        }

        @Override // com.yftech.hicar.sdk.IStateChange
        public void callStateChange(int i) {
            LogUtil.i("callBack callStateChange:" + i);
            int i2 = 0;
            switch (i) {
                case 1:
                    i2 = 1;
                    break;
                case 2:
                    i2 = 3;
                    break;
            }
            ProductDeviceManager.ins.onCallStatusChanged(i2);
        }

        @Override // com.yftech.hicar.sdk.IStateChange
        public void voiceStateChange(boolean z) {
            LogUtil.i("callBack voiceStateChange b:" + z);
            ProductDeviceManager.ins.onVRStatusChanged(z ? 1 : 0);
        }

        @Override // com.yftech.hicar.sdk.IStateChange
        public void deviceListChange() {
            List<CarLinkDevice> carLinkDeviceList = HiCarLinkHelper.this.getCarLinkDeviceList();
            LogUtil.i("deviceListChange:" + carLinkDeviceList);
            CarPhoneLinkService.sendCarLinkDeviceListChanged("hicar", carLinkDeviceList);
        }

        @Override // com.yftech.hicar.sdk.IStateChange
        public void reConnectStateChange(boolean z, String str) {
            LogUtil.i("reConnectStateChange isReconnect:" + z + ",deviceName:" + str);
            CarPhoneLinkService.sendHicarReConnectStateChange(z, str);
        }
    };
    private BluetoothSettingsCallBackImp.BluetoothSettingsObservor bluetoothSettingsObservor = new BluetoothSettingsCallBackImp.BluetoothSettingsObservor() { // from class: com.yftech.transfer.phonelink.helper.HiCarLinkHelper.3
        @Override // com.yftech.transfer.callback.BluetoothSettingsCallBackImp.BluetoothSettingsObservor
        public void onBluetoothConnectStateChanged(BluetoothDevice bluetoothDevice, int i) {
        }
    };

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public List<CarLinkDevice> getAvailableCarLinkDeviceList() {
        return null;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public CarLinkDevice getConnectedCarLinkDeviceList() {
        return null;
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public String linkName() {
        return "hicar";
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper, com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public String getPhoneName() {
        return this.curPhoneName == null ? "" : this.curPhoneName;
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public boolean isConnected() {
        ConnectStateEntity connectState = YFHiCarInterface.getInstance().connectState();
        LogUtil.i("isConnected connectStateEntity:" + connectState);
        if (connectState == null) {
            return false;
        }
        if (connectState.isConnected()) {
            SettingsUtil.storeHuaWeiPhoneLinkPicked("hicar");
        }
        return connectState.isConnected();
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void init() {
        LogUtil.i("init()");
        YFHiCarInterface.getInstance().bindService(CarTransferApplication.context, this.defalutBindCallBack);
        YFHiCarInterface.getInstance().registerChangeListener(this.callBack);
        BluetoothSettingsCallBackImp.registerObservor(this.bluetoothSettingsObservor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
    
        if (r4.equals(com.yftech.transfer.phonelink.manager.ProductDeviceManager.PRODUCT_CB_IHU12_C1) != false) goto L14;
     */
    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void connectByUsb() {
        LogUtil.i("connectByUsb");
        char c = 1;
        enable(true);
        AppUtil.startHiCarUsbConnect(CarTransferApplication.context);
        ProductDeviceManager.ins.storeHiCarWhenHuaWei();
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        int hashCode = curProductDevice.hashCode();
        if (hashCode != 201076150) {
            if (hashCode == 1292373688 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
                LinkHelperManager.ins.get("carlife").enable(false);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
    
        if (r4.equals(com.yftech.transfer.phonelink.manager.ProductDeviceManager.PRODUCT_CB_IHU12_C1) != false) goto L14;
     */
    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void connectByWireless() {
        LogUtil.i("connectByWireless");
        char c = 1;
        enable(true);
        ProductDeviceManager.ins.storeHiCarWhenHuaWei();
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        int hashCode = curProductDevice.hashCode();
        if (hashCode != 201076150) {
            if (hashCode == 1292373688 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
                LinkHelperManager.ins.get("carlife").enable(false);
                return;
            default:
                return;
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public void disconnect() {
        ICarPower.PowerMode powerMode = CarControlManager.ins.getPowerMode();
        ICarPower.PowerState powerState = CarControlManager.ins.getPowerState();
        boolean isBlueToothConnected = BlueToothManager.ins.isBlueToothConnected();
        LogUtil.i("disconnect powerMode:" + powerMode);
        LogUtil.i("disconnect powerState:" + powerState);
        LogUtil.i("disconnect blueToothConnected:" + isBlueToothConnected);
        boolean z = ((powerMode == ICarPower.PowerMode.OFF) || (powerState == ICarPower.PowerState.SLEEP || powerState == ICarPower.PowerState.VOLFAULTSTBY || powerState == ICarPower.PowerState.STANDBY) || isBlueToothConnected) ? false : true;
        LogUtil.i("disconnect isUserManual:" + z);
        LogUtil.i("disconnect result:" + YFHiCarInterface.getInstance().disConnectDevice(z));
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        char c = 65535;
        int hashCode = curProductDevice.hashCode();
        if (hashCode != 201076150) {
            if (hashCode == 1292373688 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CBIHU12)) {
                c = 1;
            }
        } else if (curProductDevice.equals(ProductDeviceManager.PRODUCT_CB_IHU12_C1)) {
            c = 0;
        }
        switch (c) {
            case 0:
            case 1:
                enable(false);
                return;
            default:
                return;
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void enable(boolean z) {
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        if (((curProductDevice.hashCode() == 1979690371 && curProductDevice.equals(ProductDeviceManager.PRODUCT_CA1105)) ? (char) 0 : (char) 65535) != 0) {
            boolean isHicarPresent = CarControlManager.ins.isHicarPresent();
            LogUtil.i("enable isHicarPresent:" + isHicarPresent);
            if (!isHicarPresent) {
                LogUtil.i("enable result:" + YFHiCarInterface.getInstance().enableUSB(false));
                return;
            }
        }
        LogUtil.i("enable isEnable:" + z);
        LogUtil.i("enable result:" + YFHiCarInterface.getInstance().enableUSB(z));
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void startVR() {
        LogUtil.i("startVR result:" + YFHiCarInterface.getInstance().voiceSwitch(true));
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void closeVR() {
        LogUtil.i("closeVR result:" + YFHiCarInterface.getInstance().voiceSwitch(false));
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public int getVRStatus() {
        boolean isVoiceWakeUp = YFHiCarInterface.getInstance().isVoiceWakeUp();
        LogUtil.i("getVRStatus,isVoiceWakeUp:" + isVoiceWakeUp);
        return isVoiceWakeUp ? 1 : 0;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void acceptPhone() {
        LogUtil.i("acceptPhone result:" + YFHiCarInterface.getInstance().callSwitch(true));
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void rejectPhone() {
        LogUtil.i("rejectPhone result:" + YFHiCarInterface.getInstance().callSwitch(false));
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void starCallPage() {
        LogUtil.i("starCallPage result:" + YFHiCarInterface.getInstance().mainPageSwitch(HiCarStateConst.PAGE_TYPE_TEL));
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public int getCallStatus() {
        if (!isConnected()) {
            return 0;
        }
        int callState = YFHiCarInterface.getInstance().callState();
        Log.i(this.TAG, "getCallStatus:" + callState);
        switch (callState) {
            case 0:
            default:
                return 0;
            case 1:
                return 1;
            case 2:
                return 3;
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void mute(boolean z) {
        CarControlManager.ins.mute(24, z);
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void startPage(int i) {
        LogUtil.i("startPage:" + i);
        switch (i) {
            case 0:
                YFHiCarInterface.getInstance().mainPageSwitch(HiCarStateConst.PAGE_TYPE_HOME);
                return;
            case 1:
                YFHiCarInterface.getInstance().mainPageSwitch(HiCarStateConst.PAGE_TYPE_NAV);
                return;
            case 2:
                YFHiCarInterface.getInstance().mainPageSwitch(HiCarStateConst.PAGE_TYPE_MEDIA);
                return;
            case 3:
                YFHiCarInterface.getInstance().mainPageSwitch(HiCarStateConst.PAGE_TYPE_TEL);
                return;
            default:
                return;
        }
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public List<CarLinkDevice> getCarLinkDeviceList() {
        ArrayList arrayList = new ArrayList();
        List<HiCarDeviceEntity> deviceList = YFHiCarInterface.getInstance().getDeviceList();
        if (deviceList == null || deviceList.isEmpty()) {
            return arrayList;
        }
        for (HiCarDeviceEntity hiCarDeviceEntity : deviceList) {
            CarLinkDevice carLinkDevice = new CarLinkDevice();
            carLinkDevice.setPhoneType("hicar");
            carLinkDevice.setDeviceId(hiCarDeviceEntity.getPhoneId());
            carLinkDevice.setDeviceName(hiCarDeviceEntity.getPhoneName());
            carLinkDevice.setConnectedStatus(hiCarDeviceEntity.isConnected() ? 1 : 0);
            carLinkDevice.setMacAddress(hiCarDeviceEntity.getPhoneBrMac());
            switch (hiCarDeviceEntity.getConnectType()) {
                case -1:
                    carLinkDevice.setConnectedType(2);
                    break;
                case 0:
                    carLinkDevice.setConnectedType(0);
                    break;
                case 1:
                    carLinkDevice.setConnectedType(1);
                    break;
            }
            arrayList.add(carLinkDevice);
            LogUtil.i("getCarLinkDeviceList device:" + carLinkDevice);
        }
        return arrayList;
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void connectCarLinkDevice(CarLinkDevice carLinkDevice) {
        if (carLinkDevice == null) {
            return;
        }
        requestReConnect(carLinkDevice.getMacAddress());
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void forgetCarLinkDevice(CarLinkDevice carLinkDevice) {
        LogUtil.i("forgetCarLinkDevice:" + carLinkDevice);
        YFHiCarInterface.getInstance().deleteDevice(carLinkDevice.getDeviceId());
    }

    @Override // com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void uninit() {
        YFHiCarInterface.getInstance().unregisterChangeListener(this.callBack);
        BluetoothSettingsCallBackImp.unregisterObservor(this.bluetoothSettingsObservor);
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void previous() {
        LogUtil.i(SkillCommand.Previous);
        YFHiCarInterface.getInstance().previousMedia();
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void next() {
        LogUtil.i("next");
        YFHiCarInterface.getInstance().nextMedia();
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void play() {
        LogUtil.i("play");
        YFHiCarInterface.getInstance().mediaSwitch(true);
    }

    @Override // com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void pause() {
        LogUtil.i("pause");
        YFHiCarInterface.getInstance().mediaSwitch(false);
    }

    public boolean supportWireless() {
        boolean supportWireless = YFHiCarInterface.getInstance().supportWireless();
        LogUtil.i("supportWireless");
        return supportWireless;
    }

    public boolean requestReConnect(String str) {
        boolean requestReConnect = YFHiCarInterface.getInstance().requestReConnect(str);
        LogUtil.i("requestReConnect address:" + str + ",result:" + requestReConnect);
        return requestReConnect;
    }

    public boolean requestNewConnect() {
        boolean requestNewConnect = YFHiCarInterface.getInstance().requestNewConnect();
        LogUtil.i("requestNewConnect result:" + requestNewConnect);
        return requestNewConnect;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class DefalutBindCallBack implements IBindCallBack {
        @Override // com.yftech.hicar.sdk.IBindCallBack
        public void onBindingDied(ComponentName componentName) {
        }

        @Override // com.yftech.hicar.sdk.IBindCallBack
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override // com.yftech.hicar.sdk.IBindCallBack
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private DefalutBindCallBack() {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class HiCarObservor {
        public void onServiceConnected() {
            LogUtil.i("HiCarObservor onServiceConnected");
        }
    }

    public static void registerObservor(HiCarObservor hiCarObservor) {
        observors.add(hiCarObservor);
    }

    public static void unregisterObservor(HiCarObservor hiCarObservor) {
        observors.remove(hiCarObservor);
    }

    public static boolean isregisterObservor(HiCarObservor hiCarObservor) {
        return observors.contains(hiCarObservor);
    }
}
