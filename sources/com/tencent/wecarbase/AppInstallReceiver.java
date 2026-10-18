package com.tencent.wecarbase;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.tencent.wecarbase.common.ConfigHolder;
import com.tencent.wecarbase.config.IServiceConfig;
import com.tencent.wecarbase.config.def.ServiceConfig;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppInstallReceiver extends BroadcastReceiver {
    private static final String TAG = "AppInstallReceiverServiceConfig";
    protected IServiceConfig mServiceConfig;

    private void resetHostPackage() {
        this.mServiceConfig = ConfigHolder.getInstance().getConfig() == null ? new ServiceConfig() : ConfigHolder.getInstance().getConfig().getServiceConfig();
        this.mServiceConfig.resetHostPackage();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        LogUtils.e(TAG, "---------  acitonStr ---------" + action);
        try {
            if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                LogUtils.e(TAG, "--------- ACTION_PACKAGE_ADDED --------" + schemeSpecificPart);
                if (ServiceConfig.isContainsPkg(schemeSpecificPart)) {
                    LogUtils.e(TAG, "--------- ACTION_PACKAGE_ADDED isContainsPkg --------");
                    resetHostPackage();
                }
            } else if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                String schemeSpecificPart2 = intent.getData().getSchemeSpecificPart();
                LogUtils.e(TAG, "--------- ACTION_PACKAGE_REMOVED --------");
                if (ServiceConfig.isContainsPkg(schemeSpecificPart2)) {
                    LogUtils.e(TAG, "--------- ACTION_PACKAGE_ADDED isContainsPkg --------");
                    resetHostPackage();
                }
            } else if ("android.intent.action.PACKAGE_REPLACED".equals(action)) {
                LogUtils.e(TAG, "--------- ACTION_PACKAGE_REPLACED --------");
            }
        } catch (Throwable th) {
            LogUtils.e(TAG, "error: " + Log.getStackTraceString(th));
        }
    }
}
