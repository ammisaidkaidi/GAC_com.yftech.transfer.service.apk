package com.yftech.transfer.txznet;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.os.ServiceManager;
import android.support.v4.media.MediaBrowserCompat;
import android.util.Log;
import com.yftech.transfer.media.CarTransferMediaService;
import com.yftech.transfer.media.MediaManager;
import com.yftech.transfer.navigation.BaiduNavigationAdapter;
import com.yftech.transfer.navigation.CarNavigationService;

/* loaded from: /home/user/work/dex/classes.dex */
public class PlatformAdapterService extends Service {
    private static final String TAG = "PlatformAdapterService";
    private static final String TXZ_NET_PACKAGENAME = "com.txznet.music";
    private AccessAdapter mAccessAdapter;
    private BaiduNavigationAdapter mBaiduNavigationAdapter;
    private TxznetMediaPlayer mMediaPlayer;
    private CarNavigationService mNavigationService;
    private MediaBrowserCompat mediaBrowser;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i(TAG, "onCreate()");
        this.mMediaPlayer = new TxznetMediaPlayer(this);
        MediaManager.getInstance().addMediaPlayer(this.mMediaPlayer);
        startService(new Intent(this, (Class<?>) CarTransferMediaService.class));
        MediaManager.getInstance().mediaPlayerStart(this.mMediaPlayer);
        this.mNavigationService = new CarNavigationService(this);
        this.mBaiduNavigationAdapter = new BaiduNavigationAdapter();
        this.mNavigationService.addNavigation(this.mBaiduNavigationAdapter);
        this.mNavigationService.onMapAppStart(this.mBaiduNavigationAdapter);
        ServiceManager.addService("car_navigation", this.mNavigationService);
        if (this.mAccessAdapter == null) {
            this.mAccessAdapter = new AccessAdapter(getApplicationContext());
            getApplicationContext().registerReceiver(this.mAccessAdapter, new IntentFilter(AccessAdapter.ACTION_TXZ_TO_SYS));
        }
    }

    public static void LOGI(String str) {
        Log.i(TAG, str);
    }

    public static void LOGW(String str) {
        Log.w(TAG, str);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.mediaBrowser.disconnect();
    }
}
