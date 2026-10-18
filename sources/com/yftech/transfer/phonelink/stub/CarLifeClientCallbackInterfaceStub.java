package com.yftech.transfer.phonelink.stub;

import android.util.Log;
import com.carlife.client.ICarLifeClientCallbackInterface;
import com.utils.LogUtil;
import com.yftech.car.phonelink.PhoneLinkMediaInfo;
import com.yftech.transfer.phonelink.CarPhoneLinkMediaService;
import com.yftech.transfer.phonelink.manager.LinkHelperManager;
import com.yftech.transfer.phonelink.manager.ProductDeviceManager;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarLifeClientCallbackInterfaceStub extends ICarLifeClientCallbackInterface.Stub {
    public static final int CONNECT_STATUS_CONNECTED = 2;
    public static final int CONNECT_STATUS_CONNECTING = 1;
    public static final int CONNECT_STATUS_DISCONNECT = 0;
    private static int callStatus;
    private static int connectStatus;
    private static String curBrand;
    private static HashSet<OnStatusChangedListener> listeners = new HashSet<>();
    private static int vrStatus;
    private final String TAG = getClass().getName();
    private PhoneLinkMediaInfo info;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnStatusChangedListener {
        void connectStatus(int i, int i2);
    }

    public void acitvityStatusNofity(boolean z) {
    }

    public void connectStatus(int i, int i2) {
        Log.i(this.TAG, "connectStatus:" + i + "," + i2);
        if (connectStatus == i) {
            LogUtil.i("connectStatus same return");
            return;
        }
        connectStatus = i;
        if (i == 0) {
            this.info = null;
            callStatus = 0;
        } else if (i == 2 && this.info == null) {
            this.info = new PhoneLinkMediaInfo();
            this.info.setPhoneType("carlife");
        }
        CarPhoneLinkMediaService.sendMediaInfoChanged(this.info);
        ProductDeviceManager.ins.phoneLinkChanged();
        Iterator<OnStatusChangedListener> it = listeners.iterator();
        while (it.hasNext()) {
            it.next().connectStatus(i, i2);
        }
    }

    public void musicStatus(int i) {
        if (this.info == null) {
            this.info = new PhoneLinkMediaInfo();
            this.info.setPhoneType("carlife");
        }
        this.info.setIsPlaying(i);
        CarPhoneLinkMediaService.sendMediaInfoChanged(this.info);
    }

    public void musicProgressBar(int i) {
        if (this.info == null) {
            this.info = new PhoneLinkMediaInfo();
            this.info.setPhoneType("carlife");
        }
        this.info.setProgress(i);
        CarPhoneLinkMediaService.sendMediaInfoChanged(this.info);
    }

    public void musicID3Info(String str, String str2, String str3, int i, int i2) {
        if (this.info == null) {
            this.info = new PhoneLinkMediaInfo();
            this.info.setPhoneType("carlife");
        }
        this.info.setSong(str);
        this.info.setArtist(str2);
        this.info.setAlbum(str3);
        this.info.setDuration(i);
        CarPhoneLinkMediaService.sendMediaInfoChanged(this.info);
    }

    public void moduleStatusNotify(int i, int i2) {
        String connectedLinkStatus = LinkHelperManager.ins.getConnectedLinkStatus();
        Log.i(this.TAG, "moduleStatusNotify," + connectedLinkStatus + "," + i + "," + i2);
        if ("carlife".equals(connectedLinkStatus)) {
            if (i == 1) {
                switch (i2) {
                    case 0:
                        callStatus = 0;
                        break;
                    case 1:
                    case 2:
                        callStatus = 3;
                        break;
                }
                ProductDeviceManager.ins.onCallStatusChanged(callStatus);
                return;
            }
            if (i != 4) {
                return;
            }
            switch (i2) {
                case 0:
                    vrStatus = 0;
                    ProductDeviceManager.ins.onVRStatusChanged(0);
                    break;
                case 1:
                    vrStatus = 1;
                    ProductDeviceManager.ins.onVRStatusChanged(1);
                    break;
            }
            ProductDeviceManager.ins.onVRStatusChanged(vrStatus);
        }
    }

    public void naviTBTInfo(int i, int i2, String str, int i3, int i4) {
        LogUtil.i("naviTBTInfo:" + i + "," + i2 + "," + str + "," + i3 + "," + i4);
    }

    public void mdinfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, int i, String str21, String str22) {
        curBrand = str4;
    }

    public static String getCurBrand() {
        return curBrand;
    }

    public static int getCallStatus() {
        return callStatus;
    }

    public static int getVRStatus() {
        return vrStatus;
    }

    public static int getConnectStatus() {
        return connectStatus;
    }

    public static void registerStatusChangedListener(OnStatusChangedListener onStatusChangedListener) {
        listeners.add(onStatusChangedListener);
    }

    public static void unregisterStatusChangedListener(OnStatusChangedListener onStatusChangedListener) {
        listeners.remove(onStatusChangedListener);
    }
}
