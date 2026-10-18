package com.tencent.car.wechatsdk.utils.log;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface ILogger {
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_FATAL = 5;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_NONE = 6;
    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_WARNING = 3;

    void appenderClose();

    void appenderFlush(boolean z);

    int getLogLevel();

    void logD(String str, String str2, String str3, int i, int i2, long j, long j2, String str4);

    void logE(String str, String str2, String str3, int i, int i2, long j, long j2, String str4);

    void logF(String str, String str2, String str3, int i, int i2, long j, long j2, String str4);

    void logI(String str, String str2, String str3, int i, int i2, long j, long j2, String str4);

    void logV(String str, String str2, String str3, int i, int i2, long j, long j2, String str4);

    void logW(String str, String str2, String str3, int i, int i2, long j, long j2, String str4);

    void setLevel(int i);
}
