package com.yftech.transfer.pki;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class PkiService extends Service {
    public static final String SERVICE_NAME = "car_pki";
    public static final String TAG = "PkiService";

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        PkiManager.getInstance().init();
        LogUtil.i("PkiServiceszitrusgetVersion:" + PkiManager.getInstance().szitrusgetVersion());
    }
}
