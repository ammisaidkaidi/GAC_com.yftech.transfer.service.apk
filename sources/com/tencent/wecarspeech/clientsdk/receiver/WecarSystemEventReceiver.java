package com.tencent.wecarspeech.clientsdk.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class WecarSystemEventReceiver extends BroadcastReceiver {
    private static final String FROM_PKG_NAME = "com.tencent.wecar";
    private static final String KEY_FROM_PKG_NAME = "fromPkgName";
    private final String TAG = "SystemEventReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(KEY_FROM_PKG_NAME);
        LogUtils.d("SystemEventReceiver", "receive from packageName = " + stringExtra);
        if ("com.tencent.wecar".equals(stringExtra)) {
            CmdParser.cmdExecute(intent);
        }
    }
}
