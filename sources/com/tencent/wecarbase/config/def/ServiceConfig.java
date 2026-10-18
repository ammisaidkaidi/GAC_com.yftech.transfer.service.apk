package com.tencent.wecarbase.config.def;

import android.text.TextUtils;
import android.util.Log;
import com.baidu.navisdk.hudsdk.client.HUDSDkEventCallback;
import com.tencent.taifeedback.upload.sdk.utils.ListUtil;
import com.tencent.taifeedback.upload.sdk.utils.Utils;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.config.IServiceConfig;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.PackageUtils;
import com.tencent.wecarbase.utils.SPUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class ServiceConfig implements IServiceConfig {
    private static final String HOST_NAME = "hostName";
    public static final String PKG_WECAR_FLOW = "com.tencent.wecarflow";
    public static final String PKG_WECAR_LINE = "com.tencent.wecarprofile";
    public static final String PKG_WECAR_MUSIC = "com.tencent.wecarmusic";
    public static final String PKG_WECAR_MUSIC_CP = "com.tencent.wecarmusicp";
    public static final String PKG_WECAR_NAVI = "com.tencent.wecarnavi";
    public static final String PKG_WECAR_NEWS = "com.tencent.wecarnews";
    public static final String PKG_WECAR_SPEECH = "com.tencent.wecarspeech";
    public static final String PKG_WECAR_TAI_SERVICE = "com.tencent.taiservice";
    private static final String TAG = "ServiceConfig";
    private static final List<APPItem> APPItems = new ArrayList();
    private static final HashMap<String, Integer> sPkgNameMap = new HashMap<>();
    private static final HashMap<Integer, String> sAppTypeMap = new HashMap<>();

    static {
        APPItems.add(new APPItem("com.tencent.wecarnavi", 600));
        APPItems.add(new APPItem("com.tencent.taiservice", 500));
        APPItems.add(new APPItem("com.tencent.wecarspeech", HUDSDkEventCallback.OnConnectCallback.CLOSE_NORMAL));
        APPItems.add(new APPItem("com.tencent.wecarflow", 300));
        APPItems.add(new APPItem("com.tencent.wecarmusic", 200));
        APPItems.add(new APPItem("com.tencent.wecarmusicp", 199));
        APPItems.add(new APPItem("com.tencent.wecarnews", 100));
        APPItems.add(new APPItem("com.tencent.wecarprofile", 99));
        sPkgNameMap.put("com.tencent.taiservice", 0);
        sPkgNameMap.put("com.tencent.wecarmusic", 1);
        sPkgNameMap.put("com.tencent.wecarmusicp", 2);
        sPkgNameMap.put("com.tencent.wecarnews", 3);
        sPkgNameMap.put("com.tencent.wecarnavi", 4);
        sPkgNameMap.put("com.tencent.wecarspeech", 5);
        sPkgNameMap.put("com.tencent.wecarflow", 6);
        sPkgNameMap.put("com.tencent.wecarprofile", 7);
        for (Map.Entry<String, Integer> entry : sPkgNameMap.entrySet()) {
            sAppTypeMap.put(entry.getValue(), entry.getKey());
        }
    }

    public static final int getAppTypeByPkgName(String str) {
        if (sPkgNameMap.containsKey(str)) {
            return sPkgNameMap.get(str).intValue();
        }
        return 0;
    }

    public static boolean isContainsPkg(String str) {
        return sPkgNameMap.containsKey(str);
    }

    public static final String getPkgNameByAppType(int i) {
        return sAppTypeMap.containsKey(Integer.valueOf(i)) ? sAppTypeMap.get(Integer.valueOf(i)) : "com.tencent.wecarnavi";
    }

    @Override // com.tencent.wecarbase.config.IServiceConfig
    public boolean shouldLaunchService() {
        List<APPItem> sortedAPPList = getSortedAPPList();
        for (int i = 0; i < sortedAPPList.size(); i++) {
            if (sortedAPPList.get(i).sdkVersion != -1) {
                boolean equals = sortedAPPList.get(i).pkgName.equals(ContextHolder.getContext().getPackageName());
                LogUtils.d(TAG, "shouldLaunchService return " + equals);
                return equals;
            }
        }
        LogUtils.d(TAG, "shouldLaunchService return false");
        return false;
    }

    private String getSpecificHostName() {
        for (int i = 0; i < APPItems.size(); i++) {
            if ((TextUtils.equals(APPItems.get(i).pkgName, "com.tencent.wecarnavi") || TextUtils.equals(APPItems.get(i).pkgName, "com.tencent.wecarmusic") || TextUtils.equals(APPItems.get(i).pkgName, "com.tencent.wecarmusicp") || TextUtils.equals(APPItems.get(i).pkgName, "com.tencent.wecarnews") || TextUtils.equals(APPItems.get(i).pkgName, "com.tencent.wecarprofile")) && getWecarNavi(APPItems.get(i).pkgName) == -1) {
                for (int i2 = 0; i2 < APPItems.size(); i2++) {
                    if (PackageUtils.isAPPInstalled(ContextHolder.getContext(), APPItems.get(i2).pkgName)) {
                        LogUtils.d(TAG, "old app" + APPItems.get(i).pkgName + " existed so return:" + APPItems.get(i2).pkgName);
                        return APPItems.get(i2).pkgName;
                    }
                }
            }
        }
        return null;
    }

    private long getWecarNavi(String str) {
        if (PackageUtils.isAPPInstalled(ContextHolder.getContext(), str)) {
            return PackageUtils.getTaiAARCodeInAPP(ContextHolder.getContext(), str);
        }
        return 1L;
    }

    @Override // com.tencent.wecarbase.config.IServiceConfig
    public String getHostPackage() {
        String str;
        try {
            str = (String) SPUtils.getSP(ContextHolder.getContext(), "hostName", String.class, null);
            LogUtils.d(TAG, "SP getHostPackage return " + str);
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String specificHostName = getSpecificHostName();
        LogUtils.d(TAG, " getHostPackage hostName == " + specificHostName);
        if (!TextUtils.isEmpty(specificHostName)) {
            SPUtils.putSP(ContextHolder.getContext(), "hostName", specificHostName);
            return specificHostName;
        }
        List<APPItem> sortedAPPList = getSortedAPPList();
        for (int i = 0; i < sortedAPPList.size(); i++) {
            if (sortedAPPList.get(i).sdkVersion != -1) {
                LogUtils.d(TAG, "appinstall getHostPackage return " + sortedAPPList.get(i).pkgName);
                SPUtils.putSP(ContextHolder.getContext(), "hostName", sortedAPPList.get(i).pkgName);
                return sortedAPPList.get(i).pkgName;
            }
        }
        LogUtils.d(TAG, "getHostPackage return null");
        return null;
    }

    @Override // com.tencent.wecarbase.config.IServiceConfig
    public void resetHostPackage() {
        try {
            String specificHostName = getSpecificHostName();
            LogUtils.d(TAG, " resetHostPackage hostName == " + specificHostName);
            if (!TextUtils.isEmpty(specificHostName)) {
                SPUtils.putSP(ContextHolder.getContext(), "hostName", specificHostName);
            } else {
                List<APPItem> sortedAPPList = getSortedAPPList();
                for (int i = 0; i < sortedAPPList.size(); i++) {
                    if (sortedAPPList.get(i).sdkVersion != -1) {
                        LogUtils.e(TAG, " ------appinstall resetHostPackage service return------- " + sortedAPPList.get(i).pkgName);
                        SPUtils.putSP(ContextHolder.getContext(), "hostName", sortedAPPList.get(i).pkgName);
                        break;
                    }
                }
            }
        } catch (Exception e) {
            Utils.getInstance().log(TAG, e);
        }
    }

    @Override // com.tencent.wecarbase.config.IServiceConfig
    public boolean shouldResetTaiClient() {
        String hostPackage = getHostPackage();
        for (int i = 0; i < APPItems.size(); i++) {
            if (!APPItems.get(i).pkgName.equals(hostPackage)) {
                if (PackageUtils.isProcessRunning(ContextHolder.getContext(), APPItems.get(i).pkgName + PackageUtils.WECARBASE_PROCESS_NAME)) {
                    LogUtils.d(TAG, " shouldResetTaiClient shouldReset APPItems.get(i).pkgName == " + APPItems.get(i).pkgName);
                    return true;
                }
            }
        }
        return false;
    }

    private List<APPItem> getSortedAPPList() {
        try {
            List<APPItem> deepCopy = ListUtil.deepCopy(APPItems);
            for (int i = 0; i < deepCopy.size(); i++) {
                deepCopy.get(i).sdkVersion = PackageUtils.getPriorityCodeInAPP(deepCopy.get(i).pkgName);
            }
            Collections.sort(deepCopy, new Comparator<APPItem>() { // from class: com.tencent.wecarbase.config.def.ServiceConfig.1
                @Override // java.util.Comparator
                public int compare(APPItem aPPItem, APPItem aPPItem2) {
                    if (aPPItem.sdkVersion > aPPItem2.sdkVersion) {
                        return -1;
                    }
                    if (aPPItem.sdkVersion < aPPItem2.sdkVersion) {
                        return 1;
                    }
                    if (aPPItem.priority > aPPItem2.priority) {
                        return -1;
                    }
                    return aPPItem.priority < aPPItem2.priority ? 1 : 0;
                }
            });
            return deepCopy;
        } catch (Exception e) {
            LogUtils.e(TAG, Log.getStackTraceString(e));
            return APPItems;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class APPItem implements Serializable {
        private String pkgName;
        private int priority;
        private long sdkVersion;

        APPItem(String str, int i) {
            this.pkgName = str;
            this.priority = i;
        }

        public String toString() {
            return "package = " + this.pkgName + ", sdkVersion = " + this.sdkVersion + ", priority = " + this.priority;
        }
    }
}
