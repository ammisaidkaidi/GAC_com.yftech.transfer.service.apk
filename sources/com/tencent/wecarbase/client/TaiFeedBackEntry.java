package com.tencent.wecarbase.client;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.wecarbase.Constants;
import com.tencent.wecarbase.common.ConfigHolder;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class TaiFeedBackEntry {
    private static final String TAG = "TaiFeedBackEntry";

    public static void startFeedBackCenterActivity(Context context, String str, ArrayList<String> arrayList, String str2, int i) {
        startActivity(context, str, Constants.FEED_BACK_CENTER_ACTION, arrayList, str2, i, null);
    }

    public static void startFeedBackActivity(Context context, String str, ArrayList<String> arrayList, String str2) {
        startActivity(context, str, Constants.FEED_BACK_ACTION_NORMAL, arrayList, str2, -1, null);
    }

    public static void startFeedBackCenterActivity(Context context, String str, String str2, ArrayList<String> arrayList, String str3, int i, Map<String, String> map) {
        startActivity(context, str, str2, arrayList, str3, i, map);
    }

    public static void startActivity(Context context, String str, String str2, ArrayList<String> arrayList, String str3, int i, Map<String, String> map) {
        if (context == null) {
            LogUtils.e(TAG, "startActivity action:" + str2 + " and error context is null!");
            return;
        }
        LogUtils.d(TAG, " feedback startActivity action:" + str2 + " mFilePathList = " + arrayList + " screenShotFilePath = " + str3 + " pkgName = " + context.getPackageName());
        try {
            Intent intent = new Intent();
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            intent.setAction(str2);
            intent.putExtra("from", str);
            intent.putExtra("mScreenShotFilePath", str3);
            intent.putExtra("pkgName", context.getPackageName());
            if (i >= 0) {
                intent.putExtra("showMode", i);
            }
            if (map != null && map.containsKey("immerse")) {
                intent.putExtra("immerse", map.get("immerse"));
            }
            intent.setPackage(ConfigHolder.getInstance().getConfig().getServiceConfig().getHostPackage());
            intent.putStringArrayListExtra("mFilePathList", arrayList);
            context.startActivity(intent);
        } catch (Exception e) {
            LogUtils.e(TAG, "startFeedBackActivity, error: " + Log.getStackTraceString(e));
        }
    }
}
