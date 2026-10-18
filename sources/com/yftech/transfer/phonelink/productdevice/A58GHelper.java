package com.yftech.transfer.phonelink.productdevice;

import android.annotation.SuppressLint;
import android.database.ContentObserver;
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
import com.yftech.transfer.phonelink.helper.CarPlayLinkHelper;
import com.yftech.transfer.phonelink.manager.BlueToothManager;
import com.yftech.transfer.phonelink.manager.CarControlManager;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
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
public class A58GHelper extends BasicProductDevice {
    private static final String KEY_BOOT_UI_ISSHOW = "boot_warn_ui";
    private static final int MSG_SEND_CARPLAY = 0;
    private static final int MSG_SEND_UNPLOADINS = 1;
    private static final int VALUE_BOOT_UI_HIDE = 0;
    private static final int VALUE_BOOT_UI_SHOW = 1;
    private Disposable accOffWhenCarplayCertificateOnD;
    private boolean isAvm;
    private boolean isResetUsbIng;
    private long sendCarplayMsgTime;
    private String prePhoneLink = SchedulerSupport.NONE;
    protected int curPhoneType = -1;

    @SuppressLint({"HandlerLeak"})
    private Handler mHandler = new Handler() { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.1
        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            CarPlayLinkHelper carPlayLinkHelper = (CarPlayLinkHelper) LinkHelperManager.ins.get("carplay");
            switch (message.what) {
                case 0:
                    long currentTimeMillis = System.currentTimeMillis() - A58GHelper.this.sendCarplayMsgTime;
                    if (Math.abs(currentTimeMillis) < 500) {
                        int i = (int) (500 - currentTimeMillis);
                        if (A58GHelper.this.mHandler != null) {
                            A58GHelper.this.mHandler.sendEmptyMessageDelayed(0, i);
                            return;
                        }
                        return;
                    }
                    carPlayLinkHelper.updateCustomSentence(CarControlManager.ins.getGearPosition(), CarControlManager.ins.getVehicleSpeed());
                    carPlayLinkHelper.updateLocationInfo();
                    if ("carplay".equals(LinkHelperManager.ins.getConnectedLinkStatus())) {
                        A58GHelper.this.sendCarPlayMsg();
                        return;
                    }
                    return;
                case 1:
                    String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
                    carPlayLinkHelper.uploadINS();
                    if ("carplay".equals(connectedLinkStatus)) {
                        A58GHelper.this.mHandler.sendEmptyMessageDelayed(1, 20L);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private AvmserviceReceiver.AvmserviceObservor avmserviceObservor = new AvmserviceReceiver.AvmserviceObservor() { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.2
        @Override // com.yftech.transfer.phonelink.receiver.AvmserviceReceiver.AvmserviceObservor
        public void onChanged(int i, boolean z) {
            LogUtil.i("avmserviceObservor onChanged:" + i + "," + z);
            A58GHelper.this.isAvm = z;
            LogUtil.i("avmserviceObservor muteEnable:" + CarControlManager.ins.getKEY_KEEP_MUTE_WARNING_ENABLE());
            if (z) {
                return;
            }
            LinkHelperManager.ins.mute(false);
        }
    };
    private ContentObserver systemUIBootTipObserver = new ContentObserver(this.handler) { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.3
        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            LogUtil.i("onChange:" + SettingsUtil.getInt(A58GHelper.KEY_BOOT_UI_ISSHOW));
            A58GHelper.this.phoneLinkInit("carplay");
        }
    };
    private CarPlayLinkHelper.CarPlayObservor carPlayObservor = new CarPlayLinkHelper.CarPlayObservor() { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.4
        @Override // com.yftech.transfer.phonelink.helper.CarPlayLinkHelper.CarPlayObservor
        public void onServiceConnected() {
            super.onServiceConnected();
            LogUtil.i("carPlayObservor onServiceConnected");
            A58GHelper.this.phoneLinkInit("carplay");
        }
    };
    private CarPowerListenerImp.CarPowerObservor carPowerObservor = new CarPowerListenerImp.CarPowerObservor() { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.5
        private ICarPower.PowerState prePowerState;

        @Override // com.yftech.transfer.callback.CarPowerListenerImp.CarPowerObservor
        public void onPowerStateChanged(ICarPower.PowerState powerState) {
            super.onPowerStateChanged(powerState);
            LogUtil.i("onPowerStateChanged prePowerState:" + this.prePowerState);
            LogUtil.i("onPowerStateChanged state:" + powerState);
            if (this.prePowerState != null && this.prePowerState == powerState) {
                LogUtil.i("onPowerStateChanged prePowerState == state");
                return;
            }
            this.prePowerState = powerState;
            if (powerState == ICarPower.PowerState.SYSTEMON) {
                A58GHelper.this.accOnWhenCarplayCertificateOn();
                String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
                LogUtil.i("onPowerStateChanged connectedLinkStatus:" + connectedLinkStatus);
                if (SchedulerSupport.NONE.equals(connectedLinkStatus)) {
                    A58GHelper.this.enableLinkSwitch();
                    A58GHelper.this.resetUsb();
                    return;
                }
                return;
            }
            if (powerState == ICarPower.PowerState.STANDBY) {
                A58GHelper.this.accOffWhenCarplayCertificateOn();
                BlueToothManager.ins.disConnect();
                LinkHelperManager.ins.disable();
            }
        }
    };
    private final int ACCOFFTIMING_TIME = 600000;
    private ConnectivityManager.OnStartTetheringCallback mOnStartTetheringCallback = new ConnectivityManager.OnStartTetheringCallback() { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.9
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
    public void pickCarLifeWhenHuaWei() {
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickHiCarWhenHuaWei() {
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void pickIOSPriorityLink(String str) {
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void startPriorityLinkAction() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void phoneLinkInit(String str) {
        int i = SettingsUtil.getInt(KEY_BOOT_UI_ISSHOW);
        LogUtil.i("phoneLinkInit phoneLink:" + str);
        LogUtil.i("phoneLinkInit boot_warn_ui:" + i);
        if (1 == i) {
            LinkHelperManager.ins.get(str).enable(false);
        } else {
            LinkHelperManager.ins.get(str).enable(true);
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void init() {
        LogUtil.i(this.TAG + "#init()");
        AvmserviceReceiver.registerObservor(this.avmserviceObservor);
        CarPlayLinkHelper.registerObservor(this.carPlayObservor);
        CarPowerListenerImp.registerObservor(this.carPowerObservor);
        CarTransferApplication.context.getContentResolver().registerContentObserver(Settings.System.getUriFor(KEY_BOOT_UI_ISSHOW), false, this.systemUIBootTipObserver);
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
        LinkHelperManager.ins.get("easyconn").enable(true);
        LinkHelperManager.ins.get("carplay").enable(true);
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
        AppUtil.onThread(new Consumer() { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.6
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
                                A58GHelper.this.isResetUsbIng = false;
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
                A58GHelper.this.isResetUsbIng = false;
            }
        });
    }

    private void changeBlueTootchState(String str) {
        LogUtil.i("changeBlueTootchState status:" + str);
        if (((str.hashCode() == 554303752 && str.equals("carplay")) ? (char) 0 : (char) 65535) != 0) {
            return;
        }
        BlueToothManager.ins.disConnect();
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public PhoneLink getPhoneLinkByType() {
        switch (this.curPhoneType) {
            case 0:
                return new PhoneLink(0, new ArrayList(1));
            case 1:
                ArrayList arrayList = new ArrayList(1);
                arrayList.add("carplay");
                return new PhoneLink(1, arrayList);
            case 2:
                return new PhoneLink(2, new ArrayList(2));
            default:
                ArrayList arrayList2 = new ArrayList(1);
                arrayList2.add(SchedulerSupport.NONE);
                return new PhoneLink(-1, arrayList2);
        }
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void enablePhoneLink() {
        int i = SettingsUtil.getInt(KEY_BOOT_UI_ISSHOW);
        LogUtil.i("enablePhoneLink boot_warn_ui:" + i);
        if (i == 1) {
            return;
        }
        LogUtil.i("enablePhoneLink phoneLink:" + ProductDeviceManager.ins.getPhoneLinkByType() + ",hwpicked:" + SettingsUtil.getHuaWeiPhoneLinkPicked());
        LinkHelperManager.ins.get("easyconn").enable(true);
        LinkHelperManager.ins.get("carplay").enable(true);
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public void disablePhoneLink() {
        LogUtil.i("disablePhoneLink");
        LinkHelperManager.ins.disable();
    }

    @Override // com.yftech.transfer.phonelink.productdevice.BasicProductDevice
    public boolean isAvm() {
        return this.isAvm;
    }

    @Override // com.yftech.transfer.phonelink.productdevice.intf.IProductDevice
    public void uninit() {
        AvmserviceReceiver.unregisterObservor(this.avmserviceObservor);
        CarPlayLinkHelper.unregisterObservor(this.carPlayObservor);
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
            AppUtil.onThread(new Consumer() { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.7
                @Override // io.reactivex.functions.Consumer
                public void accept(Object obj) throws Exception {
                    long j = ProductDeviceManager.PRODUCT_CB_IHU23.equals(ProductDeviceManager.ins.getCurProductDevice()) ? 800L : 500L;
                    WIfiUtils.setApEnable(false, null);
                    Thread.sleep(j);
                    WIfiUtils.setApEnable(true, A58GHelper.this.mOnStartTetheringCallback);
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
        if (this.accOffWhenCarplayCertificateOnD != null) {
            this.accOffWhenCarplayCertificateOnD.dispose();
        }
        this.accOffWhenCarplayCertificateOnD = AppUtil.atTimeOnThread(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.productdevice.A58GHelper.8
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
