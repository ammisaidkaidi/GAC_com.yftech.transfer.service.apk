package com.utils;

import android.os.Environment;
import android.os.SystemProperties;
import com.yftech.transfer.service.utils.AppUtil;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.io.File;

/* loaded from: /home/user/work/dex/classes.dex */
public class HiCarUtils {
    private static final String FILE_CERTIFICATE_PATH = "/sdcard/certificate_hicar";
    private static final String KEY_CERTIFICATE = "persist.sys.hicar.certificate";
    private static final String VALUE_OFF = "0";
    private static final String VALUE_ON = "1";
    private static Disposable certificateD;

    public static void checkHiCarCertificateState() {
        if (certificateD != null) {
            certificateD.dispose();
        }
        certificateD = AppUtil.intervalOnThread(new Consumer<Long>() { // from class: com.utils.HiCarUtils.1
            @Override // io.reactivex.functions.Consumer
            public void accept(Long l) {
                boolean equals = Environment.getExternalStorageState().equals("mounted");
                LogUtil.i("checkHiCarCertificateState isMount:" + equals);
                if (equals) {
                    if (HiCarUtils.certificateD != null) {
                        HiCarUtils.certificateD.dispose();
                    }
                    boolean exists = new File(HiCarUtils.FILE_CERTIFICATE_PATH).exists();
                    LogUtil.i("checkHiCarCertificateState /sdcard/certificate_hicar isExist:" + exists);
                    if (exists) {
                        SystemProperties.set(HiCarUtils.KEY_CERTIFICATE, "1");
                    }
                }
            }
        }, 200L);
    }

    public static boolean isHiCarCertificateOn() {
        String str = SystemProperties.get(KEY_CERTIFICATE, "0");
        LogUtil.i("isHiCarCertificateOn certificateValue:" + str);
        return "1".equals(str);
    }
}
