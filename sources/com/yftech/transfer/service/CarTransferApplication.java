package com.yftech.transfer.service;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Process;
import android.util.Log;
import com.tencent.car.wechatsdk.impl.WeChatMgr;
import com.yftech.transfer.iflytek.IflytekManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarTransferApplication extends Application {
    private static final String TAG = "CarTransferApplication";
    private static final String TAI_PROCESS_NAME = "com.yftech.transfer.service:tai";
    public static Context context;
    private static Handler mHandler = new Handler();

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        context = this;
        String curProcessName = getCurProcessName(this);
        Log.i(TAG, "curProcessName::::" + curProcessName);
        if (TAI_PROCESS_NAME.equals(curProcessName)) {
            WeChatMgr.getInstance().init(this);
        }
        IflytekManager.getInstance(this).init();
    }

    public String getCurProcessName(Context context2) {
        int myPid = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context2.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.processName;
            }
        }
        return null;
    }

    public static Handler getHandler() {
        return mHandler;
    }
}
