package com.yftech.transfer.phonelink.productdevice;

import android.annotation.SuppressLint;
import android.database.ContentObserver;
import android.hardware.usb.UsbDevice;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.support.annotation.NonNull;
import com.tencent.taes.framework.server.connect.BaseServiceConnection;
import com.utils.CarPlayUtils;
import com.utils.LogUtil;
import com.utils.WIfiUtils;
import com.yftech.car.phonelink.PhoneLink;
import com.yftech.transfer.callback.CarPowerListenerImp;
import com.yftech.transfer.phonelink.CarPhoneLinkService;
import com.yftech.transfer.phonelink.carlife.CarLifeClient;
import com.yftech.transfer.phonelink.helper.BasicLinkHelper;
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
import com.yftech.vehicle.internal.adapter.ICarPower;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class CBIHU12Helper extends BasicProductDevice {
    private static final String KEY_BOOT_UI_ISSHOW = "boot_warn_ui";
    private static final int MSG_SEND_CARPLAY = 0;
    private static final int MSG_SEND_UNPLOADINS = 1;
    private static final int VALUE_BOOT_UI_HIDE = 0;
    private static final int VALUE_BOOT_UI_SHOW = 1;
    private Disposable accOffWhenCarplayCertificateOnD;
    private boolean isAvm;
    private boolean isResetUsbIng;
    private Disposable mPowerLaterDisposable;
    private long sendCarplayMsgTime;
    private String prePhoneLink = SchedulerSupport.NONE;
    protected int curPhoneType = -1;

    @SuppressLint({"HandlerLeak"})
    private Handler mHandler = new Handler() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
            switch (message.what) {
                case 0:
                    long currentTimeMillis = System.currentTimeMillis() - CBIHU12Helper.this.sendCarplayMsgTime;
                    if (Math.abs(currentTimeMillis) < 500) {
                        int i = (int) (500 - currentTimeMillis);
                        if (CBIHU12Helper.this.mHandler != null) {
                            CBIHU12Helper.this.mHandler.sendEmptyMessageDelayed(0, i);
                            return;
                        }
                        return;
                    }
                    carPlayLinkHelper.updateCustomSentence(CarControlManager.ins.getGearPosition(), CarControlManager.ins.getVehicleSpeed());
                    carPlayLinkHelper.updateLocationInfo();
                    if ("carplay".equals(LinkHelperManager.ins.getConnectedLinkStatus())) {
                        CBIHU12Helper.this.sendCarPlayMsg();
                        return;
                    }
                    return;
                case 1:
                    String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
                    carPlayLinkHelper.uploadINS();
                    if ("carplay".equals(connectedLinkStatus)) {
                        CBIHU12Helper.this.mHandler.sendEmptyMessageDelayed(1, 20L);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private AvmserviceReceiver.AvmserviceObservor avmserviceObservor = new AvmserviceReceiver.AvmserviceObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.2
        @Override // com.yftech.transfer.phonelink.receiver.AvmserviceReceiver.AvmserviceObservor
        public void onChanged(int i, boolean z) {
            LogUtil.i("avmserviceObservor onChanged:" + i + "," + z);
            CBIHU12Helper.this.isAvm = z;
            LogUtil.i("avmserviceObservor muteEnable:" + CarControlManager.ins.getKEY_KEEP_MUTE_WARNING_ENABLE());
            if (z) {
                return;
            }
            LinkHelperManager.ins.mute(false);
        }
    };
    private ContentObserver systemUIBootTipObserver = new ContentObserver(this.handler) { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.3
        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            LogUtil.i("onChange:" + SettingsUtil.getInt(CBIHU12Helper.KEY_BOOT_UI_ISSHOW));
            CBIHU12Helper.this.phoneLinkInit("hicar");
            CBIHU12Helper.this.phoneLinkInit("carplay");
            CBIHU12Helper.this.phoneLinkInit("carlife");
        }
    };
    private HiCarLinkHelper.HiCarObservor hiCarObservor = new HiCarLinkHelper.HiCarObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.4
        @Override // com.yftech.transfer.phonelink.helper.HiCarLinkHelper.HiCarObservor
        public void onServiceConnected() {
            super.onServiceConnected();
            LogUtil.i("hiCarObservor onServiceConnected");
            CBIHU12Helper.this.phoneLinkInit("hicar");
        }
    };
    private CarPlayLinkHelper.CarPlayObservor carPlayObservor = new CarPlayLinkHelper.CarPlayObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.5
        @Override // com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.CarPlayObservor
        public void onServiceConnected() {
            super.onServiceConnected();
            LogUtil.i("carPlayObservor onServiceConnected");
            CBIHU12Helper.this.phoneLinkInit("carplay");
        }
    };
    private CarLifeClient.CarLifeObservor carLifeObservor = new CarLifeClient.CarLifeObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.6
        @Override // com.yftech.transfer.phonelink.carlife.CarLifeClient.CarLifeObservor
        public void onServiceConnected() {
            super.onServiceConnected();
            LogUtil.i("carLifeObservor onServiceConnected ");
            CBIHU12Helper.this.phoneLinkInit("carlife");
        }
    };
    private CarPowerListenerImp.CarPowerObservor carPowerObservor = new CarPowerListenerImp.CarPowerObservor() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.7
        private ICarPower.PowerState prePowerState;

        @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
        public void onPowerStateChanged(final ICarPower.PowerState powerState) {
            super.onPowerStateChanged(powerState);
            LogUtil.i("onPowerStateChanged prePowerState:" + this.prePowerState);
            LogUtil.i("onPowerStateChanged state:" + powerState);
            if (this.prePowerState != null && this.prePowerState == powerState) {
                LogUtil.i("onPowerStateChanged prePowerState == state");
                return;
            }
            this.prePowerState = powerState;
            if (CBIHU12Helper.this.mPowerLaterDisposable != null) {
                CBIHU12Helper.this.mPowerLaterDisposable.dispose();
            }
            CBIHU12Helper.this.mPowerLaterDisposable = AppUtil.atTime(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.7.1
                @Override // io.reactivex.functions.Consumer
                public void accept(Long l) {
                    if (powerState == ICarPower.PowerState.SYSTEMON) {
                        CBIHU12Helper.this.accOnWhenCarplayCertificateOn();
                        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
                        LogUtil.i("onPowerStateChanged connectedLinkStatus:" + connectedLinkStatus);
                        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
                            CBIHU12Helper.this.enableLinkSwitch();
                            CBIHU12Helper.this.resetUsb();
                            return;
                        }
                        return;
                    }
                    if (powerState == ICarPower.PowerState.STANDBY || powerState == ICarPower.PowerState.VOLFAULTSTBY) {
                        CBIHU12Helper.this.accOffWhenCarplayCertificateOn();
                        BasicLinkHelper basicLinkHelper = LinkHelperManager.ins.get("carlife");
                        BasicLinkHelper basicLinkHelper2 = LinkHelperManager.ins.get("hicar");
                        if (basicLinkHelper != null) {
                            basicLinkHelper.disconnect();
                        }
                        if (basicLinkHelper2 != null) {
                            basicLinkHelper2.disconnect();
                        }
                        BlueToothManager.ins.disConnect();
                        LinkHelperManager.ins.disable();
                    }
                }
            }, 500L);
        }
    };
    private final int ACCOFFTIMING_TIME = 600000;
    private ConnectivityManager.OnStartTetheringCallback mOnStartTetheringCallback = new ConnectivityManager.OnStartTetheringCallback() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.11
        public void onTetheringFailed() {
            super.onTetheringFailed();
        }
    };

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public String getAndroidPriorityLink() {
        return null;
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public String getIOSPriorityLink() {
        return null;
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public boolean isPhoneLinkEnable() {
        return true;
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public boolean isPowerStandBy() {
        return false;
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickAndroidPriorityLink(String str) {
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickIOSPriorityLink(String str) {
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void startPriorityLinkAction() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void phoneLinkInit(String str) {
        char c;
        int i = SettingsUtil.getInt(KEY_BOOT_UI_ISSHOW);
        LogUtil.i("phoneLinkInit phoneLink:" + str);
        LogUtil.i("phoneLinkInit boot_warn_ui:" + i);
        int hashCode = str.hashCode();
        if (hashCode == 99272499) {
            if (str.equals("hicar")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != 554181840) {
            if (hashCode == 554303752 && str.equals("carplay")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("carlife")) {
                c = 2;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                if (1 == i) {
                    LinkHelperManager.ins.get("hicar").enable(false);
                    return;
                }
                String huaWeiPhoneLinkPicked = SettingsUtil.getHuaWeiPhoneLinkPicked();
                LogUtil.i("phoneLinkInit huaWeiPhoneLinkPicked:" + huaWeiPhoneLinkPicked);
                if ("hicar".equals(huaWeiPhoneLinkPicked)) {
                    LinkHelperManager.ins.get("hicar").enable(true);
                    return;
                } else {
                    LinkHelperManager.ins.get("hicar").enable(false);
                    return;
                }
            case 1:
                if (1 == i) {
                    LinkHelperManager.ins.get("carplay").enable(false);
                    return;
                } else {
                    LinkHelperManager.ins.get("carplay").enable(true);
                    return;
                }
            case 2:
                if (1 == i) {
                    LinkHelperManager.ins.get("carlife").enable(false);
                    return;
                }
                String huaWeiPhoneLinkPicked2 = SettingsUtil.getHuaWeiPhoneLinkPicked();
                LogUtil.i("phoneLinkInit huaWeiPhoneLinkPicked2:" + huaWeiPhoneLinkPicked2);
                if ("carlife".equals(huaWeiPhoneLinkPicked2)) {
                    LinkHelperManager.ins.get("carlife").enable(true);
                    return;
                } else {
                    LinkHelperManager.ins.get("carlife").enable(false);
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void init() {
        AvmserviceReceiver.registerObservor(this.avmserviceObservor);
        CarPlayLinkHelper.registerObservor(this.carPlayObservor);
        HiCarLinkHelper.registerObservor(this.hiCarObservor);
        CarLifeClient.registerObservor(this.carLifeObservor);
        CarPowerListenerImp.registerObservor(this.carPowerObservor);
        CarTransferApplication.context.getContentResolver().registerContentObserver(Settings.System.getUriFor(KEY_BOOT_UI_ISSHOW), false, this.systemUIBootTipObserver);
        boolean isCarlifePresent = CarControlManager.ins.isCarlifePresent();
        boolean isCarplayPresent = CarControlManager.ins.isCarplayPresent();
        boolean isHicarPresent = CarControlManager.ins.isHicarPresent();
        LogUtil.i("init isCarlifePresent:" + isCarlifePresent);
        LogUtil.i("init isCarplayPresent:" + isCarplayPresent);
        LogUtil.i("init isHicarPresent:" + isHicarPresent);
        if (!isCarlifePresent && !isHicarPresent) {
            pickHiCarWhenHuaWei();
        } else if (!isCarlifePresent) {
            pickHiCarWhenHuaWei();
        } else {
            if (isHicarPresent) {
                return;
            }
            pickCarLifeWhenHuaWei();
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void usbAttached(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return;
        }
        super.usbAttached(usbDevice);
        LogUtil.i("usbAttached  pre curPhoneType:" + this.curPhoneType);
        int phoneType = UsbLinkManager.ins.getPhoneType(usbDevice, false);
        LogUtil.i("usbAttached  newType:" + phoneType);
        char c = 65535;
        if (-1 == phoneType) {
            return;
        }
        this.curPhoneType = phoneType;
        LogUtil.i("usbAttached  now curPhoneType:" + this.curPhoneType);
        PhoneLink phoneLinkByType = getPhoneLinkByType();
        LogUtil.i("usbAttached phoneLink:" + phoneLinkByType);
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("usbAttached connectedLinkStatus:" + connectedLinkStatus);
        ICarPower.PowerState powerState = CarControlManager.ins.getPowerState();
        LogUtil.i("usbAttached powerMode:" + powerState);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus) && powerState == ICarPower.PowerState.SYSTEMON && SettingsUtil.getInt(KEY_BOOT_UI_ISSHOW) == 0) {
            String huaWeiPhoneLinkPicked = SettingsUtil.getHuaWeiPhoneLinkPicked();
            LogUtil.i("usbAttached hwpicked:" + huaWeiPhoneLinkPicked);
            int type = phoneLinkByType.getType();
            if (type == 0) {
                LinkHelperManager.ins.get("carlife").enable(true);
            } else if (type == 2) {
                if (huaWeiPhoneLinkPicked == null || huaWeiPhoneLinkPicked.isEmpty()) {
                    LinkHelperManager.ins.get("carlife").enable(false);
                    LinkHelperManager.ins.get("hicar").enable(false);
                    CarPhoneLinkService.sendShowHuaWeiConnectedDialog();
                } else {
                    int hashCode = huaWeiPhoneLinkPicked.hashCode();
                    if (hashCode != 99272499) {
                        if (hashCode == 554181840 && huaWeiPhoneLinkPicked.equals("carlife")) {
                            c = 0;
                        }
                    } else if (huaWeiPhoneLinkPicked.equals("hicar")) {
                        c = 1;
                    }
                    switch (c) {
                        case 0:
                            LinkHelperManager.ins.get("carlife").enable(true);
                            LinkHelperManager.ins.get("hicar").enable(false);
                            break;
                        case 1:
                            LinkHelperManager.ins.get("carlife").enable(false);
                            LinkHelperManager.ins.get("hicar").enable(true);
                            break;
                    }
                }
            }
        }
        CarPhoneLinkService.sendDeviceChangedCallBack(phoneLinkByType);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice, com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void usbDetached(UsbDevice usbDevice) {
        if (usbDevice == null) {
            return;
        }
        super.usbDetached(usbDevice);
        if (usbDevice.getDeviceName().startsWith(UsbLinkManager.USB_01_URL)) {
            LogUtil.i("usbDetached curPhoneType:" + this.curPhoneType);
            String huaWeiPhoneLinkPicked = SettingsUtil.getHuaWeiPhoneLinkPicked();
            if (this.curPhoneType == 2 && "hicar".equals(huaWeiPhoneLinkPicked)) {
                String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
                ICarPower.PowerState powerState = CarControlManager.ins.getPowerState();
                if (SchedulerSupport.NONE.equals(connectedLinkStatus) && powerState == ICarPower.PowerState.SYSTEMON) {
                    int i = SettingsUtil.getInt(KEY_BOOT_UI_ISSHOW);
                    LogUtil.i("usbDetached boot_warn_ui:" + i);
                    if (i == 0) {
                        LinkHelperManager.ins.get("hicar").enable(true);
                    }
                }
            }
            this.curPhoneType = -1;
            CarPhoneLinkService.sendDeviceChangedCallBack(getPhoneLinkByType());
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void phoneLinkChanged() {
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        LogUtil.i("phoneLinkChanged curPhoneLinkStatus:" + connectedLinkStatus + ",prePhoneLinkStatus:" + this.prePhoneLink);
        if (!SchedulerSupport.NONE.equals(connectedLinkStatus) && "carplay".equals(this.prePhoneLink) && !"carplay".equals(connectedLinkStatus)) {
            ((CarPlayLinkHelper) LinkHelperManager.ins.get("carplay")).cancelAutoShow();
        }
        if (this.mHandler != null) {
            this.mHandler.removeCallbacksAndMessages(null);
        }
        CarPhoneLinkService.sendConnectedStatusChanged(connectedLinkStatus);
        changeBlueTootchState(connectedLinkStatus);
        if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
            enableLinkSwitch();
            return;
        }
        LinkHelperManager.ins.disableOtherPhoneLink();
        this.prePhoneLink = connectedLinkStatus;
        SettingsUtil.storePreviousPhoneLinkStatus(this.prePhoneLink);
        if ("carplay".equals(connectedLinkStatus) && CarPlayUtils.isCarplayCertificateOn()) {
            sendCarPlayMsg();
            if (this.mHandler != null) {
                this.mHandler.sendEmptyMessageDelayed(1, 20L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendCarPlayMsg() {
        this.sendCarplayMsgTime = System.currentTimeMillis();
        if (this.mHandler != null) {
            LogUtil.i("sendCarPlayMsg()");
            this.mHandler.sendEmptyMessageDelayed(0, 550L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableLinkSwitch() {
        int i = SettingsUtil.getInt(KEY_BOOT_UI_ISSHOW);
        LogUtil.i("enableLinkSwitch boot_warn_ui:" + i);
        if (i == 1) {
            return;
        }
        if (ICarPower.PowerState.SYSTEMON != CarControlManager.ins.getPowerState()) {
            return;
        }
        LinkHelperManager.ins.get("carlife").enable(true);
        LinkHelperManager.ins.get("carplay").enable(true);
        if ("hicar".equals(SettingsUtil.getHuaWeiPhoneLinkPicked())) {
            LinkHelperManager.ins.get("hicar").enable(true);
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void resetUsb() {
        boolean isUpgrading = CarControlManager.ins.isUpgrading();
        LogUtil.i("resetUsb isUpgrading:" + isUpgrading);
        if (isUpgrading) {
            return;
        }
        boolean isUsbAttach = CarControlManager.ins.isUsbAttach();
        LogUtil.i("resetUsb usbAttach:" + isUsbAttach);
        if (isUsbAttach) {
            return;
        }
        LogUtil.i("resetUsb isUsbResting:" + this.isResetUsbIng + "," + Thread.currentThread());
        if (this.isResetUsbIng) {
            return;
        }
        this.isResetUsbIng = true;
        AppUtil.onThread(new Consumer() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.8
            /* JADX WARN: Removed duplicated region for block: B:21:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // io.reactivex.functions.Consumer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void accept(Object obj) {
                FileOutputStream fileOutputStream;
                Exception e;
                try {
                    try {
                        LogUtil.i("resetUsb start reset");
                        fileOutputStream = new FileOutputStream(new File("/sys/devices/platform/soc/13010000.cdncusb/vbus"));
                        try {
                            try {
                                fileOutputStream.write(CarAppList.MediaPage.PAGE_FM.getBytes(), 0, 1);
                                fileOutputStream.flush();
                                Thread.sleep(200L);
                                fileOutputStream.write(CarAppList.MediaPage.PAGE_AM.getBytes(), 0, 1);
                                fileOutputStream.flush();
                                LogUtil.i("resetUsb start complete");
                                fileOutputStream.close();
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                                LogUtil.i("resetUsb error:" + e.getMessage());
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                CBIHU12Helper.this.isResetUsbIng = false;
                            }
                        } catch (Throwable th) {
                            th = th;
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
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                    if (fileOutputStream != null) {
                    }
                    throw th;
                }
                CBIHU12Helper.this.isResetUsbIng = false;
            }
        });
    }

    private void changeBlueTootchState(String str) {
        char c;
        LogUtil.i("changeBlueTootchState status:" + str);
        int hashCode = str.hashCode();
        if (hashCode != 99272499) {
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
                BlueToothManager.ins.disConnect();
                return;
            default:
                return;
        }
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

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void enablePhoneLink() {
        int i = SettingsUtil.getInt(KEY_BOOT_UI_ISSHOW);
        LogUtil.i("enablePhoneLink boot_warn_ui:" + i);
        if (i == 1) {
            return;
        }
        PhoneLink phoneLinkByType = ProductDeviceManager.ins.getPhoneLinkByType();
        String huaWeiPhoneLinkPicked = SettingsUtil.getHuaWeiPhoneLinkPicked();
        LogUtil.i("enablePhoneLink phoneLink:" + phoneLinkByType + ",hwpicked:" + huaWeiPhoneLinkPicked);
        if (phoneLinkByType.getType() == 2) {
            if (huaWeiPhoneLinkPicked == null || huaWeiPhoneLinkPicked.isEmpty()) {
                LinkHelperManager.ins.get("carlife").enable(false);
                LinkHelperManager.ins.get("hicar").enable(false);
                CarPhoneLinkService.sendShowHuaWeiConnectedDialog();
                return;
            }
            char c = 65535;
            int hashCode = huaWeiPhoneLinkPicked.hashCode();
            if (hashCode != 99272499) {
                if (hashCode == 554181840 && huaWeiPhoneLinkPicked.equals("carlife")) {
                    c = 0;
                }
            } else if (huaWeiPhoneLinkPicked.equals("hicar")) {
                c = 1;
            }
            switch (c) {
                case 0:
                    LinkHelperManager.ins.get("carlife").enable(true);
                    LinkHelperManager.ins.get("hicar").enable(false);
                    return;
                case 1:
                    LinkHelperManager.ins.get("carlife").enable(false);
                    LinkHelperManager.ins.get("hicar").enable(true);
                    return;
                default:
                    return;
            }
        }
        LinkHelperManager.ins.get("carlife").enable(true);
        LinkHelperManager.ins.get("carplay").enable(true);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void disablePhoneLink() {
        LogUtil.i("disablePhoneLink");
        LinkHelperManager.ins.disable();
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickCarLifeWhenHuaWei() {
        LogUtil.i("pickCarLifeWhenHuaWei");
        SettingsUtil.storeHuaWeiPhoneLinkPicked("carlife");
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickHiCarWhenHuaWei() {
        LogUtil.i("pickHiCarWhenHuaWei");
        SettingsUtil.storeHuaWeiPhoneLinkPicked("hicar");
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public boolean isAvm() {
        return this.isAvm;
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void uninit() {
        AvmserviceReceiver.unregisterObservor(this.avmserviceObservor);
        CarPlayLinkHelper.unregisterObservor(this.carPlayObservor);
        HiCarLinkHelper.unregisterObservor(this.hiCarObservor);
        CarLifeClient.unregisterObservor(this.carLifeObservor);
        CarPowerListenerImp.unregisterObservor(this.carPowerObservor);
        CarTransferApplication.context.getContentResolver().unregisterContentObserver(this.systemUIBootTipObserver);
        if (this.mHandler != null) {
            this.mHandler.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void accOnWhenCarplayCertificateOn() {
        if (this.accOffWhenCarplayCertificateOnD != null) {
            this.accOffWhenCarplayCertificateOnD.dispose();
        }
        boolean isApEnable = WIfiUtils.isApEnable();
        LogUtil.i("accOnWhenCarplayCertificateOn isApEnable:" + isApEnable);
        if (isApEnable) {
            AppUtil.onThread(new Consumer() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.9
                @Override // io.reactivex.functions.Consumer
                public void accept(Object obj) throws Exception {
                    long j = ProductDeviceManager.PRODUCT_CB_IHU23.equals(ProductDeviceManager.ins.getCurProductDevice()) ? 1000L : 500L;
                    WIfiUtils.setApEnable(false, null);
                    Thread.sleep(j);
                    WIfiUtils.setApEnable(true, CBIHU12Helper.this.mOnStartTetheringCallback);
                }
            });
        } else {
            WIfiUtils.setApEnable(true, this.mOnStartTetheringCallback);
        }
        if (CarPlayUtils.isCarplayCertificateOn()) {
            BlueToothManager.ins.setEnable(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void accOffWhenCarplayCertificateOn() {
        boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
        LogUtil.i("accOffWhenCarplayCertificateOn isCarplayCertificateOn:" + isCarplayCertificateOn);
        String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
        LogUtil.i("accOffWhenCarplayCertificateOn curProductDevice:" + curProductDevice);
        boolean equals = ProductDeviceManager.PRODUCT_CB_IHU12_C1.equals(curProductDevice);
        if (!isCarplayCertificateOn && equals) {
            LogUtil.i("accOffWhenCarplayCertificateOn a79 !isCarplayCertificateOn return");
            return;
        }
        if (this.accOffWhenCarplayCertificateOnD != null) {
            this.accOffWhenCarplayCertificateOnD.dispose();
        }
        this.accOffWhenCarplayCertificateOnD = AppUtil.atTimeOnThread(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.CBIHU12Helper.10
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) {
                ICarPower.PowerState powerState = CarControlManager.ins.getPowerState();
                LogUtil.i("accOffWhenCarplayCertificateOn powerState:" + powerState);
                if (powerState == ICarPower.PowerState.SYSTEMON) {
                    return;
                }
                LogUtil.i("accOffWhenCarplayCertificateOn timeout turnOff ap,bt");
                WIfiUtils.setApEnable(false, null);
                BlueToothManager.ins.setEnable(false);
            }
        }, BaseServiceConnection.DEFAULT_REBIND_TIME_LIMIT);
    }
}
