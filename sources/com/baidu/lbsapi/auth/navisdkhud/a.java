package com.baidu.lbsapi.auth.navisdkhud;

import android.util.Log;
import com.tencent.taifeedback.upload.sdk.utils.FileUtils;

/* loaded from: /home/user/work/dex/classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f28a = false;
    private static String b = "BaiduApiAuth";

    public static String a() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        return stackTraceElement.getFileName() + "[" + stackTraceElement.getLineNumber() + "]";
    }

    public static void a(String str) {
        if (!f28a || Thread.currentThread().getStackTrace().length == 0) {
            return;
        }
        Log.d(b, a() + FileUtils.EXT_INTERVAL + str);
    }

    public static void b(String str) {
        if (!f28a || Thread.currentThread().getStackTrace().length == 0) {
            return;
        }
        Log.e(b, a() + FileUtils.EXT_INTERVAL + str);
    }
}
