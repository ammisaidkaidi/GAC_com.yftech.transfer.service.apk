package com.tencent.wecarbase.client.applet;

import android.content.Context;
import android.content.Intent;
import com.tencent.wecarbase.common.ContextHolder;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class TaiAppletEntry {
    private static final String SERVICE_PARAM_ENTRY = "MossEntry";
    private static final String SERVICE_PARAM_INTENT = "MossIntent";
    private static final String SERVICE_PARAM_LAUNCH = "MossLaunch";
    private static final String SERVICE_PARAM_URL = "MossUrl";

    public static void startAppletService(Context context, String str, String str2) {
        if (context == null) {
            context = ContextHolder.getContext();
        }
        try {
            Intent intent = new Intent();
            intent.setClassName("com.tencent.wecarmas", "com.tencent.moss.shell.service.MossService");
            intent.putExtra(SERVICE_PARAM_INTENT, SERVICE_PARAM_ENTRY);
            intent.putExtra(SERVICE_PARAM_URL, str2);
            context.startService(intent);
        } catch (Exception e) {
            LogUtils.e("TaiAppletEntry", "startAppletService, error: " + e.getMessage());
        }
    }
}
