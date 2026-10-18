package com.tencent.taes.framework.server.router;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.util.Log;
import com.tencent.taes.framework.interfaces.IRouterStrategy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SingleAppRouterStrategy implements IRouterStrategy {
    private String TAG = "SingleAppRouterStrategy";
    private List<IRouterStrategy.ServiceItemInfo> mServiceList = new ArrayList();

    @Override // com.tencent.taes.framework.interfaces.IRouterStrategy
    public void scanAndSortService(Context context, String str, List<String> list) {
        List<ResolveInfo> list2;
        String str2;
        Log.d(this.TAG, "getMatchIntentByAction  action:" + str);
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
        for (int i = 0; i < list2.size(); i++) {
            ResolveInfo resolveInfo = list2.get(i);
            String str3 = resolveInfo.serviceInfo.packageName;
            if (context.getPackageName().equals(str3)) {
                String str4 = resolveInfo.serviceInfo.name;
                ComponentName componentName = new ComponentName(str3, str4);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                long j = -1;
                try {
                    Bundle bundle = context.getPackageManager().getApplicationInfo(str3, 128).metaData;
                    if (bundle == null || bundle.getString(str) == null) {
                        str2 = "";
                    } else {
                        str2 = bundle.getString(str).replace("L", "");
                        try {
                            String[] split = str2.split("\\.");
                            Log.d(this.TAG, "version:" + str2 + " versions:" + split.length);
                            if (split.length == 4) {
                                j = Long.valueOf(split[0] + split[1] + split[2] + String.format("%04d", Integer.valueOf(split[3]))).longValue();
                            } else {
                                Log.e(this.TAG, str3 + "   " + str4 + " VersionCode 不合法  x.x.x.xxxx !!!");
                            }
                        } catch (PackageManager.NameNotFoundException e2) {
                            e = e2;
                            e.printStackTrace();
                            this.mServiceList.add(new IRouterStrategy.ServiceItemInfo(str2, j, str3, intent2));
                            Log.d(this.TAG, "scanAndSortExitService  mServiceList: " + this.mServiceList);
                            return;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e3) {
                    e = e3;
                    str2 = "";
                }
                this.mServiceList.add(new IRouterStrategy.ServiceItemInfo(str2, j, str3, intent2));
                Log.d(this.TAG, "scanAndSortExitService  mServiceList: " + this.mServiceList);
                return;
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
}
