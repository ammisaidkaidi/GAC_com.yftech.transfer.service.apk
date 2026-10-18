package com.tencent.wecarspeech.sdk.listener;

import android.support.annotation.Keep;

@Keep
@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public interface TTSPlayListener {
    public static final int FLAG_DEFAULT = 0;
    public static final int STATUS_COMPLETED = 2;
    public static final int STATUS_END = 5;
    public static final int STATUS_ERROR = 4;
    public static final int STATUS_INTERRUPT = 3;
    public static final int STATUS_PAUSE = 6;
    public static final int STATUS_RESUME = 7;
    public static final int STATUS_START = 1;
    public static final int STOP_REASON_SDK = 2;
    public static final int STOP_REASON_URGENT = 3;
    public static final int STOP_REASON_WAKEUP = 1;

    void onProgress(int i, int i2);

    void onStatusChange(int i, int i2);
}
