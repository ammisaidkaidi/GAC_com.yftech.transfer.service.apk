package com.yftech.btphone.lib.sample;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.yftech.btphone.lib.utils.Configuration;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class SampleGlobalReceiver extends BroadcastReceiver {
    public static final String BACKGROUND = "background";
    public static final String FOREGROUND = "foreground";
    public static final String PAIRING_CANCEL = "android.bluetooth.device.action.PAIRING_CANCEL";
    public static final String PAIRING_REQUEST = "android.bluetooth.device.action.PAIRING_REQUEST";
    protected String TAG = "SampleGlobalReceiver";

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        char c;
        String action = intent.getAction();
        Log.i(this.TAG, "SampleGlobalReceiver:action = " + action);
        switch (action.hashCode()) {
            case -1740230300:
                if (action.equals(Configuration.EXIT_APPLICATION_BROADCAST_ACTION)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -435331762:
                if (action.equals("android.activity.action.STATE_CHANGED")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -223687943:
                if (action.equals(PAIRING_REQUEST)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 792531103:
                if (action.equals("com.yf.bluetooth.action.pair.request")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 977800810:
                if (action.equals("com.yf.bluetooth.action.pair.cancel")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1499208880:
                if (action.equals(PAIRING_CANCEL)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
                onPairRequest(intent);
                return;
            case 2:
            case 3:
                onPairCancel(intent);
                return;
            case 4:
                onActivityStateChanged(intent.getStringExtra("package"), intent.getStringExtra("class"), intent.getStringExtra("state"));
                return;
            case 5:
                if (context.getApplicationContext().getPackageName().equals(intent.getStringExtra(Configuration.EXIT_APPLICATION_EXTRA_PACKAGE_NAME))) {
                    exit();
                    return;
                }
                return;
            default:
                return;
        }
    }

    protected void onPairRequest(Intent intent) {
        SampleApplication.getInstance().getWindowManager().showPairWindow(intent);
    }

    protected void onPairCancel(Intent intent) {
        SampleApplication.getInstance().getWindowManager().hidePairWindow();
    }

    protected void onActivityStateChanged(String str, String str2, String str3) {
        SampleApplication.getInstance().getWindowManager().hideConnectFailed();
        if ("background".equals(str3) || !FOREGROUND.equals(str3) || TextUtils.isEmpty(str2)) {
            return;
        }
        SampleApplication.getInstance().getDataProviderManager().setForegroundCls(str2);
    }

    protected void exit() {
        Log.i(this.TAG, "onReceive: finish all");
    }
}
