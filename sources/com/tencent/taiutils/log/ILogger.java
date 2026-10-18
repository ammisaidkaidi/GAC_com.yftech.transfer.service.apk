package com.tencent.taiutils.log;

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

    void logD(String str, int i, long j, long j2, String str2);

    void logE(String str, int i, long j, long j2, String str2);

    void logI(String str, int i, long j, long j2, String str2);

    void logV(String str, int i, long j, long j2, String str2);

    void logW(String str, int i, long j, long j2, String str2);
}
