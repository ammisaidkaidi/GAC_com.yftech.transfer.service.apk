package com.yftech.transfer.service;

import android.content.Context;
import android.content.Intent;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarAppList {
    public static final String BT_MUSIC_CLS = "com.yftech.music.player.MainActivity";
    public static final String BT_MUSIC_NAME = "蓝牙音乐";
    public static final String BT_MUSIC_PKG = "yf.car.music.action.start&1";
    public static final String BT_PHONE_CLS = "com.yftech.btphone.MainActivity";
    public static final String BT_PHONE_NAME = "蓝牙电话";
    public static final String BT_PHONE_PKG = "com.yftech.btphone";
    public static final String CAR_SETTINGS_CLS = "com.yftech.settings.MainActivity";
    public static final String CAR_SETTINGS_NAME = "车辆设置";
    public static final String CAR_SETTINGS_PKG = "com.yftech.settings1";
    public static final String LOCAL_AVM_CLS = "com.yftech.avmservice.MainActivity";
    public static final String LOCAL_AVM_NAME = "环视";
    public static final String LOCAL_AVM_PKG = "com.yftech.avmservice";
    public static final String LOCAL_BT_SERVICE_PACKAGENAME = "com.yftech.btservice";
    public static final String LOCAL_DVR_CLS = "com.yftech.dvr.MainActivity";
    public static final String LOCAL_DVR_NAME = "行车记录";
    public static final String LOCAL_DVR_PKG = "com.yftech.dvr";
    public static final String LOCAL_LAUNCHER_CLS = "com.tencent.wecarflow.MainActivity";
    public static final String LOCAL_LAUNCHER_NAME = "主界面";
    public static final String LOCAL_LAUNCHER_PKG = "com.tencent.wecarflow";
    public static final String LOCAL_MEDIA_SERVICE_PACKAGENAME = "com.yftech.mediaservice";
    public static final String LOCAL_MUSIC_CLS = "com.yftech.music.player.MainActivity";
    public static final String LOCAL_MUSIC_NAME = "本地音乐";
    public static final String LOCAL_MUSIC_PKG = "yf.car.music.action.start&2";
    public static final String LOCAL_PHOTO_NAME = "图片";
    public static final String LOCAL_PHOTO_PKG = "com.yftech.photo";
    public static final String LOCAL_RADIO_CLS = "com.yftech.radio.MainActivity";
    public static final String LOCAL_RADIO_NAME = "收音机";
    public static final String LOCAL_RADIO_NAME_0 = "电台";
    public static final String LOCAL_RADIO_NAME_AM = "am";
    public static final String LOCAL_RADIO_NAME_FM = "fm";
    public static final String LOCAL_RADIO_PKG = "yf.car.music.action.start&0";
    public static final String LOCAL_RADIO_PKG_AM = "yf.car.music.action.start&4";
    public static final String LOCAL_RADIO_PKG_FM = "yf.car.music.action.start&5";
    public static final String LOCAL_RADIO_SERVICE_PACKAGENAME = "com.yftech.radioservice";
    public static final int MAIN_FRAGMENT_INDEX_BT_MUSIC = 1;
    public static final int MAIN_FRAGMENT_INDEX_LOCAL_RADIO = 0;
    public static final int MAIN_FRAGMENT_INDEX_LOCAL_RADIO_AM = 4;
    public static final int MAIN_FRAGMENT_INDEX_LOCAL_RADIO_FM = 5;
    public static final int MAIN_FRAGMENT_INDEX_USB_MUSIC = 2;
    public static final int MAIN_FRAGMENT_INDEX_USB_VIDEO = 3;
    public static final String MOBILE_CONN_CLS = "net.easyconn.gwmec.MainActivity";
    public static final String MOBILE_CONN_NAME = "手机互联";
    public static final String MOBILE_CONN_PKG = "net.easyconn.gwmec";
    public static final String NET_MUSIC_NAME = "爱趣听";
    public static final String NET_MUSIC_PKG = "com.tencent.wecarflow";
    public static final String OPERATOR_CENTER_CLS = "com.beantechs.operatorcenter.activity.NotificationCenterActivity";
    public static final String OPERATOR_CENTER_NAME = "运营中心";
    public static final String OPERATOR_CENTER_PKG = "com.beantechs.operatorcenter";
    public static final String SMART_HOME_CLS = "com.gwm.app.iotapp.ui.enter.EnterActivity";
    public static final String SMART_HOME_NAME = "智能家居";
    public static final String SMART_HOME_PKG = "com.gwm.app.iotapp";
    public static final String START_APP_MUSIC_FLAG = "musicFlag";
    public static final String SYS_SETTINGS_CLS = "com.yftech.settings.MainActivity";
    public static final String SYS_SETTINGS_NAME = "设置";
    public static final String SYS_SETTINGS_PKG = "com.yftech.settings0";
    public static final String USB_MUSIC_CLS = "com.yftech.music.player.MainActivity";
    public static final String USB_MUSIC_NAME = "USB音乐";
    public static final String USB_MUSIC_PKG = "yf.car.music.action.start&2";
    public static final String USB_VIDEO_CLS = "com.yftech.music.player.MainActivity";
    public static final String USB_VIDEO_NAME = "USB视频";
    public static final String USB_VIDEO_PKG = "yf.car.music.action.start&3";
    public static final String USER_SETTINGS_CLS = "com.beantechs.personalcenter.ui.personsetting.PersonMainActivity";
    public static final String USER_SETTINGS_NAME = "个人中心";
    public static final String USER_SETTINGS_PKG = "com.beantechs.personalcenter";
    public static final String VIDEO_CLS = "com.yftech.music.player.MainActivity";
    public static final String VIDEO_NAME = "视频";
    public static final String VIDEO_PKG = "yf.car.music.action.start&3";

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class BtPhonePage {
        public static final String KEY = "page_index";
        public static final int PAGE_CONTACTS = 0;
        public static final int PAGE_DIALER = 2;
        public static final int PAGE_RECORD_ALL = 1;
        public static final int PAGE_RECORD_ANSWER = 1;
        public static final int PAGE_RECORD_DIAL = 1;
        public static final int PAGE_RECORD_MISS = 1;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class MediaPage {
        public static final String AUDIO_FREQ = "audio_freq";
        public static final String KEY = "page_index";
        public static final String PAGE_AM = "1";
        public static final String PAGE_BLUETOOTH_MUSIC = "3";
        public static final String PAGE_FM = "0";
        public static final String PAGE_RADIO = "5";
        public static final String PAGE_USB_MUSIC = "2";
        public static final String PAGE_USB_VIDEO = "4";
    }

    public static void startActivity(Context context, String str) {
        context.startActivity(new Intent(context.getPackageManager().getLaunchIntentForPackage(str)));
    }
}
