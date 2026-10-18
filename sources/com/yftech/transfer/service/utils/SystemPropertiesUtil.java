package com.yftech.transfer.service.utils;

import android.os.SystemProperties;

/* loaded from: /home/user/work/dex/classes.dex */
public class SystemPropertiesUtil {
    public static String getProductDevice() {
        return SystemProperties.get("ro.product.device", "");
    }
}
