package com.baidu.android.common.util;

import android.content.Context;
import android.text.TextUtils;
import com.yftech.transfer.service.CarAppList;

/* loaded from: /home/user/work/dex/classes.dex */
public class CommonParam {
    private static final boolean DEBUG = false;
    private static final String TAG = "CommonParam";

    public static String getCUID(Context context) {
        String deviceId = getDeviceId(context);
        String imei = DeviceId.getIMEI(context);
        if (TextUtils.isEmpty(imei)) {
            imei = CarAppList.MediaPage.PAGE_FM;
        }
        return deviceId + "|" + new StringBuffer(imei).reverse().toString();
    }

    private static String getDeviceId(Context context) {
        return DeviceId.getDeviceID(context);
    }
}
