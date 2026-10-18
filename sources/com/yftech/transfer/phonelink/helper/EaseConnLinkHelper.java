package com.yftech.transfer.phonelink.helper;

import android.app.ActivityManager;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.utils.LogUtil;
import com.yftech.transfer.callback.BluetoothSettingsCallBackImp;
import com.yftech.transfer.phonelink.manager.BlueToothManager;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import com.yftech.transfer.service.CarTransferApplication;
import com.yftech.transfer.service.utils.AppUtil;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class EaseConnLinkHelper extends NoneLinkHelper {
    public static final String ACTION_APP_OPEN = "net.easyconn.app.open";
    public static final String ACTION_APP_PAUSE = "net.easyconn.app.pause";
    public static final String ACTION_APP_QUIT = "net.easyconn.app.quit";
    public static final String ACTION_APP_RESUME = "net.easyconn.app.resume";
    public static final String ACTION_BT_A2DP_ACQUIRE = "net.easyconn.a2dp.acquire";
    public static final String ACTION_BT_CALL = "net.easyconn.bluetooth.call";
    public static final String ACTION_BT_CHECK = "net.easyconn.bt.checkstatus";
    public static final String ACTION_BT_CONNECTED_NOTIFY = "net.easyconn.bt.connected";
    public static final String ACTION_BT_OFF_NOTIFY = "net.easyconn.bt.closed";
    public static final String ACTION_BT_ON_NOTIFY = "net.easyconn.bt.opened";
    public static final String ACTION_EXIT_APP = "net.easyconn.action.EXIT_APP";
    public static final String ACTION_IPHONE_PAUSE = "net.easyconn.iphone.pause";
    public static final String ACTION_IPHONE_RESUME = "net.easyconn.iphone.resume";
    public static final String ACTION_LINK_IN = "net.easyconn.link.in";
    public static final String ACTION_LINK_OUT = "net.easyconn.link.out";
    public static final String ACTION_MIRRORING_MODE = "net.easyconn.screen.mirroring_mode";
    public static final String ACTION_MIRRORING_MODE_QUIT = "net.easyconn.screen.mirroring_mode.quit";
    public static final String ACTION_MIRROR_IN = "net.easyconn.mirror.in";
    public static final String ACTION_MIRROR_OUT = "net.easyconn.mirror.out";
    public static final String ACTION_REGISTED = "net.easyconn.registed";
    public static final String ACTION_SCREEN_PAUSE = "net.easyconn.screen.pause";
    public static final String ACTION_SCREEN_RESUME = "net.easyconn.screen.resume";
    public static final String ACTION_TO_BACK = "net.easyconn.action.SWITCH_BACKGROUND";
    private boolean isConnected;
    private AudioManager mAudioManager;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.yftech.transfer.phonelink.helper.EaseConnLinkHelper.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BasicLinkHelper basicLinkHelper;
            String action = intent.getAction();
            LogUtil.i(EaseConnLinkHelper.this.TAG + "#mReceiver action:" + action);
            if (action == null || action.isEmpty()) {
                return;
            }
            char c = 65535;
            switch (action.hashCode()) {
                case -1504926694:
                    if (action.equals(EaseConnLinkHelper.ACTION_APP_PAUSE)) {
                        c = 3;
                        break;
                    }
                    break;
                case -1140741683:
                    if (action.equals(EaseConnLinkHelper.ACTION_BT_CHECK)) {
                        c = 6;
                        break;
                    }
                    break;
                case 652807817:
                    if (action.equals(EaseConnLinkHelper.ACTION_APP_RESUME)) {
                        c = 2;
                        break;
                    }
                    break;
                case 714800393:
                    if (action.equals(EaseConnLinkHelper.ACTION_LINK_OUT)) {
                        c = 5;
                        break;
                    }
                    break;
                case 1086625364:
                    if (action.equals(EaseConnLinkHelper.ACTION_BT_A2DP_ACQUIRE)) {
                        c = 1;
                        break;
                    }
                    break;
                case 1685625866:
                    if (action.equals(EaseConnLinkHelper.ACTION_LINK_IN)) {
                        c = 4;
                        break;
                    }
                    break;
                case 1981575181:
                    if (action.equals(EaseConnLinkHelper.ACTION_BT_CALL)) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    String stringExtra = intent.getStringExtra("phoneNum");
                    LogUtil.i(EaseConnLinkHelper.this.TAG + "#mReceiver phoneNum:" + stringExtra);
                    BlueToothManager.ins.call(stringExtra);
                    return;
                case 1:
                    BlueToothManager.ins.play();
                    return;
                case 2:
                    LinkHelperManager.ins.disable();
                    return;
                case 3:
                    LogUtil.i(EaseConnLinkHelper.this.TAG + "ACTION_APP_PAUSE isConnected:" + EaseConnLinkHelper.this.isConnected);
                    if (EaseConnLinkHelper.this.isConnected) {
                        return;
                    }
                    LinkHelperManager.ins.enable();
                    ((ActivityManager) context.getSystemService("activity")).killBackgroundProcesses("net.easyconn");
                    LogUtil.i(EaseConnLinkHelper.this.TAG + "kill net.easyconn");
                    return;
                case 4:
                    if (ProductDeviceManager.ins.isA58G() && (basicLinkHelper = LinkHelperManager.ins.get("carplay")) != null && basicLinkHelper.isConnected()) {
                        basicLinkHelper.disconnect();
                    }
                    EaseConnLinkHelper.this.isConnected = true;
                    ProductDeviceManager.ins.phoneLinkChanged();
                    return;
                case 5:
                    EaseConnLinkHelper.this.isConnected = false;
                    ProductDeviceManager.ins.phoneLinkChanged();
                    return;
                case 6:
                    BluetoothDevice connectedDevice = BlueToothManager.ins.getConnectedDevice();
                    if (connectedDevice != null) {
                        Intent intent2 = new Intent(EaseConnLinkHelper.ACTION_BT_CONNECTED_NOTIFY);
                        ArrayList<String> arrayList = new ArrayList<>();
                        arrayList.add(connectedDevice.getName());
                        intent2.putStringArrayListExtra("name", arrayList);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private BluetoothSettingsCallBackImp.BluetoothSettingsObservor mBluetoothSettingsObservor = new BluetoothSettingsCallBackImp.BluetoothSettingsObservor() { // from class: com.yftech.transfer.phonelink.helper.EaseConnLinkHelper.2
        @Override // com.yftech.transfer.callback.BluetoothSettingsCallBackImp.BluetoothSettingsObservor
        public void onBluetoothStateChanged(final int i) {
            AppUtil.onUI(new Consumer() { // from class: com.yftech.transfer.phonelink.helper.EaseConnLinkHelper.2.1
                @Override // io.reactivex.functions.Consumer
                public void accept(Object obj) {
                    Intent intent = new Intent();
                    if (12 == i || 11 == i) {
                        intent.setAction(EaseConnLinkHelper.ACTION_BT_ON_NOTIFY);
                        intent.putExtra("name", BlueToothManager.ins.getBluetoothName());
                    } else {
                        intent.setAction(EaseConnLinkHelper.ACTION_BT_OFF_NOTIFY);
                    }
                    CarTransferApplication.context.sendBroadcast(intent);
                }
            });
        }
    };

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public String linkName() {
        return "easyconn";
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public boolean isConnected() {
        return this.isConnected;
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void init() {
        LogUtil.i(this.TAG + "#init()");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_APP_OPEN);
        intentFilter.addAction(ACTION_APP_QUIT);
        intentFilter.addAction(ACTION_LINK_IN);
        intentFilter.addAction(ACTION_LINK_OUT);
        intentFilter.addAction(ACTION_MIRROR_IN);
        intentFilter.addAction(ACTION_MIRROR_OUT);
        intentFilter.addAction(ACTION_SCREEN_RESUME);
        intentFilter.addAction(ACTION_SCREEN_PAUSE);
        intentFilter.addAction(ACTION_IPHONE_RESUME);
        intentFilter.addAction(ACTION_IPHONE_PAUSE);
        intentFilter.addAction(ACTION_REGISTED);
        intentFilter.addAction(ACTION_MIRRORING_MODE);
        intentFilter.addAction(ACTION_MIRRORING_MODE_QUIT);
        intentFilter.addAction(ACTION_APP_RESUME);
        intentFilter.addAction(ACTION_APP_PAUSE);
        intentFilter.addAction(ACTION_BT_A2DP_ACQUIRE);
        CarTransferApplication.context.registerReceiver(this.mReceiver, intentFilter);
        BluetoothSettingsCallBackImp.registerObservor(this.mBluetoothSettingsObservor);
        this.mAudioManager = (AudioManager) CarTransferApplication.context.getSystemService("audio");
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void uninit() {
        CarTransferApplication.context.unregisterReceiver(this.mReceiver);
        BluetoothSettingsCallBackImp.unregisterObservor(this.mBluetoothSettingsObservor);
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.BasicLinkHelper
    public void startPage(int i) {
        if (i != 4) {
            return;
        }
        sendBroadcast(ACTION_TO_BACK);
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.interf.ILinkHelper
    public void disconnect() {
        this.isConnected = false;
        sendBroadcast(ACTION_EXIT_APP);
    }

    private void sendBroadcast(String str) {
        LogUtil.i(this.TAG + "#sendBroadcast action:" + str);
        CarTransferApplication.context.sendBroadcast(new Intent(str));
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void play() {
        BlueToothManager.ins.play();
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void pause() {
        BlueToothManager.ins.pause();
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void next() {
        BlueToothManager.ins.next();
    }

    @Override // com.yftech.transfer.phonelink.helper.NoneLinkHelper, com.yftech.transfer.phonelink.helper.interf.IMediaInf
    public void previous() {
        BlueToothManager.ins.pre();
    }
}
