package com.tencent.wecarbase;

import android.os.Environment;

/* loaded from: /home/user/work/dex/classes.dex */
public final class Constants {
    public static final int ACCOUNT_EXPIRED = 1;
    public static final int ACCOUNT_UNEXPIRED = 0;
    public static final String ACTION_TAI_SERVICE_STARTED = "com.tencent.taiservice.wecarbase.started";
    public static final String ACTION_TAI_SERVICE_STARTED_AND_NET_OK = "com.tencent.taiservice.wecarbase.started_and_net_ok";
    public static final String BASE_URL_DEV = "https://wecarproxy.sparta.html5.qq.com";
    public static final String BASE_URL_DEV_TEST = "https://wecarproxy.sparta.html5.qq.com/wecardev";
    public static final String BASE_URL_ONLINE = "https://wecarplat.map.qq.com";
    public static final String BASE_URL_PRE_ONLINE = "https://wecarproxy.sparta.html5.qq.com/predist";
    public static final int BIND_VER = 2;
    public static final int BIND_VER_FOR_WECARID_REG = 3;
    public static final int BIND_VER_FOR_WECARID_REG_WHITHOUT_NAV_REPORT = 4;
    public static final String EXTRA_KEY_FROM = "from";
    public static final String FEED_BACK_ACTION_NORMAL = "com.tencent.wecarbase.bugreport.SUGGEST_AND_FEEDBACK";
    public static final String FEED_BACK_CENTER_ACTION = "com.tencent.wecarbase.bugreport.FEEDBACK_HISTORY";
    public static final int FF_CLOUD_CONNECT_LOG_COUNT = 50;
    public static final int FF_NORMAL_LOG_COUNT = 10;
    public static final int FF_TRACE_LOG_COUNT = 60;
    public static final String IMMERSE_MODEL = "immerse";
    public static final String IS_MAIN_THREAD = "ISMapublic static final inthread";
    public static final int LOGIN_TYPE_QQ = 1;
    public static final int LOGIN_TYPE_WX = 0;
    public static final String PACKAGE_NAME = "PackageName";
    public static final String SDK_BUILD_TYPE = "TAI_C/S";
    public static final String SDK_BUILD_TYPE_SUB_CS = "_C/S";
    public static final String SDK_VERSION = "SDKVersion";
    public static final String TAI_ACCOUNT_CENTER = "com.tencent.wecarbase.account.WECHAT_BIND";
    public static final String TAI_ACCOUNT_CENTER_CLOSE = "com.tencent.wecarbase.account.WECHAT_BIND_CLOSE";
    public static final String TAI_FEEDBACK_CLOSE = "com.tencent.wecarbase.account.TAI_FEEDBACK_CLOSE";
    public static final String TTS_RES_PATH_IFLYTEK_GUANGQI = "/system/speechData/tts/";
    public static final int TYPE_QQ = 1;
    public static final int TYPE_WX = 2;
    public static final int UNSET_URL = -1;
    public static final String URI_ACCOUNT = "/account";
    public static final String URI_PRODUCT_CONFIG = "/config/product";
    public static final String URI_USER_CONFIG = "/config/account";
    public static final String URI_USER_CONFIG_SET = "/config/setAcctConf";
    public static final String URI_WX_BIND_INFO = "/user/bindinfo";
    public static final String URI_WX_QR_CODE_INFO = "/user/bindinfo";
    public static final String URI_WX_UNBIND_CAR = "/user/unbindcar";
    public static final String URI_WX_USER_INFO = "/user/userinfo";
    public static final int USE_URL_DEV = 1;
    public static final int USE_URL_ONLINE = 0;
    public static final int USE_URL_PRE_ONLINE = 2;
    public static final String VERSION_CODE = "VersionCode";
    public static final String TTS_RES_PATH_IFLYTEK = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarspeech/data3/tts/";
    public static final String TTS_RES_PATH_DOBBY_LIUQI = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarspeech/dingdang/res/tts/";
    public static final String TTS_RES_PATH_DOBBY = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarspeech/data3/dingdang/res/tts/";
    public static final String TTS_RES_PATH_DOBBY_V2 = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarspeech/data/tts/";
    public static final String TTS_RES_MD5_FROM_SPEECH = Environment.getExternalStorageDirectory().getPath() + "/tencent/wecarspeech/data/md5.log";

    private Constants() {
    }
}
