package com.tencent.wecar.tts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.support.v7.widget.ActivityChooserView;
import com.tencent.wecar.tts.log.TtsLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class TAESSubServiceRouterStrategy {
    private static final String TAG = "CommonRouterStrategy";
    private List<ServiceItemInfo> mServiceList = new ArrayList();

    public void scanAndSortService(Context context, String str, List<String> list) {
        List<ResolveInfo> list2;
        String str2;
        TtsLog.d(TAG, "getMatchIntentByAction  action:" + str);
        this.mServiceList.clear();
        Intent intent = new Intent(str);
        PackageManager packageManager = context.getPackageManager();
        try {
            intent.addFlags(32);
            list2 = packageManager.queryIntentServices(intent, 0);
        } catch (Exception e) {
            TtsLog.e("ServiceUtils", e.toString());
            list2 = null;
        }
        List<ResolveInfo> list3 = list2;
        if (list3 == null || list3.size() == 0) {
            return;
        }
        for (int i = 0; i < list3.size(); i++) {
            ResolveInfo resolveInfo = list3.get(i);
            String str3 = resolveInfo.serviceInfo.packageName;
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
                        TtsLog.d(TAG, "version:" + str2 + " versions:" + split.length);
                        if (split.length == 4) {
                            j = Long.valueOf(split[0] + split[1] + split[2] + String.format("%04d", Integer.valueOf(split[3]))).longValue();
                        } else {
                            TtsLog.e(TAG, str3 + "   " + str4 + " VersionCode 不合法  x.x.x.xxxx !!!");
                        }
                    } catch (PackageManager.NameNotFoundException e2) {
                        e = e2;
                        e.printStackTrace();
                        String str5 = str2;
                        long j2 = j;
                        TtsLog.d(TAG, "versionCode:" + j2);
                        this.mServiceList.add(new ServiceItemInfo(str5, j2, str3, intent2));
                    }
                }
            } catch (PackageManager.NameNotFoundException e3) {
                e = e3;
                str2 = "";
            }
            String str52 = str2;
            long j22 = j;
            TtsLog.d(TAG, "versionCode:" + j22);
            this.mServiceList.add(new ServiceItemInfo(str52, j22, str3, intent2));
        }
        sortRouter(list);
        TtsLog.d(TAG, "scanAndSortExitService  mServiceList: " + this.mServiceList);
    }

    private void sortRouter(List<String> list) {
        for (ServiceItemInfo serviceItemInfo : this.mServiceList) {
            if (list.indexOf(serviceItemInfo.pkgName) == -1) {
                serviceItemInfo.priority = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            } else {
                serviceItemInfo.priority = list.indexOf(serviceItemInfo.pkgName);
            }
        }
        Collections.sort(this.mServiceList, new Comparator<ServiceItemInfo>() { // from class: com.tencent.wecar.tts.TAESSubServiceRouterStrategy.1
            @Override // java.util.Comparator
            public int compare(ServiceItemInfo serviceItemInfo2, ServiceItemInfo serviceItemInfo3) {
                if (serviceItemInfo2.sdkVersion > serviceItemInfo3.sdkVersion) {
                    return -1;
                }
                if (serviceItemInfo2.sdkVersion >= serviceItemInfo3.sdkVersion && serviceItemInfo2.priority <= serviceItemInfo3.priority) {
                    return serviceItemInfo2.priority < serviceItemInfo3.priority ? -1 : 0;
                }
                return 1;
            }
        });
    }

    public ServiceItemInfo getHostServiceInfo() {
        if (this.mServiceList == null || this.mServiceList.isEmpty()) {
            return null;
        }
        return this.mServiceList.get(0);
    }
}
