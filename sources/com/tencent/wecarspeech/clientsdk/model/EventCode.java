package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface EventCode {
    public static final int EVENT_CODE_ERROR_AUDIOFOCUS_FAILED = 20;
    public static final int EVENT_CODE_EXIT = 19;
    public static final int EVENT_CODE_LAUNCH_DATA_ABNORMAL = 3;
    public static final int EVENT_CODE_LAUNCH_INIT_ENGINE = 6;
    public static final int EVENT_CODE_LAUNCH_INIT_FAIL = 2;
    public static final int EVENT_CODE_LAUNCH_INIT_SUCCESS = 1;
    public static final int EVENT_CODE_LAUNCH_PREPARE_DATA = 5;
    public static final int EVENT_CODE_LAUNCH_STORAGE_NOSPEECH = 4;
    public static final int EVENT_CODE_LOADING_START = 10;
    public static final int EVENT_CODE_RECORD_NOINPUT = 8;
    public static final int EVENT_CODE_RECORD_RECEIVE_VOICE_DATA = 9;
    public static final int EVENT_CODE_RECORD_START = 7;
    public static final int EVENT_CODE_TTS_ASK_NEXT_INPUT = 12;
    public static final int EVENT_CODE_TTS_DONE = 18;
    public static final int EVENT_CODE_TTS_NET_UNAVAIABLE = 15;
    public static final int EVENT_CODE_TTS_NET_WEAK = 16;
    public static final int EVENT_CODE_TTS_NOINPUT = 13;
    public static final int EVENT_CODE_TTS_NORESULT = 14;
    public static final int EVENT_CODE_TTS_NOTSUPPORT = 17;
    public static final int EVENT_CODE_TTS_PLAY_RESULT = 11;

    @Target({ElementType.PARAMETER})
    @Keep
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface TTS_TYPE {
    }
}
