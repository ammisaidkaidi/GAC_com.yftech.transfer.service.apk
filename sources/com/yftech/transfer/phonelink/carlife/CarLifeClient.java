package com.yftech.transfer.phonelink.carlife;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.carlife.client.ICarLifeClientCallbackInterface;
import com.carlife.client.ICarLifeClientInterface;
import com.utils.LogUtil;
import com.yftech.transfer.phonelink.receiver.ActivityChangedReceiver;
import com.yftech.transfer.service.CarTransferApplication;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarLifeClient extends ICarLifeClientInterface.Stub {
    private static final String TAG = "CarLifeClient";
    private static CarLifeClient mInstance;
    private static final HashSet<CarLifeObservor> observors = new HashSet<>();
    private ICarLifeClientInterface mClient = null;
    private ICarLifeClientCallbackInterface mCarLifeClientCallback = null;
    private Context mContext = null;
    private ServiceConnection mCarLifeClientConnection = new ServiceConnection() { // from class: com.yftech.transfer.phonelink.carlife.CarLifeClient.1
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LogUtil.i("CarLifeClient onServiceDisconnected");
            CarLifeClient.this.mClient = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtil.i("bind CarLifeClient service successfully");
            CarLifeClient.this.mClient = ICarLifeClientInterface.Stub.asInterface(iBinder);
            if (CarLifeClient.this.mCarLifeClientCallback != null) {
                CarLifeClient.this.registerCallback(CarLifeClient.this.mCarLifeClientCallback);
            }
            Iterator it = CarLifeClient.observors.iterator();
            while (it.hasNext()) {
                CarLifeObservor carLifeObservor = (CarLifeObservor) it.next();
                if (carLifeObservor != null) {
                    carLifeObservor.onServiceConnected();
                }
            }
        }
    };

    private CarLifeClient() {
        LogUtil.i("+++++++++++++constructor+++++++++++++++");
    }

    public static CarLifeClient getInstance() {
        if (mInstance == null) {
            mInstance = new CarLifeClient();
        }
        return mInstance;
    }

    public void init(Context context, ICarLifeClientCallbackInterface iCarLifeClientCallbackInterface) {
        LogUtil.i("+++++++++++++init+++++++++++++++");
        try {
            this.mCarLifeClientCallback = iCarLifeClientCallbackInterface;
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(new ComponentName("com.baidu.carlifevehicle", "com.baidu.carlifevehicle.CarLifeClientService"));
            context.bindService(intent, this.mCarLifeClientConnection, 1);
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void uninit() {
        LogUtil.i("+++++++++++++uninit+++++++++++++++,mClient:" + this.mClient);
        try {
            if (this.mCarLifeClientConnection != null) {
                this.mContext.unbindService(this.mCarLifeClientConnection);
                this.mCarLifeClientConnection = null;
            }
        } catch (IllegalArgumentException e) {
            LogUtil.e(e.toString());
        }
    }

    public String getCarlifeVersion() {
        LogUtil.i("+++++++++++++getCarlifeVersion+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return "";
        }
        try {
            return this.mClient.getCarlifeVersion();
        } catch (Exception e) {
            LogUtil.e(e.toString());
            return "";
        }
    }

    public void registerCallback(ICarLifeClientCallbackInterface iCarLifeClientCallbackInterface) {
        LogUtil.i("+++++++++++++registerCallback+++++++++++++++callback:" + iCarLifeClientCallbackInterface + ",mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.registerCallback(iCarLifeClientCallbackInterface);
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void unregisterCallback(ICarLifeClientCallbackInterface iCarLifeClientCallbackInterface) {
        LogUtil.i("+++++++++++++unregisterCallback+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.unregisterCallback(iCarLifeClientCallbackInterface);
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void music_play() {
        LogUtil.i("+++++++++++++music_play+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.music_play();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void music_pause() {
        LogUtil.i("+++++++++++++music_pause+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.music_pause();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void music_next() {
        LogUtil.i("+++++++++++++music_next+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.music_next();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void music_previous() {
        LogUtil.i("+++++++++++++music_previous+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.music_previous();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void enterpage(String str) {
        LogUtil.i("+++++++++++++enterpage+++++++++++++++ page:" + str + ",mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.enterpage(str);
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void launchCarlifeApp(String str) {
        LogUtil.i("+++++++++++++enterpage+++++++++++++++ page:" + str + ",mClient:" + this.mClient);
        try {
            if (this.mClient == null) {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.baidu.carlifevehicle", ActivityChangedReceiver.ACT_CARLIFE));
                intent.setPackage("com.baidu.carlifevehicle");
                intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
                CarTransferApplication.context.startActivity(intent);
                return;
            }
            this.mClient.launchCarlifeApp(str);
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void donot_audoconnect() {
        LogUtil.i("+++++++++++++donot_audoconnect+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.donot_audoconnect();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void audoconnect() {
        LogUtil.i("+++++++++++++audoconnect+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.audoconnect();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void disconnect() {
        LogUtil.i("+++++++++++++disconnect+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.disconnect();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void closeCarlifeActivety() {
        LogUtil.i("+++++++++++++closeCarlifeActivety+++++++++++++++,mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.closeCarlifeActivety();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void closeMic() {
        LogUtil.i("closeMic(),mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.closeMic();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void pauseNavi() {
        LogUtil.i("pauseNavi(),mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.pauseNavi();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void resumeNavi() {
        LogUtil.i("resumeNavi(),mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.resumeNavi();
        } catch (Exception e) {
            LogUtil.e(e.toString());
        }
    }

    public void setAndroidConnection(boolean z, String str) {
        LogUtil.i("+++++++++++++setAndroidConnection+++++++++++++++disable:" + z + ", vid:" + str + ",mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.setAndroidConnection(z, str);
        } catch (Exception e) {
            LogUtil.e(e.toString());
            e.printStackTrace();
        }
    }

    public void setiPhoneConnection(boolean z) {
        LogUtil.i("+++++++++++++setiPhoneConnection+++++++++++++++disable:" + z + ",mClient:" + this.mClient);
        if (this.mClient == null) {
            return;
        }
        try {
            this.mClient.setiPhoneConnection(z);
        } catch (Exception e) {
            LogUtil.e(e.toString());
            e.printStackTrace();
        }
    }

    public boolean checkReady() {
        return this.mClient != null;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarLifeObservor {
        public void onServiceConnected() {
            LogUtil.i("CarLifeObservor onServiceConnected");
        }
    }

    public static void registerObservor(CarLifeObservor carLifeObservor) {
        observors.add(carLifeObservor);
    }

    public static void unregisterObservor(CarLifeObservor carLifeObservor) {
        observors.remove(carLifeObservor);
    }

    public static boolean isregisterObservor(CarLifeObservor carLifeObservor) {
        return observors.contains(carLifeObservor);
    }
}
