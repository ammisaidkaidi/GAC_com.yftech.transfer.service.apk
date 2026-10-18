package com.tencent.taes.framework.server.router;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.util.Log;
import com.tencent.taes.framework.interfaces.IRouterStrategy;
import com.tencent.taes.framework.parser.ConfigConstant;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SMSRouterStrategy implements IRouterStrategy {
    private Context mContext;
    private String TAG = "SMSRouterStrategy";
    private List<IRouterStrategy.ServiceItemInfo> mServiceList = new ArrayList();

    @Override // com.tencent.taes.framework.interfaces.IRouterStrategy
    public void scanAndSortService(Context context, String str, List<String> list) {
        List<ResolveInfo> list2;
        Log.d(this.TAG, "getMatchIntentByAction  action:" + str);
        this.mContext = context;
        this.mServiceList.clear();
        Intent intent = new Intent(str);
        PackageManager packageManager = context.getPackageManager();
        try {
            intent.addFlags(32);
            list2 = packageManager.queryIntentServices(intent, 0);
        } catch (Exception e) {
            Log.e("ServiceUtils", e.toString());
            list2 = null;
        }
        if (list2 == null || list2.size() == 0) {
            return;
        }
        if (!isSupportSMSRoute(context, context.getPackageName())) {
            addServiceList(list2, str, context.getPackageName(), intent);
            return;
        }
        for (String str2 : list) {
            if (isSupportSMSRoute(context, str2)) {
                addServiceList(list2, str, str2, intent);
            }
        }
    }

    @Override // com.tencent.taes.framework.interfaces.IRouterStrategy
    public IRouterStrategy.ServiceItemInfo getHostServiceInfo() {
        if (this.mServiceList == null || this.mServiceList.isEmpty()) {
            return null;
        }
        return this.mServiceList.get(0);
    }

    private boolean isSupportSMSRoute(Context context, String str) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            if (bundle == null || !bundle.containsKey(ConfigConstant.METE_DATA_SUPPORT_SMS_ROUTE)) {
                return true;
            }
            return bundle.getBoolean(ConfigConstant.METE_DATA_SUPPORT_SMS_ROUTE);
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(this.TAG, e.getMessage());
            return true;
        }
    }

    private void addServiceList(List<ResolveInfo> list, String str, String str2, Intent intent) {
        String str3;
        for (int i = 0; i < list.size(); i++) {
            ResolveInfo resolveInfo = list.get(i);
            String str4 = resolveInfo.serviceInfo.packageName;
            if (str2.equals(str4)) {
                String str5 = resolveInfo.serviceInfo.name;
                ComponentName componentName = new ComponentName(str4, str5);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                long j = -1;
                try {
                    Bundle bundle = this.mContext.getPackageManager().getApplicationInfo(str4, 128).metaData;
                    if (bundle == null || bundle.getString(str) == null) {
                        str3 = "";
                    } else {
                        str3 = bundle.getString(str).replace("L", "");
                        try {
                            String[] split = str3.split("\\.");
                            Log.d(this.TAG, "version:" + str3 + " versions:" + split.length);
                            if (split.length == 4) {
                                j = Long.valueOf(split[0] + split[1] + split[2] + String.format("%04d", Integer.valueOf(split[3]))).longValue();
                            } else {
                                Log.e(this.TAG, str4 + "   " + str5 + " VersionCode 不合法  x.x.x.xxxx !!!");
                            }
                        } catch (PackageManager.NameNotFoundException e) {
                            e = e;
                            e.printStackTrace();
                            this.mServiceList.add(new IRouterStrategy.ServiceItemInfo(str3, j, str4, intent2));
                            Log.d(this.TAG, "scanAndSortExitService  mServiceList: " + this.mServiceList);
                            return;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    e = e2;
                    str3 = "";
                }
                this.mServiceList.add(new IRouterStrategy.ServiceItemInfo(str3, j, str4, intent2));
                Log.d(this.TAG, "scanAndSortExitService  mServiceList: " + this.mServiceList);
                return;
            }
        }
    }
}
