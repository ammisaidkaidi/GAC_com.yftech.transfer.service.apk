package com.yftech.transfer.phonelink.productdevice;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.hardware.usb.UsbDevice;
import android.provider.Settings;
import android.util.Log;
import com.utils.IphoneLinkUtils;
import com.utils.LogUtil;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.car.data.CarData;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.transfer.callback.BluetoothPhoneCallBackImp;
import com.yftech.transfer.callback.CarDataCallBackImp;
import com.yftech.transfer.callback.CarMiscListenerImp;
import com.yftech.transfer.callback.CarPowerListenerImp;
import com.yftech.transfer.phonelink.CarLifeLinkService;
import com.yftech.transfer.phonelink.CarPhoneLinkService;
import com.yftech.transfer.phonelink.carlife.CarLifeClient;
import com.yftech.transfer.phonelink.helper.BasicLinkHelper;
import com.yftech.transfer.phonelink.helper.CarLifeLinkHelper;
import com.yftech.transfer.phonelink.helper.CarPlayLinkHelper;
import com.yftech.transfer.phonelink.helper.HiCarLinkHelper;
import com.yftech.transfer.phonelink.manager.BlueToothManager;
import com.yftech.transfer.phonelink.manager.CarControlManager;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.phonelink.manager.UsbLinkManager;
import com.yftech.transfer.phonelink.receiver.AvmserviceReceiver;
import com.yftech.transfer.service.CarAppList;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.utils.AppUtil;
import com.yftech.transfer.service.utils.SettingsUtil;
import com.yftech.vehicle.internal.adapter.ICarMisc;
import com.yftech.vehicle.internal.adapter.ICarPower;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class CA1105Helper extends BasicProductDevice {
    public static final String KEY_CA1105_ANDROID_PRIORITY_CONNECT = "KEY_CA1105_ANDROID_PRIORITY_CONNECT";
    public static final String KEY_CA1105_IOS_PRIORITY_CONNECT = "KEY_CA1105_IOS_PRIORITY_CONNECT";
    public static final String KEY_CA1105_IS_PHONELINK_ENABLE = "KEY_CA1105_IS_PHONELINK_ENABLE";
    public static final String KEY_POWER_STANDBY = "yf.false.standby.state";
    private static final String PACKAGE_MEDIA = "com.yftech.multimedia";
    public static final String VALUE_CA1105_PHONELINK_DISABLE = "DISABLE";
    public static final String VALUE_CA1105_PHONELINK_ENABLE = "ENABLE";
    public static final int VALUE_POWER_STANDBY_OFF = 0;
    public static final int VALUE_POWER_STANDBY_ON = 1;
    private Disposable btSwitchD;
    private Disposable carLifeD;
    private Disposable carplayUploadTimer;
    private UsbDevice curPhoneLinkUsbDevice;
    private Disposable iosChangedModeD;
    private boolean isAvm;
    private boolean isBlueToothEnable;
    private Disposable mDisposable;
    private Disposable resetUsbD;
    private Context context = CarTransferApplication.context;
    private String prePhoneLink = SchedulerSupport.NONE;
    private int curPhoneType = -1;
    private AvmserviceReceiver.AvmserviceObservor avmserviceObservor = new AvmserviceReceiver.AvmserviceObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.1
        @Override // com.yftech.transfer.phonelink.receiver.AvmserviceReceiver.AvmserviceObservor
        public void onChanged(int i, boolean z) {
            LogUtil.i("avmserviceObservor onChanged:" + i + "," + z);
            CA1105Helper.this.isAvm = z;
            if (z) {
                ((CarPlayLinkHelper) LinkHelperManager.ins.get("carplay")).muteVR(true);
                LinkHelperManager.ins.closeVR();
            } else {
                ((CarPlayLinkHelper) LinkHelperManager.ins.get("carplay")).muteVR(false);
            }
        }
    };
    private HiCarLinkHelper.HiCarObservor hiCarObservor = new HiCarLinkHelper.HiCarObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.2
        @Override // com.yftech.transfer.phonelink.helper.HiCarLinkHelper.HiCarObservor
        public void onServiceConnected() {
            char c;
            super.onServiceConnected();
            if (CarControlManager.ins.isPowerStateShouldAblePhoneLink()) {
                boolean isPhoneLinkEnable = CA1105Helper.this.isPhoneLinkEnable();
                boolean shouldEnablePhoneLink = CarControlManager.ins.shouldEnablePhoneLink();
                LogUtil.i("hiCarObservor isPhoneLinkEnable:" + isPhoneLinkEnable + ",shouldEnablePhoneLink:" + shouldEnablePhoneLink);
                if (!isPhoneLinkEnable || !shouldEnablePhoneLink) {
                    LinkHelperManager.ins.get("hicar").enable(false);
                    return;
                }
                String androidPriorityLink = CA1105Helper.this.getAndroidPriorityLink();
                LogUtil.i("hiCarObservor androidpriorityLink:" + androidPriorityLink);
                int hashCode = androidPriorityLink.hashCode();
                if (hashCode != 99272499) {
                    if (hashCode == 554181840 && androidPriorityLink.equals("carlife")) {
                        c = 0;
                    }
                    c = 65535;
                } else {
                    if (androidPriorityLink.equals("hicar")) {
                        c = 2;
                    }
                    c = 65535;
                }
                if (c == 0) {
                    LinkHelperManager.ins.get("hicar").enable(false);
                } else {
                    LinkHelperManager.ins.get("hicar").enable(true);
                }
            }
        }
    };
    private CarPlayLinkHelper.CarPlayObservor carPlayObservor = new CarPlayLinkHelper.CarPlayObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.3
        @Override // com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.CarPlayObservor
        public void onServiceConnected() {
            super.onServiceConnected();
            if (CarControlManager.ins.isPowerStateShouldAblePhoneLink()) {
                boolean isPhoneLinkEnable = CA1105Helper.this.isPhoneLinkEnable();
                boolean shouldEnablePhoneLink = CarControlManager.ins.shouldEnablePhoneLink();
                LogUtil.i("carPlayObservor isPhoneLinkEnable:" + isPhoneLinkEnable + ",rearGearState:" + CarControlManager.ins.getRearGearState() + ",shouldEnablePhoneLink:" + shouldEnablePhoneLink);
                if (!isPhoneLinkEnable || !shouldEnablePhoneLink) {
                    LinkHelperManager.ins.get("carplay").enable(false);
                    return;
                }
                String iOSPriorityLink = CA1105Helper.this.getIOSPriorityLink();
                LogUtil.i("carPlayObservor iosPriorityLink:" + iOSPriorityLink);
                if ("carplay".equals(iOSPriorityLink)) {
                    LinkHelperManager.ins.get("carplay").enable(true);
                } else {
                    LinkHelperManager.ins.get("carplay").enable(false);
                }
            }
        }
    };
    private CarLifeClient.CarLifeObservor carLifeObservor = new CarLifeClient.CarLifeObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.4
        @Override // com.yftech.transfer.phonelink.carlife.CarLifeClient.CarLifeObservor
        public void onServiceConnected() {
            super.onServiceConnected();
            if (CarControlManager.ins.isPowerStateShouldAblePhoneLink()) {
                boolean isPhoneLinkEnable = CA1105Helper.this.isPhoneLinkEnable();
                boolean shouldEnablePhoneLink = CarControlManager.ins.shouldEnablePhoneLink();
                LogUtil.i("carLifeObservor isPhoneLinkEnable:" + isPhoneLinkEnable + ", shouldEnablePhoneLink:" + shouldEnablePhoneLink);
                if (!isPhoneLinkEnable || !shouldEnablePhoneLink) {
                    LinkHelperManager.ins.get("carlife").enable(false);
                } else {
                    LinkHelperManager.ins.get("carlife").enable(true);
                }
            }
        }
    };
    private CarLifeClient.CarLifeObservor carLifeSetAndroidObservor = new CarLifeClient.CarLifeObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.5
        @Override // com.yftech.transfer.phonelink.carlife.CarLifeClient.CarLifeObservor
        public void onServiceConnected() {
            char c;
            String androidPriorityLink = CA1105Helper.this.getAndroidPriorityLink();
            LogUtil.i("carLifeSetAndroidObservor androidpriorityLink:" + androidPriorityLink);
            CarLifeLinkHelper carLifeLinkHelper = (CarLifeLinkHelper) LinkHelperManager.ins.get("carlife");
            int hashCode = androidPriorityLink.hashCode();
            if (hashCode != 99272499) {
                if (hashCode == 554181840 && androidPriorityLink.equals("carlife")) {
                    c = 0;
                }
                c = 65535;
            } else {
                if (androidPriorityLink.equals("hicar")) {
                    c = 2;
                }
                c = 65535;
            }
            if (c == 0) {
                carLifeLinkHelper.setAndroidConnection(false);
            } else {
                carLifeLinkHelper.setAndroidConnection(true);
            }
        }
    };
    private CarMiscListenerImp.CarMiscObservor carMiscObservor = new CarMiscListenerImp.CarMiscObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.6
        private Disposable resumeDelayD;

        @Override // com.yftech.transfer.callback.CarMiscListenerImp.CarMiscObservor
        public void onTBoxEcallStateChanged(ICarMisc.ECallState eCallState) {
            LogUtil.i("onTBoxEcallStateChanged: " + eCallState);
            if (ICarMisc.ECallState.NO_MESSAGE == eCallState) {
                return;
            }
            if (this.resumeDelayD != null) {
                this.resumeDelayD.dispose();
            }
            if (ICarMisc.ECallState.CALL_LAUNCH == eCallState) {
                LinkHelperManager.ins.pauseForResume();
            }
            if (ICarMisc.ECallState.CALL_END == eCallState || ICarMisc.ECallState.FAILURE == eCallState || ICarMisc.ECallState.MALFUNCTION == eCallState) {
                resumeDelay();
            }
        }

        private void resumeDelay() {
            if (this.resumeDelayD != null) {
                this.resumeDelayD.dispose();
            }
            this.resumeDelayD = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.6.1
                @Override // io.reactivex.functions.Consumer
                public void accept(Long l) {
                    LinkHelperManager.ins.resume();
                }
            }, 900L);
        }
    };
    private BluetoothPhoneCallBackImp.BluetoothPhoneObservor bluetoothPhoneObservor = new BluetoothPhoneCallBackImp.BluetoothPhoneObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.7
        @Override // com.yftech.transfer.callback.BluetoothPhoneCallBackImp.BluetoothPhoneObservor
        public void onBluetoothPhoneCallStateChanged(List<PhoneCall> list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            LogUtil.i("onBluetoothPhoneCallStateChanged:" + list.size());
            for (int i = 0; i < list.size(); i++) {
                int callState = list.get(i).getCallState();
                LogUtil.i("onBluetoothPhoneCallStateChanged:" + i + "," + callState);
                String androidPriorityLink = CA1105Helper.this.getAndroidPriorityLink();
                if (callState == 4) {
                    if ("hicar".equals(androidPriorityLink)) {
                        LinkHelperManager.ins.get("hicar").enable(false);
                    }
                } else if (callState == 7 && "hicar".equals(androidPriorityLink)) {
                    LinkHelperManager.ins.get("hicar").enable(true);
                }
            }
        }
    };
    private CarPowerListenerImp.CarPowerObservor carPowerObservor = new CarPowerListenerImp.CarPowerObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.8
        private boolean isLostPowerAction;
        private UsbLinkManager.OnCA1105LostUsbPowerListener onCA1105LostUsbPowerListener = new UsbLinkManager.OnCA1105LostUsbPowerListener() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.8.1
            @Override // com.yftech.transfer.phonelink.manager.UsbLinkManager.OnCA1105LostUsbPowerListener
            public void onFinish() {
                AnonymousClass8.this.isLostPowerAction = true;
                Intent intent = new Intent("yftech_media_REMOVED_UDISK");
                intent.setPackage("com.yftech.media.service");
                CarTransferApplication.context.sendBroadcast(intent);
            }
        };
        private Disposable powerLaterD;
        private ICarPower.PowerState prePowerState;
        private Disposable usbLostPowerD;

        @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
        public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
            if (ICarPower.PowerMode.ON == powerMode) {
                UsbLinkManager.ins.ca1105ChargedUsbPower();
            }
        }

        @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
        public void onPowerStateChanged(ICarPower.PowerState powerState) {
            if (this.powerLaterD != null) {
                this.powerLaterD.dispose();
            }
            this.powerLaterD = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.8.2
                @Override // io.reactivex.functions.Consumer
                public void accept(Long l) {
                    ICarPower.PowerState powerState2 = CarControlManager.ins.getPowerState();
                    LogUtil.i("onPowerStateChanged prePowerState:" + AnonymousClass8.this.prePowerState + ",state:" + powerState2);
                    if (AnonymousClass8.this.prePowerState == null || AnonymousClass8.this.prePowerState != powerState2) {
                        AnonymousClass8.this.prePowerState = powerState2;
                        if (CA1105Helper.this.resetUsbD != null) {
                            CA1105Helper.this.resetUsbD.dispose();
                        }
                        if (ICarPower.PowerState.STANDBY == powerState2 || ICarPower.PowerState.VOLFAULTSTBY == powerState2) {
                            if (AnonymousClass8.this.usbLostPowerD != null) {
                                AnonymousClass8.this.usbLostPowerD.dispose();
                            }
                            AnonymousClass8.this.isLostPowerAction = false;
                            AnonymousClass8.this.usbLostPowerD = UsbLinkManager.ins.ca1105LostUsbPowerAtTimeWhenStandBy(AnonymousClass8.this.onCA1105LostUsbPowerListener, 6000L);
                            LinkHelperManager.ins.get("hicar").disconnect();
                            LinkHelperManager.ins.get("carlife").disconnect();
                            LinkHelperManager.ins.get("carplay").enable(false);
                            return;
                        }
                        if (ICarPower.PowerState.SYSTEMON == powerState2) {
                            if (AnonymousClass8.this.usbLostPowerD != null) {
                                AnonymousClass8.this.usbLostPowerD.dispose();
                            }
                            UsbLinkManager.ins.ca1105ChargedUsbPower();
                            CA1105Helper.this.carPlayObservor.onServiceConnected();
                            CA1105Helper.this.hiCarObservor.onServiceConnected();
                            CA1105Helper.this.carLifeObservor.onServiceConnected();
                            String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
                            LogUtil.i("onPowerStateChanged systemOn connectedLinkStatus:" + connectedLinkStatus + "，isLostPowerAction:" + AnonymousClass8.this.isLostPowerAction);
                            if (SchedulerSupport.NONE.equals(connectedLinkStatus) && !AnonymousClass8.this.isLostPowerAction) {
                                CA1105Helper.this.resetUsb();
                            }
                        }
                    }
                }
            }, 300L);
        }
    };
    private ContentObserver powerStandbyObserver = new ContentObserver(this.handler) { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.9
        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            int i = SettingsUtil.getInt(CA1105Helper.KEY_POWER_STANDBY);
            LogUtil.i("powerStandbyObserver:" + i);
            if (i == 1) {
                CA1105Helper.this.mute();
                LinkHelperManager.ins.pauseForResume();
                ((CarPlayLinkHelper) LinkHelperManager.ins.get("carplay")).setAudioOff();
            } else {
                CA1105Helper.this.unMute();
                LinkHelperManager.ins.resume();
                ((CarPlayLinkHelper) LinkHelperManager.ins.get("carplay")).setAudioOn();
            }
        }
    };
    private CarDataCallBackImp.CarDataObservor carDataObservor = new CarDataCallBackImp.CarDataObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.10
        @Override // com.yftech.transfer.callback.CarDataCallBackImp.CarDataObservor
        public void onCarDataChanged(CarData carData) {
            CarData.CarDataEntry dataEntry;
            if (carData == null || (dataEntry = carData.getDataEntry(CarDataCallBackImp.COM_ANDROID_SYSTEMUI_ENGINEHOOD_WARNING_OPEN)) == null) {
                return;
            }
            if (dataEntry.getValueBoolean()) {
                LinkHelperManager.ins.closeVR();
                LinkHelperManager.ins.pauseForResume();
                CA1105Helper.this.mute();
            } else {
                LinkHelperManager.ins.resume();
                CA1105Helper.this.unMute();
            }
        }
    };

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickCarLifeWhenHuaWei() {
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickHiCarWhenHuaWei() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mute() {
        boolean isEngineBoxOn = CarControlManager.ins.isEngineBoxOn();
        int i = SettingsUtil.getInt(KEY_POWER_STANDBY);
        if (isEngineBoxOn || i == 1) {
            LinkHelperManager.ins.mute(true);
        }
    }

    public void unMute() {
        boolean isEngineBoxOn = CarControlManager.ins.isEngineBoxOn();
        int i = SettingsUtil.getInt(KEY_POWER_STANDBY);
        if (isEngineBoxOn || i != 0) {
            return;
        }
        LinkHelperManager.ins.mute(false);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void init() {
        boolean checkReady = CarLifeClient.getInstance().checkReady();
        LogUtil.i("init checkcarlifeReady:" + checkReady);
        if (checkReady) {
            this.carLifeObservor.onServiceConnected();
            this.carLifeSetAndroidObservor.onServiceConnected();
        }
        AvmserviceReceiver.registerObservor(this.avmserviceObservor);
        CarPlayLinkHelper.registerObservor(this.carPlayObservor);
        HiCarLinkHelper.registerObservor(this.hiCarObservor);
        CarMiscListenerImp.registerObservor(this.carMiscObservor);
        CarLifeClient.registerObservor(this.carLifeObservor);
        CarLifeClient.registerObservor(this.carLifeSetAndroidObservor);
        CarPowerListenerImp.registerObservor(this.carPowerObservor);
        BluetoothPhoneCallBackImp.registerObservor(this.bluetoothPhoneObservor);
        CarDataCallBackImp.registerObservor(this.carDataObservor);
        putIOSPriorityLink(getIOSPriorityLink());
        CarTransferApplication.context.getContentResolver().registerContentObserver(Settings.System.getUriFor(KEY_POWER_STANDBY), false, this.powerStandbyObserver);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public String getAndroidPriorityLink() {
        String string = SettingsUtil.getString(KEY_CA1105_ANDROID_PRIORITY_CONNECT);
        if (string != null && !string.isEmpty()) {
            return string;
        }
        SettingsUtil.putString(KEY_CA1105_ANDROID_PRIORITY_CONNECT, "hicar");
        return "hicar";
    }

    public void putIOSPriorityLink(String str) {
        LogUtil.i("putIOSPriorityLink type:" + str);
        if (str == null) {
            str = "carplay";
        }
        SettingsUtil.putString(KEY_CA1105_IOS_PRIORITY_CONNECT, str);
        if (this.iosChangedModeD != null) {
            this.iosChangedModeD.dispose();
        }
        this.iosChangedModeD = iosChangedMode(str);
    }

    public void putAndroidPriorityLink(String str) {
        LogUtil.i("putAndroidPriorityLink type:" + str);
        if (str == null) {
            str = "hicar";
        }
        SettingsUtil.putString(KEY_CA1105_ANDROID_PRIORITY_CONNECT, str);
        CarLifeLinkHelper carLifeLinkHelper = (CarLifeLinkHelper) LinkHelperManager.ins.get("carlife");
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != 99272499) {
            if (hashCode == 554181840 && str.equals("carlife")) {
                c = 0;
            }
        } else if (str.equals("hicar")) {
            c = 2;
        }
        if (c == 0) {
            carLifeLinkHelper.setAndroidConnection(false);
            LinkHelperManager.ins.get("hicar").enable(false);
        } else {
            carLifeLinkHelper.setAndroidConnection(true);
            LinkHelperManager.ins.get("hicar").enable(true);
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public String getIOSPriorityLink() {
        String string = SettingsUtil.getString(KEY_CA1105_IOS_PRIORITY_CONNECT);
        if (string != null && !string.isEmpty()) {
            return string;
        }
        SettingsUtil.putString(KEY_CA1105_IOS_PRIORITY_CONNECT, "carplay");
        return "carplay";
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public boolean isAvm() {
        return this.isAvm;
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public boolean isPowerStandBy() {
        int i = SettingsUtil.getInt(KEY_POWER_STANDBY);
        LogUtil.i("isPowerStandBy:" + i);
        return i == 1;
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public boolean isPhoneLinkEnable() {
        String string = SettingsUtil.getString(KEY_CA1105_IS_PHONELINK_ENABLE, VALUE_CA1105_PHONELINK_ENABLE);
        Log.d(this.TAG, "isPhoneLinkEnable: " + string);
        return VALUE_CA1105_PHONELINK_ENABLE.equals(string);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void enablePhoneLink() {
        LogUtil.i("enablePhoneLink()");
        SettingsUtil.putString(KEY_CA1105_IS_PHONELINK_ENABLE, VALUE_CA1105_PHONELINK_ENABLE);
        resetUsb();
        this.carLifeObservor.onServiceConnected();
        this.carPlayObservor.onServiceConnected();
        this.hiCarObservor.onServiceConnected();
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void disablePhoneLink() {
        LogUtil.i("disablePhoneLink()");
        SettingsUtil.putString(KEY_CA1105_IS_PHONELINK_ENABLE, VALUE_CA1105_PHONELINK_DISABLE);
        LinkHelperManager.ins.disable();
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickAndroidPriorityLink(String str) {
        char c;
        Log.i(this.TAG, "pickAndroidPriorityLink:" + str);
        int hashCode = str.hashCode();
        if (hashCode != 99272499) {
            if (hashCode == 554181840 && str.equals("carlife")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals("hicar")) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
                putAndroidPriorityLink(str);
                CarPhoneLinkService.sendAndroidPriorityPhoneLinkChanged(str);
                return;
            default:
                return;
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickIOSPriorityLink(String str) {
        char c;
        Log.i(this.TAG, "pickIOSPriorityLink:" + str);
        int hashCode = str.hashCode();
        if (hashCode != 554181840) {
            if (hashCode == 554303752 && str.equals("carplay")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("carlife")) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                putIOSPriorityLink("carlife");
                CarPhoneLinkService.sendIOSPriorityPhoneLinkChanged("carlife");
                LinkHelperManager.ins.get("carplay").enable(false);
                return;
            case 1:
                putIOSPriorityLink("carplay");
                CarPhoneLinkService.sendIOSPriorityPhoneLinkChanged("carplay");
                LinkHelperManager.ins.get("carplay").enable(true);
                return;
            default:
                return;
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void startPriorityLinkAction() {
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("startPriorityLinkAction connectedLinkStatus:" + connectedLinkStatus);
        if (connectedLinkStatus != null && !SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            LinkHelperManager.ins.get(connectedLinkStatus).connectByUsb();
            return;
        }
        PhoneLink phoneLinkByType = ProductDeviceManager.ins.getPhoneLinkByType();
        LogUtil.i("startPriorityLinkAction phoneLink:" + phoneLinkByType);
        switch (phoneLinkByType.getType()) {
            case 0:
                LinkHelperManager.ins.get("carlife").connectByUsb();
                return;
            case 1:
                BasicLinkHelper basicLinkHelper = LinkHelperManager.ins.get(getIOSPriorityLink());
                if (basicLinkHelper == null) {
                    return;
                }
                basicLinkHelper.connectByUsb();
                return;
            case 2:
                BasicLinkHelper basicLinkHelper2 = LinkHelperManager.ins.get(getAndroidPriorityLink());
                if (basicLinkHelper2 == null) {
                    return;
                }
                basicLinkHelper2.connectByUsb();
                return;
            default:
                return;
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void usbAttached(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return;
        }
        super.usbAttached(usbDevice);
        LogUtil.i("usbAttached curPhoneLinkUsbDevice=" + this.curPhoneLinkUsbDevice);
        if (this.curPhoneLinkUsbDevice == null || this.curPhoneLinkUsbDevice.getSerialNumber() == null || usbDevice.getVendorId() == 6353) {
            int phoneTypeFromHub = UsbLinkManager.ins.getPhoneTypeFromHub(usbDevice);
            LogUtil.i("usbAttached newType:" + phoneTypeFromHub);
            if (-1 == phoneTypeFromHub) {
                boolean isIphoneVid = UsbLinkManager.ins.isIphoneVid(usbDevice.getVendorId());
                String iOSPriorityLink = getIOSPriorityLink();
                LogUtil.i("usbAttached -1:" + isIphoneVid + "," + iOSPriorityLink);
                if (isIphoneVid && "carlife".equals(iOSPriorityLink)) {
                    carlifeAction();
                    return;
                }
                return;
            }
            this.curPhoneType = phoneTypeFromHub;
            this.curPhoneLinkUsbDevice = usbDevice;
            PhoneLink phoneLinkByType = getPhoneLinkByType();
            sendDeviceChangedCallBack(phoneLinkByType);
            boolean isPhoneLinkEnable = isPhoneLinkEnable();
            LogUtil.i("usbAttached phoneLink:" + phoneLinkByType + ", isPhoneLinkEnable:" + isPhoneLinkEnable);
            if (isPhoneLinkEnable && CarControlManager.ins.shouldEnablePhoneLink()) {
                switch (phoneLinkByType.getType()) {
                    case 1:
                        String iOSPriorityLink2 = getIOSPriorityLink();
                        LogUtil.i("usbAttached  PHONE_TYPE_IPHONE iosPriorityLink:" + iOSPriorityLink2);
                        if ("carlife".equals(iOSPriorityLink2)) {
                            LinkHelperManager.ins.get("carplay").enable(false);
                            break;
                        } else if ("carplay".equals(iOSPriorityLink2)) {
                            LinkHelperManager.ins.get("carplay").enable(true);
                            break;
                        }
                        break;
                    case 2:
                        String androidPriorityLink = getAndroidPriorityLink();
                        LogUtil.i("usbAttached  PHONE_TYPE_HUAWEI androidPriorityLink:" + androidPriorityLink);
                        if ("carlife".equals(androidPriorityLink)) {
                            LinkHelperManager.ins.get("hicar").enable(false);
                            break;
                        } else if ("hicar".equals(androidPriorityLink)) {
                            LinkHelperManager.ins.get("hicar").enable(true);
                            break;
                        }
                        break;
                }
                if (this.curPhoneType == 1) {
                    CarLifeLinkService.stub.switched_devicemode(true);
                }
            }
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void usbDetached(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return;
        }
        super.usbDetached(usbDevice);
        LogUtil.i("usbDetached curPhoneLinkUsbDevice=" + this.curPhoneLinkUsbDevice);
        if (this.curPhoneLinkUsbDevice == null) {
            return;
        }
        int vendorId = this.curPhoneLinkUsbDevice.getVendorId();
        int productId = this.curPhoneLinkUsbDevice.getProductId();
        this.curPhoneLinkUsbDevice.getSerialNumber();
        int vendorId2 = usbDevice.getVendorId();
        int productId2 = usbDevice.getProductId();
        usbDevice.getSerialNumber();
        boolean z = vendorId == vendorId2 && productId == productId2;
        LogUtil.i("usbDetached phonelink status:" + LinkHelperManager.ins.getConnectedLinkStatus());
        if (z) {
            if (this.carLifeD != null) {
                this.carLifeD.dispose();
            }
            if (this.curPhoneType == 1) {
                CarLifeLinkService.stub.switched_devicemode(false);
            }
            this.curPhoneType = -1;
            this.curPhoneLinkUsbDevice = null;
            PhoneLink phoneLinkByType = getPhoneLinkByType();
            LogUtil.i("usbDetached link:" + phoneLinkByType);
            sendDeviceChangedCallBack(phoneLinkByType);
        }
    }

    private void sendDeviceChangedCallBack(final PhoneLink phoneLink) {
        if (this.mDisposable != null) {
            this.mDisposable.dispose();
        }
        this.mDisposable = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.11
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) throws Exception {
                CarPhoneLinkService.sendDeviceChangedCallBack(phoneLink);
                String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
                LogUtil.i("sendDeviceChangedCallBack  link:" + phoneLink + ",status:" + connectedLinkStatus);
                CarPhoneLinkService.sendConnectedStatusChanged(connectedLinkStatus);
            }
        }, 1000L);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void phoneLinkChanged() {
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("phoneLinkChanged prePhoneLinkStatus:" + this.prePhoneLink + ",status:" + connectedLinkStatus);
        if (!SchedulerSupport.NONE.equals(connectedLinkStatus) && "carplay".equals(this.prePhoneLink) && !"carplay".equals(connectedLinkStatus)) {
            ((CarPlayLinkHelper) LinkHelperManager.ins.get("carplay")).cancelAutoShow();
        }
        CarPhoneLinkService.sendConnectedStatusChanged(connectedLinkStatus);
        btSwitchLater(connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            this.hiCarObservor.onServiceConnected();
            this.carLifeObservor.onServiceConnected();
            this.carPlayObservor.onServiceConnected();
            CarPhoneLinkService.sendVRStatusChanged(0);
            if (this.carplayUploadTimer != null) {
                this.carplayUploadTimer.dispose();
                return;
            }
            return;
        }
        LinkHelperManager.ins.disableOtherPhoneLink();
        this.prePhoneLink = connectedLinkStatus;
        SettingsUtil.storePreviousPhoneLinkStatus(this.prePhoneLink);
        if ("carplay".equals(connectedLinkStatus)) {
            if (this.carplayUploadTimer != null) {
                this.carplayUploadTimer.dispose();
            }
            this.carplayUploadTimer = AppUtil.interval(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.12
                @Override // io.reactivex.functions.Consumer
                public void accept(Long l) {
                    ((CarPlayLinkHelper) LinkHelperManager.ins.get("carplay")).updateCustomSentence(CarControlManager.ins.getGearPosition(), CarControlManager.ins.getVehicleSpeed());
                }
            }, 500L);
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void resetUsb() {
        if (this.resetUsbD != null) {
            this.resetUsbD.dispose();
        }
        this.resetUsbD = AppUtil.atTimeOnThread(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.13
            /* JADX WARN: Removed duplicated region for block: B:42:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // io.reactivex.functions.Consumer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void accept(Long l) {
                FileOutputStream fileOutputStream;
                Throwable th;
                Exception e;
                StringBuilder sb;
                boolean isUpgrading = CarControlManager.ins.isUpgrading();
                LogUtil.i("ca1105ResetUsb isUpgrading:" + isUpgrading);
                if (isUpgrading) {
                    return;
                }
                ICarPower.PowerState powerState = CarControlManager.ins.getPowerState();
                LogUtil.i("ca1105ResetUsb getPowerState:" + powerState);
                if (powerState != ICarPower.PowerState.SYSTEMON) {
                    return;
                }
                LogUtil.i("ca1105ResetUsb start reset");
                try {
                    fileOutputStream = new FileOutputStream("/sys/carplay/role");
                    try {
                        try {
                            fileOutputStream.write("reset".getBytes());
                            fileOutputStream.flush();
                            LogUtil.i("ca1105ResetUsb complete");
                            try {
                                fileOutputStream.close();
                                LogUtil.i("ca1105ResetUsb close");
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                sb = new StringBuilder();
                                sb.append("ca1105ResetUsb close error:");
                                sb.append(e.getMessage());
                                LogUtil.i(sb.toString());
                            }
                        } catch (Exception e3) {
                            e = e3;
                            e.printStackTrace();
                            LogUtil.e("ca1105ResetUsb error:" + e.getMessage());
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception e4) {
                                    e = e4;
                                    e.printStackTrace();
                                    sb = new StringBuilder();
                                    sb.append("ca1105ResetUsb close error:");
                                    sb.append(e.getMessage());
                                    LogUtil.i(sb.toString());
                                }
                            }
                            LogUtil.i("ca1105ResetUsb close");
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception e5) {
                                e5.printStackTrace();
                                LogUtil.i("ca1105ResetUsb close error:" + e5.getMessage());
                                throw th;
                            }
                        }
                        LogUtil.i("ca1105ResetUsb close");
                        throw th;
                    }
                } catch (Exception e6) {
                    fileOutputStream = null;
                    e = e6;
                } catch (Throwable th3) {
                    fileOutputStream = null;
                    th = th3;
                    if (fileOutputStream != null) {
                    }
                    LogUtil.i("ca1105ResetUsb close");
                    throw th;
                }
            }
        }, 800L);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public PhoneLink getPhoneLinkByType() {
        switch (this.curPhoneType) {
            case 0:
                ArrayList arrayList = new ArrayList(1);
                arrayList.add("carlife");
                return new PhoneLink(0, arrayList);
            case 1:
                ArrayList arrayList2 = new ArrayList(1);
                arrayList2.add("carplay");
                arrayList2.add("carlife");
                return new PhoneLink(1, arrayList2);
            case 2:
                ArrayList arrayList3 = new ArrayList(2);
                arrayList3.add("carlife");
                arrayList3.add("hicar");
                return new PhoneLink(2, arrayList3);
            default:
                ArrayList arrayList4 = new ArrayList(1);
                arrayList4.add(SchedulerSupport.NONE);
                return new PhoneLink(-1, arrayList4);
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void uninit() {
        AvmserviceReceiver.unregisterObservor(this.avmserviceObservor);
        CarPlayLinkHelper.unregisterObservor(this.carPlayObservor);
        HiCarLinkHelper.unregisterObservor(this.hiCarObservor);
        CarMiscListenerImp.unregisterObservor(this.carMiscObservor);
        CarLifeClient.unregisterObservor(this.carLifeObservor);
        CarLifeClient.unregisterObservor(this.carLifeSetAndroidObservor);
        CarPowerListenerImp.unregisterObservor(this.carPowerObservor);
        CarDataCallBackImp.unregisterObservor(this.carDataObservor);
        BluetoothPhoneCallBackImp.unregisterObservor(this.bluetoothPhoneObservor);
        CarTransferApplication.context.getContentResolver().unregisterContentObserver(this.powerStandbyObserver);
    }

    private void btSwitchLater(final String str) {
        if (this.btSwitchD != null) {
            this.btSwitchD.dispose();
        }
        this.btSwitchD = AppUtil.atTimeOnThread(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.14
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) {
                CA1105Helper.this.changeBlueTootchState(str);
            }
        }, 800L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeBlueTootchState(String str) {
        char c;
        Log.i(this.TAG, "changeBlueTootchState status:" + str);
        int hashCode = str.hashCode();
        if (hashCode == 3387192) {
            if (str.equals(SchedulerSupport.NONE)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 99272499) {
            if (hashCode == 554303752 && str.equals("carplay")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals("hicar")) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
                BlueToothManager.ins.setEnable(false);
                return;
            case 2:
                BlueToothManager.ins.setEnable(true);
                return;
            default:
                return;
        }
    }

    private void carlifeAction() {
        if (this.carLifeD != null) {
            this.carLifeD.dispose();
        }
        this.carLifeD = AppUtil.atTimeOnThread(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.15
            /* JADX WARN: Removed duplicated region for block: B:26:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // io.reactivex.functions.Consumer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void accept(Long l) {
                FileOutputStream fileOutputStream;
                Throwable th;
                Exception e;
                LogUtil.i("carlifeAction");
                CA1105Helper.this.setIosMode("carlife");
                try {
                    try {
                        fileOutputStream = new FileOutputStream("/sys/carplay/role");
                        try {
                            try {
                                fileOutputStream.write("role".getBytes());
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                String message = e.getMessage();
                                LogUtil.e("carlifeAction error:" + message);
                                if (message != null && message.contains("EPERM")) {
                                    LogUtil.i("carlifeAction write fail ");
                                }
                                CarPhoneLinkService.sendConnectedFail("carplay", 1);
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } catch (Exception e5) {
                    fileOutputStream = null;
                    e = e5;
                } catch (Throwable th3) {
                    fileOutputStream = null;
                    th = th3;
                    if (fileOutputStream != null) {
                    }
                    throw th;
                }
            }
        }, 200L);
    }

    private Disposable iosChangedMode(final String str) {
        return AppUtil.onThread(new Consumer() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.16
            @Override // io.reactivex.functions.Consumer
            public void accept(Object obj) {
                CA1105Helper.this.setIosMode(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setIosMode(String str) {
        FileOutputStream fileOutputStream;
        Throwable th;
        Exception e;
        char c;
        int hashCode;
        LogUtil.i("iosChangedMode type:" + str);
        try {
            try {
                fileOutputStream = new FileOutputStream("/sys/carplay/carplayenablestatus");
                try {
                    try {
                        fileOutputStream.write(str.getBytes());
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        LogUtil.e("iosChangedMode error:" + e.getMessage());
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        c = 65535;
                        hashCode = str.hashCode();
                        if (hashCode == 554181840) {
                        }
                        switch (c) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } catch (Exception e5) {
            fileOutputStream = null;
            e = e5;
        } catch (Throwable th3) {
            fileOutputStream = null;
            th = th3;
            if (fileOutputStream != null) {
            }
            throw th;
        }
        c = 65535;
        hashCode = str.hashCode();
        if (hashCode == 554181840) {
            if (hashCode == 554303752 && str.equals("carplay")) {
                c = 1;
            }
        } else if (str.equals("carlife")) {
            c = 0;
        }
        switch (c) {
            case 0:
                IphoneLinkUtils.stopIAPD();
                LogUtil.i("iosChangedMode Runtime: stop iapd");
                return;
            case 1:
                IphoneLinkUtils.startIAPD();
                LogUtil.i("iosChangedMode Runtime: start iapd");
                return;
            default:
                return;
        }
    }

    public static Disposable writeDis_ioc_ctrl() {
        return AppUtil.onThread(new Consumer() { // from class: com.yftech.transfer.phonelink.productdevice.CA1105Helper.17
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:37:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r4v10 */
            /* JADX WARN: Type inference failed for: r4v14 */
            /* JADX WARN: Type inference failed for: r4v17 */
            /* JADX WARN: Type inference failed for: r4v18 */
            /* JADX WARN: Type inference failed for: r4v2 */
            /* JADX WARN: Type inference failed for: r4v5, types: [java.io.FileOutputStream] */
            @Override // io.reactivex.functions.Consumer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void accept(Object obj) {
                Throwable th;
                FileOutputStream fileOutputStream;
                Exception e;
                StringBuilder sb;
                LogUtil.i("writeDis_ioc_ctrl start");
                try {
                    try {
                        fileOutputStream = new FileOutputStream("/sys/module/usbcore/parameters/dis_ioc_ctrl");
                        try {
                            fileOutputStream.write(CarAppList.MediaPage.PAGE_AM.getBytes());
                            fileOutputStream.flush();
                            LogUtil.i("writeDis_ioc_ctrl complete");
                            try {
                                fileOutputStream.close();
                                LogUtil.i("writeDis_ioc_ctrl close");
                                obj = fileOutputStream;
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                sb = new StringBuilder();
                                sb.append("writeDis_ioc_ctrl close error:");
                                sb.append(e.getMessage());
                                LogUtil.i(sb.toString());
                            }
                        } catch (Exception e3) {
                            e = e3;
                            e.printStackTrace();
                            LogUtil.e("writeDis_ioc_ctrl error:" + e.getMessage());
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Exception e4) {
                                    e = e4;
                                    e.printStackTrace();
                                    sb = new StringBuilder();
                                    sb.append("writeDis_ioc_ctrl close error:");
                                    sb.append(e.getMessage());
                                    LogUtil.i(sb.toString());
                                }
                            }
                            LogUtil.i("writeDis_ioc_ctrl close");
                            obj = fileOutputStream;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (obj != 0) {
                            try {
                                obj.close();
                            } catch (Exception e5) {
                                e5.printStackTrace();
                                LogUtil.i("writeDis_ioc_ctrl close error:" + e5.getMessage());
                                throw th;
                            }
                        }
                        LogUtil.i("writeDis_ioc_ctrl close");
                        throw th;
                    }
                } catch (Exception e6) {
                    fileOutputStream = null;
                    e = e6;
                } catch (Throwable th3) {
                    obj = 0;
                    th = th3;
                    if (obj != 0) {
                    }
                    LogUtil.i("writeDis_ioc_ctrl close");
                    throw th;
                }
            }
        });
    }
}
