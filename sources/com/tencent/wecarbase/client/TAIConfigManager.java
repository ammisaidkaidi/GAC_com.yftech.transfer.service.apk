package com.tencent.wecarbase.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.RemoteException;
import android.text.TextUtils;
import com.tencent.taes.framework.server.connect.BaseServiceConnection;
import com.tencent.wecarbase.IConfigListener;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.NetworkUtils;
import java.util.Date;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAIConfigManager {
    public static final String ACTION_TAI_CONFIG_CHANGED = "action_tai_config_changed";
    public static final String CONTEXT_NOT_INIT = "context is null, not inited ";
    public static final int ERROR_TAI_CONFIG = -1;
    public static final String PRODUCT_CFG_KEY_crowdSourcing = "crowdSourcing";
    public static final String PRODUCT_CFG_KEY_lastMileNav = "lastMileNav";
    private static final String TAG = "TAIConfigManager";
    public static final String USER_CFG_KEY_lastMileNav = "lastMileNav";
    private String mAppName;
    private String mAppVer;
    private ITAIConfigChangedListener mConfigChangedListener;
    private Context mContext;
    private long mLastNetworkChangedAction;
    private BroadcastReceiver mNetworkReceiver;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface ITAIConfigChangedListener {
        void onTAIConfigChangedEvent();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class SingletonHolder {
        private static final TAIConfigManager INSTANCE = new TAIConfigManager();

        private SingletonHolder() {
        }
    }

    private TAIConfigManager() {
        this.mNetworkReceiver = new BroadcastReceiver() { // from class: com.tencent.wecarbase.client.TAIConfigManager.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    LogUtils.d(TAIConfigManager.TAG, "receive CONNECTIVITY_ACTION preLoadConfig");
                    if (NetworkUtils.isNetworkAvailable(TAIConfigManager.this.mContext)) {
                        Date date = new Date(System.currentTimeMillis());
                        long time = date.getTime() - TAIConfigManager.this.mLastNetworkChangedAction;
                        if (TAIConfigManager.this.mLastNetworkChangedAction == 0 || time <= BaseServiceConnection.DEFAULT_REBIND_TIME_LIMIT) {
                            LogUtils.d(TAIConfigManager.TAG, "network event time is too short, interval: " + time);
                            TAIConfigManager.this.mLastNetworkChangedAction = date.getTime();
                            return;
                        }
                        TAIConfigManager.this.mLastNetworkChangedAction = date.getTime();
                        TAIConfigManager.this.preLoadConfig();
                        return;
                    }
                    return;
                }
                if (TAIConfigManager.ACTION_TAI_CONFIG_CHANGED.equals(action)) {
                    LogUtils.d(TAIConfigManager.TAG, "receive ACTION_TAI_CONFIG_CHANGED onTAIConfigChangedEvent");
                    if (TAIConfigManager.this.mConfigChangedListener != null) {
                        TAIConfigManager.this.mConfigChangedListener.onTAIConfigChangedEvent();
                    }
                }
            }
        };
    }

    public static final TAIConfigManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public void init(Context context, String str, String str2, ITAIConfigChangedListener iTAIConfigChangedListener) {
        this.mContext = context;
        this.mAppName = str;
        this.mAppVer = str2;
        this.mConfigChangedListener = iTAIConfigChangedListener;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction(ACTION_TAI_CONFIG_CHANGED);
        intentFilter.setPriority(1000);
        this.mContext.registerReceiver(this.mNetworkReceiver, intentFilter);
        LogUtils.d(TAG, "init preLoadConfig");
        preLoadConfig();
    }

    public void unInit() {
        try {
            if (this.mNetworkReceiver != null) {
                this.mContext.unregisterReceiver(this.mNetworkReceiver);
                this.mNetworkReceiver = null;
            }
        } catch (Exception e) {
            LogUtils.e(TAG, "unInit error:" + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void preLoadConfig() {
        LogUtils.d(TAG, "enter preLoadConfig");
        getProductConfigByKey(null, null);
        getUserConfigByKey(null, null);
    }

    public void getProductConfigByKey(String str, IConfigListener iConfigListener) {
        if (this.mContext == null) {
            LogUtils.fe(TAG, CONTEXT_NOT_INIT);
            return;
        }
        if (TextUtils.isEmpty(this.mAppName) || TextUtils.isEmpty(this.mAppVer)) {
            LogUtils.fe(TAG, "appname or appver is null");
            if (iConfigListener != null) {
                try {
                    iConfigListener.onError(-1);
                    return;
                } catch (RemoteException e) {
                    LogUtils.fe(TAG, "getProductConfigByKey, error: " + e.toString());
                    return;
                }
            }
            return;
        }
        AccountManager.getInstance().getProductConfigByKey(this.mAppName, this.mAppVer, str, iConfigListener);
    }

    public void getUserConfigByKey(String str, IConfigListener iConfigListener) {
        if (this.mContext == null) {
            LogUtils.fe(TAG, CONTEXT_NOT_INIT);
        } else {
            AccountManager.getInstance().getUserConfigByKey(str, iConfigListener);
        }
    }

    public void setUserConfig(String str, String str2, IConfigListener iConfigListener) {
        if (this.mContext == null) {
            LogUtils.fe(TAG, CONTEXT_NOT_INIT);
        } else {
            AccountManager.getInstance().setUserConfig(str, str2, iConfigListener);
        }
    }
}
