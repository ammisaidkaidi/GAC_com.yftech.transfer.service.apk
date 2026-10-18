package com.utils;

import android.widget.Toast;
import com.yftech.transfer.service.CarTransferApplication;

/* loaded from: /home/user/work/dex/classes.dex */
public class ToastUtil {
    private static Toast mToast;

    public static void showToast(String str) {
        if (mToast != null) {
            mToast.cancel();
            mToast = null;
        }
        mToast = Toast.makeText(CarTransferApplication.context, str, 1);
        mToast.show();
    }
}
