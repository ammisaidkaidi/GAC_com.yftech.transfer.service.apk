package com.tencent.taifeedback.upload.sdk.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.tencent.taifeedback.upload.sdk.utils.FeedBackConstants;
import com.tencent.taifeedback.upload.sdk.utils.Utils;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogcatService extends IntentService {
    private static final String SERVICE_NAME = "LogcatService";
    private static final String TAG = "LogcatService";

    public LogcatService() {
        this("LogcatService");
    }

    public LogcatService(String str) {
        super(str);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Context applicationContext = getApplicationContext();
        String logPath = Utils.getInstance().getLogPath(applicationContext, FeedBackConstants.LOG_EXT);
        if (logPath != null) {
            Utils.getInstance().seekLogcat(applicationContext, "", logPath);
        } else {
            Log.e(TAG, "sdcard does not exist!");
        }
    }
}
