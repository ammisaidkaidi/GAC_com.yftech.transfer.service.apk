package com.tencent.wecarbase.client;

import android.content.Context;
import android.content.Intent;
import com.baidu.navisdk.hudsdk.client.HUDConstants;
import com.tencent.wecarbase.Constants;
import com.tencent.wecarbase.common.ConfigHolder;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.utils.LogUtils;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class TaiAccountEntry {
    private static final String TAG = String.valueOf(TaiAccountEntry.class);

    public static void startWeChatBindActivity(String str) {
        LogUtils.d(TAG, "startWeChatBindActivity, from = " + str);
        startWeChatBindActivity(ContextHolder.getContext(), str);
    }

    public static void startWeChatBindActivity(Context context, String str) {
        startWeChatBindActivity(context, str, null);
    }

    public static void startWeChatBindActivity(Context context, String str, Map<String, String> map) {
        if (context == null) {
            context = ContextHolder.getContext();
        }
        String hostPackage = ConfigHolder.getInstance().getConfig().getServiceConfig().getHostPackage();
        String packageName = context.getPackageName();
        try {
            Intent intent = new Intent();
            intent.setAction(Constants.TAI_ACCOUNT_CENTER);
            intent.putExtra("pkgName", packageName);
            intent.putExtra("from", str);
            if (map != null && map.containsKey("immerse")) {
                intent.putExtra("immerse", map.get("immerse"));
            }
            intent.setPackage(hostPackage);
            intent.setFlags(HUDConstants.NaviLane.NAVILANE_TURN_LEFT_90_GRAY);
            context.startActivity(intent);
        } catch (Exception e) {
            LogUtils.e(TAG, "startWeChatBindActivity, error: " + e.getMessage());
        }
    }
}
