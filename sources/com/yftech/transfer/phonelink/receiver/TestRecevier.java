package com.yftech.transfer.phonelink.receiver;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import com.utils.CarPlayUtils;
import com.utils.LogUtil;
import com.utils.TimeUtils;
import com.utils.WIfiUtils;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.transfer.phonelink.CarPhoneLinkService;
import com.yftech.transfer.phonelink.helper.CarPlayLinkHelper;
import com.yftech.transfer.phonelink.manager.BlueToothManager;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.service.utils.AppUtil;
import com.yftech.transfer.tencent.opensdk.adapter.NetworkAdapterImpl;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;

/* loaded from: /home/user/work/dex/classes.dex */
public class TestRecevier extends BroadcastReceiver {
    public static final String ACTION = "com.transfer.test";
    private final int ACCOFFTIMING_TIME = 10000;
    private Disposable accOffWhenCarplayCertificateOnD;
    private Disposable tryConnectedD;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        switch (intent.getIntExtra("type", 0)) {
            case 0:
                LogUtil.i("usbExists1:" + CarMediaDataManager.getInstance().isUsbExists(0) + ",usbExists2:" + CarMediaDataManager.getInstance().isUsbExists(1));
                return;
            case 1:
                AppUtil.interval(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.receiver.TestRecevier.1
                    @Override // io.reactivex.functions.Consumer
                    public void accept(Long l) {
                        long nowToZeroTimeStamp = TimeUtils.nowToZeroTimeStamp();
                        LogUtil.i("timeStamp l:" + nowToZeroTimeStamp);
                        LogUtil.i("timeStamp:" + ((((double) nowToZeroTimeStamp) * 1.0d) / 1000.0d));
                    }
                }, 1000L);
                return;
            case 2:
                ((CarPlayLinkHelper) LinkHelperManager.ins.get("carplay")).initGps();
                return;
            case 3:
                LinkHelperManager.ins.get("carplay").enable(false);
                return;
            case 4:
                LinkHelperManager.ins.get("carplay").enable(true);
                return;
            case 5:
            default:
                return;
            case 6:
                CarPhoneLinkService.sendHicarReConnectStateChange(true, "123");
                return;
            case 7:
                LinkHelperManager.ins.get("carplay").rejectPhone();
                return;
            case 8:
                accOffWhenCarplayCertificateOn();
                return;
            case 9:
                boolean isCarplayCertificateOn = CarPlayUtils.isCarplayCertificateOn();
                LogUtil.i("accOffWhenCarplayCertificateOn isCarplayCertificateOn:" + isCarplayCertificateOn);
                String curProductDevice = ProductDeviceManager.ins.getCurProductDevice();
                LogUtil.i("accOffWhenCarplayCertificateOn curProductDevice:" + curProductDevice);
                boolean equals = ProductDeviceManager.PRODUCT_CB_IHU12_C1.equals(curProductDevice);
                if (isCarplayCertificateOn || !equals) {
                    return;
                }
                LogUtil.i("accOffWhenCarplayCertificateOn a79 !isCarplayCertificateOn return");
                return;
            case 10:
                NetworkAdapterImpl networkAdapterImpl = new NetworkAdapterImpl(context);
                int wifiConnectionState = networkAdapterImpl.getWifiConnectionState();
                LogUtil.i("TestReceiver#mReceiver wifiConnectionState:" + wifiConnectionState);
                if (wifiConnectionState != 1) {
                    networkAdapterImpl.enableWifi(true);
                    return;
                }
                return;
            case 11:
                ((ActivityManager) context.getSystemService("activity")).killBackgroundProcesses("net.easyconn");
                LogUtil.i("kill net.easyconn");
                return;
        }
    }

    private void accOnWhenCarplayCertificateOn() {
        if (this.accOffWhenCarplayCertificateOnD != null) {
            this.accOffWhenCarplayCertificateOnD.dispose();
        }
        LogUtil.i("accOffWhenCarplayCertificateOn");
        WIfiUtils.setApEnable(true, new ConnectivityManager.OnStartTetheringCallback() { // from class: com.yftech.transfer.phonelink.receiver.TestRecevier.2
            public void onTetheringStarted() {
                super.onTetheringStarted();
            }
        });
        BlueToothManager.ins.setEnable(true);
    }

    private void accOffWhenCarplayCertificateOn() {
        if (this.accOffWhenCarplayCertificateOnD != null) {
            this.accOffWhenCarplayCertificateOnD.dispose();
        }
        this.accOffWhenCarplayCertificateOnD = AppUtil.atTimeOnThread(new Consumer<Long>() { // from class: com.yftech.transfer.phonelink.receiver.TestRecevier.3
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) throws Exception {
                LogUtil.i("accOffWhenCarplayCertificateOn");
                WIfiUtils.setApEnable(false, null);
                BlueToothManager.ins.setEnable(false);
            }
        }, 10000L);
    }
}
