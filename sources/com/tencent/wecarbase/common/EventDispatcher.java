package com.tencent.wecarbase.common;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.tencent.wecarbase.config.SDKConfig;
import com.tencent.wecarbase.utils.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class EventDispatcher {
    private static EventDispatcher INSTANCE = new EventDispatcher();
    private String TAG = getClass().getSimpleName();

    public void init(Context context) {
    }

    private EventDispatcher() {
    }

    public static EventDispatcher getInstance() {
        return INSTANCE;
    }

    public void notifySDKReset(Context context, boolean z) {
        LogUtils.d(this.TAG, " notifySDKReset, includeSelf: " + z);
        Intent intent = new Intent(SDKConfig.ACTION_SDK_RESET);
        if (Build.VERSION.SDK_INT >= 26) {
            intent.addFlags(16777216);
        }
        intent.putExtra(SDKConfig.EXTRA_BROADCAST_SENDER, context.getPackageName());
        intent.putExtra(SDKConfig.EXTRA_INCLUDE_SELF, z);
        context.sendBroadcast(intent);
    }
}
