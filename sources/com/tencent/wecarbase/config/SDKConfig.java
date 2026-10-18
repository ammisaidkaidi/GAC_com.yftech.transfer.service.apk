package com.tencent.wecarbase.config;

import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import com.tencent.wecarbase.Constants;
import com.tencent.wecarbase.account.AccountLocalHelper;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.common.VersionProvider;
import com.tencent.wecarbase.config.def.DeviceConfig;
import com.tencent.wecarbase.config.def.ServiceConfig;
import com.tencent.wecarbase.model.SerializableMap;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.PackageUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class SDKConfig {
    public static final String ACTION_ACCOUNT_CHECK_LOGIN_STATUS_PUSH = "com.tencent.wecarbase.ACTION_ACCOUNT_CHECK_LOGIN_STATUS_PUSH";
    public static final String ACTION_ACCOUNT_SERVICE = "com.tencent.wecarbase.account.ACCOUNT_SERVICE";
    public static final String ACTION_APP_STANDARD_BROADCAST_RECV = "com.tencent.taiservice.ACTION_APP_STANDARD_BROADCAST_RECV";
    public static final String ACTION_APP_STANDARD_BROADCAST_SEND = "com.tencent.taiservice.ACTION_APP_STANDARD_BROADCAST_SEND";
    public static final String ACTION_AUTH_RESULT = "com.tencent.wecarbase.ACTION_AUTH_RESULT";
    public static final String ACTION_CLOUD_SERVICE = "com.tencent.wecarbase.account.CLOUD_SERVICE";
    public static final String ACTION_FEED_BACK_CENT_OPEN_OR_CLOSE = "com.tencent.wecarbase.ACTION_FEED_BACK_CENT_OPEN_OR_CLOSE";
    public static final String ACTION_FORCE_VALIDATE = "com.tencent.wecarbase.ACTION_FORCE_VALIDATE";
    public static final String ACTION_GUI_POLICY_SERVICE = "com.tencent.wecarbase.policy.GUI_POLICY_SERVICE";
    public static final String ACTION_OPEN_BIND = "com.tencent.taiservice.wecarbase.open_bind";
    public static final String ACTION_POI_QUERY = "com.tencent.taiservice.wecarbase.poi_query";
    public static final String ACTION_POI_RESULT = "com.tencent.taiservice.wecarbase.poi_result";
    public static final String ACTION_QQ_BIND = "com.tencent.wecarbase.ACTION_QQ_BIND";
    public static final String ACTION_QQ_UNBIND = "com.tencent.wecarbase.ACTION_QQ_UNBIND";
    public static final String ACTION_QQ_UPDATE = "com.tencent.wecarbase.ACTION_QQ_UPDATE";
    public static final String ACTION_QUERY_BIND = "com.tencent.taiservice.wecarbase.query_bind";
    public static final String ACTION_QUIT_WECARBASE_PROCESS = "com.tencent.wecarbase.ACTION_QUIT_WECARBASE_PROCESS";
    public static final String ACTION_ROM_STANDARD_BROADCAST_RECV = "com.tencent.taiservice.ACTION_ROM_STANDARD_BROADCAST_RECV";
    public static final String ACTION_ROM_STANDARD_BROADCAST_SEND = "com.tencent.taiservice.ACTION_ROM_STANDARD_BROADCAST_SEND";
    public static final String ACTION_SDK_RESET = "com.tencent.wecarbase.ACTION_SDK_RESET";
    public static final String ACTION_SPEECH_SERVICE = "com.tencent.wecarspeech.SPEECH_SERVICE";
    public static final String ACTION_TAI_UPDATE_SERVICE = "com.tencent.wecarbase.account.TAI_UPDATE";
    public static final String ACTION_UPDATE_CHANNEL = "com.tencent.wecarbase.ACTION_UPDATE_CHANNEL";
    public static final String ACTION_UPDATE_DEVICE_IDS = "com.tencent.wecarbase.ACTION_UPDATE_DEVICE_IDS";
    public static final String ACTION_VUI_POLICY_SERVICE = "com.tencent.wecarbase.policy.VUI_POLICY_SERVICE";
    public static final String ACTION_WECAR_ID_CHANGED = "com.tencent.wecarbase.ACTION_WECAR_ID_CHANGED";
    public static final String ACTION_WECAR_ID_REGISTERED = "com.tencent.wecarbase.ACTION_WECAR_ID_REGISTERED";
    public static final String ACTION_WWBCENTER_SERVICE = "com.tencent.wecarbase.account.WEBCENTER_SERVICE";
    public static final String ACTION_WX_BIND = "com.tencent.wecarbase.ACTION_WX_BIND";
    public static final String ACTION_WX_BIND_PUSH = "com.tencent.wecarbase.ACTION_WX_BIND_PUSH";
    public static final String ACTION_WX_PAGE_OPEN_OR_CLOSE = "com.tencent.wecarbase.ACTION_WX_PAGE_OPEN_OR_CLOSE";
    public static final String ACTION_WX_UNBIND = "com.tencent.wecarbase.ACTION_WX_UNBIND";
    public static final String ACTION_WX_UPDATE = "com.tencent.wecarbase.ACTION_WX_UPDATE";
    public static final int APP_PLAY_MUSIC = 2001;
    public static final String EVENT_RECEIVER_CLASS = "com.tencent.wecarbase.messagecenter.EventReceiver";
    public static final String EXTRA_BROADCAST_SENDER = "extra_broadcast_sender";
    public static final String EXTRA_CHANNEL = "extra_channel";
    public static final String EXTRA_CLEAR_ACCOUNT = "extra_clear_account";
    public static final String EXTRA_DEVICE_IDS = "extra_device_ids";
    public static final String EXTRA_HAS_AUTH = "extra_has_auth";
    public static final String EXTRA_INCLUDE_SELF = "extra_include_self";
    public static final String EXTRA_NEW_QQ_ACCOUNT = "extra_new_qq_account";
    public static final String EXTRA_NEW_WECAR_ACCOUNT = "extra_new_wecar_account";
    public static final String EXTRA_NEW_WX_ACCOUNT = "extra_new_wx_account";
    public static final String EXTRA_OLD_QQ_ACCOUNT = "extra_old_qq_account";
    public static final String EXTRA_OLD_WECAR_ACCOUNT = "extra_old_wecar_account";
    public static final String EXTRA_OLD_WX_ACCOUNT = "extra_old_wx_account";
    public static final String EXTRA_OPEN_OR_CLOSE = "extra_open_or_close";
    public static final String EXTRA_TX_ACCOUNT = "extra_tx_account";
    public static final String EXTRA_WECAR_ACCOUNT = "extra_wecar_account";
    public static final String FROM_APPLET = "applet";
    public static final String FROM_AUTH = "auth";
    public static final String FROM_FD_AFTER_RECEIVE = "feedback_after_receive";
    public static final String FROM_FD_AFTER_SEND = "feedback_after_send";
    public static final String FROM_MUSIC = "music";
    public static final String FROM_NAV = "nav";
    public static final String FROM_NEWS = "news";
    public static final String FROM_OTHERS = "others";
    public static final String FROM_PUSH = "push";
    public static final String FROM_SETTINGS = "settings";
    public static final String FROM_SPEECH = "com.tencent.wecarspeech";
    public static final String FROM_TIMER = "timer";
    public static final String FROM_VUI = "com.tencent.vui";
    public static final String INTENT_EXTRA_ACTION_ARGS = "actionArgs";
    public static final String INTENT_EXTRA_ACTION_ID = "actionId";
    public static final String INTENT_EXTRA_ACTION_PACKAGENAME = "actionPackageName";
    public static final String INTENT_EXTRA_KEY_TYPE = "KEY_TYPE";
    public static final String INTENT_EXTRA_UI_DATA = "UI_DATA";
    public static final String INTENT_EXTRA_UI_OP_ACTION = "UI_OP_ACTION";
    public static final String INTENT_EXTRA_UI_OP_TYPE = "UI_OP_TYPE";
    public static final String INTENT_EXTRA_UI_TYPE = "UI_TYPE";
    public static final String PUBLIC_ACTION_WX_BIND = "com.tencent.taiservice.wecarbase.wx_bind";
    public static final String PUBLIC_ACTION_WX_UNBIND = "com.tencent.taiservice.wecarbase.wx_unbind";
    public static final int ROM_COMMON_UI = 1001;
    private static final String TAG = "SDKConfig";
    public static final String UNINIT_CHANNEL = "";
    private static boolean sKeepAliveFlag = true;
    private String mAPPChannel;
    private CloudConfig mCloudConfig;
    private IDeviceConfig mDeviceCfg;
    private Map<String, String> mDeviceIds;
    private long mGpstimeOffset;
    private boolean mOnlineEnv;
    private boolean mOpenCrowdsourcing;
    private String mProduct;
    private int mRequestEnv;
    private IServiceConfig mServiceCfg;
    private boolean mShowLog;
    private boolean mTTSOnlyMainProcess;
    private String mTTSResDir;
    private int mTTSStreamType;
    private String mTempChannel;
    private Map<String, String> mTempDeviceIds;
    private IUniqueIdCallback mUniqueIdCallback;
    private boolean mUseBuiltInTTS;
    private boolean mUseLocalChannel;
    private boolean mUseLocalDeviceIds;
    private boolean mUseNmea;

    public static boolean isKeepAliveFlag() {
        return sKeepAliveFlag;
    }

    public static void setKeepAliveFlag(boolean z) {
        sKeepAliveFlag = z;
    }

    public long getGpstimeOffset() {
        return this.mGpstimeOffset;
    }

    public boolean shouldUseNmea() {
        return this.mUseNmea;
    }

    private SDKConfig() {
        this.mRequestEnv = -1;
        this.mShowLog = false;
        this.mOnlineEnv = true;
        this.mOpenCrowdsourcing = true;
        this.mUseLocalChannel = false;
        this.mUseLocalDeviceIds = false;
        this.mDeviceIds = null;
        this.mUniqueIdCallback = null;
        this.mUseBuiltInTTS = false;
        this.mTTSStreamType = 3;
        this.mTTSOnlyMainProcess = true;
        this.mGpstimeOffset = 0L;
        this.mUseNmea = true;
    }

    public String getChannelInAPP(String str) {
        String str2 = null;
        try {
            Bundle call = ContextHolder.getContext().getContentResolver().call(VersionProvider.getUriForPackage(str), VersionProvider.METHOD_GET_PRODUCT_CHANNEL, (String) null, (Bundle) null);
            LogUtils.d(TAG, "result = " + call);
            if (call != null) {
                String string = call.getString(VersionProvider.KEY_PRODUCT_CHANNEL);
                LogUtils.d(TAG, "channel = " + string);
                str2 = string;
            }
        } catch (Exception unused) {
        }
        LogUtils.d(TAG, "getChannelInAPP " + str + " return " + str2);
        return str2;
    }

    public Map<String, String> getDeviceIdsInAPP(String str) {
        Serializable serializable;
        Map<String, String> map = null;
        try {
            Bundle call = ContextHolder.getContext().getContentResolver().call(VersionProvider.getUriForPackage(str), VersionProvider.METHOD_GET_DEVICE_IDS, (String) null, (Bundle) null);
            if (call != null && (serializable = call.getSerializable(VersionProvider.KEY_DEVICE_IDS)) != null && (serializable instanceof SerializableMap)) {
                map = ((SerializableMap) serializable).getMap();
            }
        } catch (Exception unused) {
        }
        LogUtils.d(TAG, "getDeviceIdsInAPP " + str + " return " + map);
        return map;
    }

    public String getGlobalAPPChannel() {
        if (this.mUseLocalChannel) {
            LogUtils.w(TAG, "从APP自身获取渠道号，在上线时，务必将这个设置项关闭, 当前渠道号为 " + this.mAPPChannel);
            return this.mAPPChannel;
        }
        String infoFromSDCard = AccountLocalHelper.getInfoFromSDCard("channel");
        LogUtils.d(TAG, "get channel from sdcard is " + infoFromSDCard);
        if (TextUtils.isEmpty(infoFromSDCard)) {
            infoFromSDCard = getChannelInAPP("com.tencent.wecarnavi");
            if (!TextUtils.isEmpty(infoFromSDCard)) {
                LogUtils.ff(TAG, "get channel from wecarNavi is " + infoFromSDCard);
            }
            LogUtils.d(TAG, "get channel from wecarNavi is " + infoFromSDCard);
        }
        if (!TextUtils.isEmpty(infoFromSDCard)) {
            return infoFromSDCard;
        }
        String channelInAPP = getChannelInAPP("com.tencent.wecarflow");
        if (!TextUtils.isEmpty(channelInAPP)) {
            LogUtils.ff(TAG, "get channel from wecarFlow is " + channelInAPP);
        }
        LogUtils.d(TAG, "get channel from wecarFlow is " + channelInAPP);
        return channelInAPP;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
    
        if ("".equals(r0) == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getAPPChannelFromSys() {
        String str;
        String str2 = null;
        try {
            SystemConfig.getInstance();
            String channel = SystemConfig.getChannel();
            str = channel == null ? null : channel.trim();
            LogUtils.fd(TAG, "channel in system config file is " + str);
            if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "null")) {
            }
        } catch (Exception e) {
            LogUtils.fe(TAG, "get channel from system config file error, e = " + e.toString());
        }
        str = null;
        if (!TextUtils.isEmpty(str) && !"".equals(str)) {
            return str;
        }
        try {
            String string = Settings.System.getString(ContextHolder.getContext().getContentResolver(), "tas_channel_id");
            if (string != null) {
                str2 = string.trim();
            }
            LogUtils.fd(TAG, "channel in system database is " + str2);
            return (TextUtils.isEmpty(str2) || TextUtils.equals(str2, "null")) ? str : !"".equals(str2) ? str2 : str;
        } catch (Exception e2) {
            LogUtils.fe(TAG, "get channel from system databases error, e = " + e2.toString());
            return str;
        }
    }

    public String getLocalAPPChannel() {
        return this.mAPPChannel;
    }

    public String getProduct() {
        return this.mProduct;
    }

    public IServiceConfig getServiceConfig() {
        return this.mServiceCfg;
    }

    public CloudConfig getCloudConfig() {
        return this.mCloudConfig;
    }

    public IDeviceConfig getDeviceConfig() {
        return this.mDeviceCfg;
    }

    public boolean isOpenCrowdsourcing() {
        return this.mOpenCrowdsourcing;
    }

    public boolean isShowLog() {
        return this.mShowLog;
    }

    public boolean isOnlineEnv() {
        return this.mOnlineEnv;
    }

    public String getAccountRequestBaseURL() {
        LogUtils.d(TAG, " reqEnv=" + this.mRequestEnv + ", onlineEnv=" + this.mOnlineEnv);
        String str = this.mOnlineEnv ? Constants.BASE_URL_ONLINE : Constants.BASE_URL_DEV;
        switch (this.mRequestEnv) {
            case 0:
                return Constants.BASE_URL_ONLINE;
            case 1:
                return Constants.BASE_URL_DEV;
            case 2:
                return Constants.BASE_URL_PRE_ONLINE;
            default:
                return str;
        }
    }

    public int getAccountRequestType() {
        return -1 == this.mRequestEnv ? !this.mOnlineEnv ? 1 : 0 : this.mRequestEnv;
    }

    public void addDeviceIds(Map<String, String> map) {
        if (this.mDeviceIds == null) {
            this.mDeviceIds = new HashMap();
        }
        this.mDeviceIds.putAll(map);
    }

    public Map<String, String> getGlobalDeviceIds() {
        Map<String, String> map;
        if (this.mUseLocalDeviceIds) {
            LogUtils.w(TAG, "从APP自身获取设备id，在上线时，务必将这个设置项关闭, 当前id为 " + this.mDeviceIds);
            map = this.mDeviceIds;
        } else if (this.mTempDeviceIds != null && !TextUtils.isEmpty(getDeviceIdFromMap(this.mTempDeviceIds))) {
            map = this.mTempDeviceIds;
        } else {
            boolean isAPPInstalled = PackageUtils.isAPPInstalled(ContextHolder.getContext(), "com.tencent.wecarnavi");
            boolean z = PackageUtils.isProcessRunning(ContextHolder.getContext(), "com.tencent.wecarnavi:subnavi") || !isAPPInstalled;
            Map<String, String> deviceIdsInAPP = getDeviceIdsInAPP("com.tencent.wecarnavi");
            LogUtils.ff(TAG, "get deviceIds from wecarNavi is " + deviceIdsInAPP + " --isInstalled:" + isAPPInstalled + " -shouldGet:" + z);
            if ((deviceIdsInAPP == null || deviceIdsInAPP.size() == 0) && z) {
                deviceIdsInAPP = getDeviceIdsInAPP("com.tencent.wecarspeech");
                LogUtils.ff(TAG, "get deviceIds from wecarSpeech is " + deviceIdsInAPP);
            }
            if ((deviceIdsInAPP == null || deviceIdsInAPP.size() == 0) && z) {
                deviceIdsInAPP = getDeviceIdsInAPP("com.tencent.wecarflow");
                LogUtils.ff(TAG, "get deviceIds from wecarFlow is " + deviceIdsInAPP);
            }
            Map<String, String> sdcardDeviceIds = getSdcardDeviceIds(deviceIdsInAPP);
            LogUtils.ff(TAG, "get getSdcardDeviceIds  is " + sdcardDeviceIds);
            this.mTempDeviceIds = sdcardDeviceIds;
            map = sdcardDeviceIds;
        }
        LogUtils.d(TAG, "getGlobalDeviceIds final return:" + map);
        return map;
    }

    private Map<String, String> getSdcardDeviceIds(Map<String, String> map) {
        String infoFromSDCard = AccountLocalHelper.getInfoFromSDCard("channel");
        if (!TextUtils.isEmpty(infoFromSDCard)) {
            String infoFromSDCard2 = AccountLocalHelper.getInfoFromSDCard(AccountLocalHelper.DEVICEID_KEY);
            if (map == null || !map.containsKey(AccountLocalHelper.DEVICEID_KEY) || TextUtils.isEmpty(map.get(AccountLocalHelper.DEVICEID_KEY)) || (!infoFromSDCard.equals(getChannelInAPP("com.tencent.wecarnavi")) && !TextUtils.isEmpty(infoFromSDCard2))) {
                if (map == null) {
                    map = new HashMap();
                }
                LogUtils.d(TAG, "get getSdcardDeviceIds from sdcard is " + infoFromSDCard2);
                map.put(AccountLocalHelper.DEVICEID_KEY, infoFromSDCard2);
            }
        }
        return map;
    }

    private String getDeviceIdFromMap(Map<String, String> map) {
        if (map != null) {
            return map.get(TextUtils.isEmpty(map.get(AccountLocalHelper.DEVICEID_KEY)) ? "deviceid" : AccountLocalHelper.DEVICEID_KEY);
        }
        return null;
    }

    public String getDeviceId() {
        return getDeviceIdFromMap(getGlobalDeviceIds());
    }

    public Map<String, String> getLocalDeviceIds() {
        IUniqueIdCallback iUniqueIdCallback = this.mUniqueIdCallback;
        Map<String, String> hashMap = (this.mDeviceIds == null || this.mDeviceIds.size() <= 0) ? new HashMap<>() : this.mDeviceIds;
        Map<String, String> collectUniqueIds = iUniqueIdCallback != null ? iUniqueIdCallback.collectUniqueIds() : null;
        LogUtils.d(TAG, "mUniqueIdCallback = " + iUniqueIdCallback + ", ids = " + collectUniqueIds + ", mDeviceIds = " + hashMap);
        if (collectUniqueIds == null || collectUniqueIds.size() <= 0) {
            return hashMap;
        }
        for (String str : hashMap.keySet()) {
            if (!collectUniqueIds.containsKey(str)) {
                collectUniqueIds.put(str, hashMap.get(str));
            }
        }
        LogUtils.d(TAG, "getLocalDeviceIds return: " + collectUniqueIds);
        return collectUniqueIds;
    }

    public void forceSetServiceConfig(IServiceConfig iServiceConfig) {
        this.mServiceCfg = iServiceConfig;
    }

    public void setChannel(String str) {
        this.mAPPChannel = str;
    }

    public boolean isUseBuiltInTTS() {
        return this.mUseBuiltInTTS;
    }

    public String getTTSResDir() {
        return this.mTTSResDir;
    }

    public int getTTSStreamType() {
        return this.mTTSStreamType;
    }

    public boolean isTTSOnlyMainProcess() {
        return this.mTTSOnlyMainProcess;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Builder {
        private String bAPPChannel;
        private IDeviceConfig bDeviceConfig;
        private Map<String, String> bDeviceIds;
        private long bGpstimeOffset;
        private boolean bOnlineEnv;
        private boolean bOpenCrowdsourcing;
        private String bProduct;
        private int bRequestEnv;
        private IServiceConfig bServiceConfig;
        private boolean bShowLog;
        private boolean bTTSOnlyMainProcess;
        private IUniqueIdCallback bUniqueIdCallback;
        private boolean bUseBuiltInTTS;
        private boolean bUseLocalChannel;
        private boolean bUseLocalDeviceIds;
        private boolean bUseNmea;

        public Builder setGpstimeOffset(long j) {
            this.bGpstimeOffset = j;
            return this;
        }

        public Builder useNmea(boolean z) {
            this.bUseNmea = z;
            return this;
        }

        public Builder(String str) {
            this.bRequestEnv = -1;
            this.bShowLog = true;
            this.bOnlineEnv = true;
            this.bOpenCrowdsourcing = false;
            this.bUseLocalChannel = false;
            this.bUseLocalDeviceIds = false;
            this.bUniqueIdCallback = null;
            this.bUseBuiltInTTS = false;
            this.bTTSOnlyMainProcess = true;
            this.bUseNmea = true;
            this.bAPPChannel = str;
        }

        public Builder() {
            this.bRequestEnv = -1;
            this.bShowLog = true;
            this.bOnlineEnv = true;
            this.bOpenCrowdsourcing = false;
            this.bUseLocalChannel = false;
            this.bUseLocalDeviceIds = false;
            this.bUniqueIdCallback = null;
            this.bUseBuiltInTTS = false;
            this.bTTSOnlyMainProcess = true;
            this.bUseNmea = true;
            this.bAPPChannel = "";
        }

        public Builder setCrowdsourcingEnable(boolean z) {
            this.bOpenCrowdsourcing = z;
            return this;
        }

        public Builder setLogEnable(boolean z) {
            this.bShowLog = z;
            return this;
        }

        public Builder setOnlineEnv(boolean z) {
            this.bOnlineEnv = z;
            return this;
        }

        public Builder setAccountRequestEnv(int i) {
            this.bRequestEnv = i;
            return this;
        }

        public Builder addDeviceIds(Map<String, String> map) {
            this.bDeviceIds = map;
            return this;
        }

        public Builder setProduct(String str) {
            this.bProduct = str;
            return this;
        }

        public Builder useBuiltInTTS(boolean z) {
            this.bUseBuiltInTTS = true;
            this.bTTSOnlyMainProcess = z;
            return this;
        }

        public Builder useLocalChannel(boolean z) {
            this.bUseLocalChannel = z;
            return this;
        }

        public Builder useLocalDeviceIds(boolean z) {
            this.bUseLocalDeviceIds = z;
            return this;
        }

        public Builder setServiceConfig(IServiceConfig iServiceConfig) {
            this.bServiceConfig = iServiceConfig;
            return this;
        }

        public Builder setUniqueIdCallback(IUniqueIdCallback iUniqueIdCallback) {
            this.bUniqueIdCallback = iUniqueIdCallback;
            return this;
        }

        public SDKConfig build() {
            SDKConfig sDKConfig = new SDKConfig();
            sDKConfig.mAPPChannel = this.bAPPChannel;
            sDKConfig.mProduct = this.bProduct;
            if (this.bServiceConfig == null) {
                this.bServiceConfig = new ServiceConfig();
            }
            sDKConfig.mServiceCfg = this.bServiceConfig;
            if (this.bDeviceConfig == null) {
                this.bDeviceConfig = new DeviceConfig();
            }
            if (this.bDeviceIds == null) {
                this.bDeviceIds = new HashMap();
            }
            sDKConfig.mUniqueIdCallback = this.bUniqueIdCallback;
            if (this.bUseBuiltInTTS) {
                sDKConfig.mUseBuiltInTTS = true;
                sDKConfig.mTTSOnlyMainProcess = this.bTTSOnlyMainProcess;
            }
            sDKConfig.mDeviceCfg = this.bDeviceConfig;
            sDKConfig.mShowLog = this.bShowLog;
            sDKConfig.mOnlineEnv = this.bOnlineEnv;
            sDKConfig.mRequestEnv = this.bRequestEnv;
            if (this.bRequestEnv == 1) {
                sDKConfig.mOnlineEnv = false;
            } else if (this.bRequestEnv != -1) {
                sDKConfig.mOnlineEnv = true;
            }
            sDKConfig.mDeviceIds = this.bDeviceIds;
            sDKConfig.mUseLocalChannel = this.bUseLocalChannel;
            sDKConfig.mUseLocalDeviceIds = this.bUseLocalDeviceIds;
            sDKConfig.mOpenCrowdsourcing = this.bOpenCrowdsourcing;
            sDKConfig.mGpstimeOffset = this.bGpstimeOffset;
            sDKConfig.mUseNmea = this.bUseNmea;
            return sDKConfig;
        }
    }

    public String toString() {
        return "SDKConfig{mAPPChannel='" + this.mAPPChannel + "', mTempChannel='" + this.mTempChannel + "', mProduct='" + this.mProduct + "', mServiceCfg=" + this.mServiceCfg + ", mDeviceCfg=" + this.mDeviceCfg + ", mCloudConfig=" + this.mCloudConfig + ", mRequestEnv=" + this.mRequestEnv + ", mShowLog=" + this.mShowLog + ", mOnlineEnv=" + this.mOnlineEnv + ", mOpenCrowdsourcing=" + this.mOpenCrowdsourcing + ", mUseLocalChannel=" + this.mUseLocalChannel + ", mUseLocalDeviceIds=" + this.mUseLocalDeviceIds + ", mDeviceIds=" + this.mDeviceIds + ", mUniqueIdCallback=" + this.mUniqueIdCallback + ", mUseBuiltInTTS=" + this.mUseBuiltInTTS + ", mTTSResDir='" + this.mTTSResDir + "', mTTSStreamType=" + this.mTTSStreamType + ", mTTSOnlyMainProcess=" + this.mTTSOnlyMainProcess + ", mGpstimeOffset=" + this.mGpstimeOffset + ", mUseNmea=" + this.mUseNmea + ", mTempDeviceIds=" + this.mTempDeviceIds + '}';
    }
}
