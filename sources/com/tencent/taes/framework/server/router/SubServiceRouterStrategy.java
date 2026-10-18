package com.tencent.taes.framework.server.router;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.taes.framework.interfaces.IRouterStrategy;
import com.tencent.taes.framework.parser.ConfigConstant;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SubServiceRouterStrategy implements IRouterStrategy {
    private static final String TAES_SERVICE_APP = "com.tencent.taes";
    private IRouterStrategy mCurrentStrategy;

    @Override // com.tencent.taes.framework.interfaces.IRouterStrategy
    public void scanAndSortService(Context context, String str, List<String> list) {
        if (!isSupportSMSDynamicRoute(context)) {
            this.mCurrentStrategy = new SingleAppRouterStrategy();
        } else {
            this.mCurrentStrategy = new CommonRouterStrategy();
        }
        this.mCurrentStrategy.scanAndSortService(context, str, list);
    }

    @Override // com.tencent.taes.framework.interfaces.IRouterStrategy
    public IRouterStrategy.ServiceItemInfo getHostServiceInfo() {
        return this.mCurrentStrategy.getHostServiceInfo();
    }

    private boolean checkAppInstalled(Context context, String str) {
        PackageInfo packageInfo;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
            Log.e("SubServiceRouterStrategy", "com.tencent.taes NameNotFoundException!");
        }
        return packageInfo != null;
    }

    private boolean isSupportSMSDynamicRoute(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null || !bundle.containsKey(ConfigConstant.METE_DATA_SUPPORT_SMS_ROUTE)) {
                return true;
            }
            return bundle.getBoolean(ConfigConstant.METE_DATA_SUPPORT_SMS_ROUTE);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return true;
        }
    }
}
