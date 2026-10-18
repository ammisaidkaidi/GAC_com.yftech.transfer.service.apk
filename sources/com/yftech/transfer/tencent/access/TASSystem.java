package com.yftech.transfer.tencent.access;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import com.tencent.wecarspeech.sdk.listener.SSAInitListener;
import com.tencent.wecarspeech.sdk.manager.SSAAsrManager;
import com.tencent.wecarspeech.sdk.manager.SSAConfigManager;
import com.tencent.wecarspeech.sdk.manager.SSAMediaManager;
import com.tencent.wecarspeech.sdk.manager.SSAMusicManager;
import com.tencent.wecarspeech.sdk.manager.SSARadioManager;
import com.tencent.wecarspeech.sdk.manager.SSASystemManager;
import com.tencent.wecarspeech.sdk.model.SSAInitParam;
import com.tencent.wecarspeech.sdk.model.ThirdApp;
import com.yftech.transfer.service.CarAppList;
import com.yftech.transfer.service.utils.SystemProperty;
import com.yftech.transfer.service.utils.TLog;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class TASSystem implements SSAInitListener {
    public static final String APP_ID = "26f1cbd9ce4d285cc7855d615d436523065b2cd7";
    public static final String APP_TOKEN = "574aa5ffc6334503be923d6e3e4f9ac5";
    private static final boolean DEBUG = true;
    private static final String TAG = "TASSystem";
    public static Context mContext;
    private static TASSystem mThis;
    private static ArrayList<ThirdApp> mediaCtlAppList;
    private static ArrayList<String> WAKEUPWORDS = new ArrayList<String>() { // from class: com.yftech.transfer.tencent.access.TASSystem.1
        {
            add("叮当叮当");
        }
    };
    private static ArrayList<ThirdApp> openAppList = new ArrayList<>();

    static {
        openAppList.add(new ThirdApp(CarAppList.SYS_SETTINGS_PKG, CarAppList.SYS_SETTINGS_NAME));
        openAppList.add(new ThirdApp(CarAppList.CAR_SETTINGS_PKG, CarAppList.CAR_SETTINGS_NAME));
        openAppList.add(new ThirdApp(CarAppList.USER_SETTINGS_PKG, CarAppList.USER_SETTINGS_NAME));
        openAppList.add(new ThirdApp(CarAppList.BT_PHONE_PKG, CarAppList.BT_PHONE_NAME));
        openAppList.add(new ThirdApp(CarAppList.BT_MUSIC_PKG, CarAppList.BT_MUSIC_NAME));
        openAppList.add(new ThirdApp("yf.car.music.action.start&3", CarAppList.USB_VIDEO_NAME));
        openAppList.add(new ThirdApp("yf.car.music.action.start&2", CarAppList.USB_MUSIC_NAME));
        openAppList.add(new ThirdApp(CarAppList.LOCAL_DVR_PKG, CarAppList.LOCAL_DVR_NAME));
        openAppList.add(new ThirdApp("com.tencent.wecarflow", CarAppList.LOCAL_LAUNCHER_NAME));
        openAppList.add(new ThirdApp("com.yftech.avmservice", CarAppList.LOCAL_AVM_NAME));
        openAppList.add(new ThirdApp(CarAppList.LOCAL_RADIO_PKG, CarAppList.LOCAL_RADIO_NAME));
        openAppList.add(new ThirdApp("yf.car.music.action.start&3", CarAppList.VIDEO_NAME));
        mediaCtlAppList = new ArrayList<>();
        mediaCtlAppList.add(new ThirdApp(CarAppList.BT_MUSIC_PKG, CarAppList.BT_MUSIC_NAME));
        mediaCtlAppList.add(new ThirdApp("yf.car.music.action.start&3", CarAppList.USB_VIDEO_NAME));
        mediaCtlAppList.add(new ThirdApp(CarAppList.LOCAL_RADIO_PKG, CarAppList.LOCAL_RADIO_NAME));
        mediaCtlAppList.add(new ThirdApp(CarAppList.USER_SETTINGS_PKG, CarAppList.USER_SETTINGS_NAME));
        mThis = new TASSystem();
    }

    private TASSystem() {
    }

    public static void init(Context context) {
        LOGI("TASSystem init...");
        mContext = context;
        initTASConfigManager(mContext);
    }

    private static void initTASConfigManager(Context context) {
        SSAInitParam sSAInitParam = new SSAInitParam();
        sSAInitParam.appId = APP_ID;
        sSAInitParam.appToken = APP_TOKEN;
        sSAInitParam.deviceUniqueId = SystemProperty.get(mContext, "ro.serialno");
        sSAInitParam.storageRootPath = Environment.getExternalStorageDirectory().getAbsolutePath();
        sSAInitParam.floatBtnEnabled = false;
        sSAInitParam.wakeupKeywords = WAKEUPWORDS;
        SSAConfigManager.getInstance().init(context, sSAInitParam, mThis);
    }

    public static void start(Context context) {
        LOGI("TASSystem start...");
        SSASystemManager.getInstance().uploadThirdAppList(openAppList);
        SSASystemManager.getInstance().setThirdAppClient(new ThirdAppClientImpl());
        SSARadioManager.getInstance().setRadioClient(new RadioClientImpl());
        SSAMusicManager.getInstance().setMusicClient(new MusicClientImpl());
        SSAMediaManager.getInstance().setVideoClient(new VideoClientImpl());
        SSAMediaManager.getInstance().setMediaControlClient(new MediaControlClientImpl(), mediaCtlAppList);
        SSASystemManager.getInstance().addIAsrJsonResultListener(new VehicleControlImpl());
        SSAAsrManager.getInstance().addIAsrCommandListener(new AsrCommand());
    }

    public static void LOGI(String str) {
        Log.i(TAG, str);
    }

    @Override // com.tencent.wecarspeech.sdk.listener.SSAInitListener
    public void onInit(int i, String str) {
        TLog.i("on TAS init ,errId:" + i + ",resultDesc:" + str);
        if (i == 1) {
            initTASConfigManager(mContext);
        }
    }
}
