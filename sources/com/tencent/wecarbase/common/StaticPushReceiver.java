package com.tencent.wecarbase.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.wecarbase.client.CloudManager;
import com.tencent.wecarbase.client.PushListener;
import com.tencent.wecarbase.client.park.ParkNotify;
import com.tencent.wecarbase.common.thread.TAIThreadPoolProxyFactory;
import com.tencent.wecarbase.config.MqttConfig;
import com.tencent.wecarbase.taibaseui.popupview.PopupView;
import com.tencent.wecarbase.utils.LogUtils;
import com.tencent.wecarbase.utils.PackageUtils;
import org.json.JSONObject;

/* loaded from: /home/user/work/dex/classes.dex */
public class StaticPushReceiver extends BroadcastReceiver {
    private static String TAG = "StaticPushReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        LogUtils.fe(TAG, "action = " + action);
        if (TextUtils.equals(MqttConfig.PUSH_STATIC_ACTION, action)) {
            final String stringExtra = intent.getStringExtra(MqttConfig.PUSH_CONTENT);
            try {
                JSONObject jSONObject = new JSONObject(stringExtra);
                String optString = jSONObject.optString("type");
                if (!TextUtils.isEmpty(optString) && optString.equals(PopupView.PARK_LAYOUT)) {
                    if (PackageUtils.isMainAppProcess(context)) {
                        LogUtils.d(TAG, "--receive park push msg--");
                        ParkNotify.getInstance().handleMessage(jSONObject);
                    }
                } else {
                    final PushListener pushListener = CloudManager.getInstance().getPushListener();
                    LogUtils.fd(TAG, "receive push msg: " + stringExtra + ", listener = " + pushListener);
                    if (pushListener != null) {
                        TAIThreadPoolProxyFactory.getFixedThreadPoolProxy().execute(new Runnable() { // from class: com.tencent.wecarbase.common.StaticPushReceiver.1
                            @Override // java.lang.Runnable
                            public void run() {
                                synchronized (pushListener) {
                                    pushListener.onPush(stringExtra);
                                }
                            }
                        });
                    }
                }
            } catch (Exception e) {
                LogUtils.e(TAG, "StaticPushReceiver, error: " + Log.getStackTraceString(e));
            }
        }
    }
}
