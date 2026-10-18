package com.tencent.wecarspeech.clientsdk.interfaces;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.vframework.IRecordCallback;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class RecordCallback extends IRecordCallback.Stub {
    public static final int EVENT_SPEECH_PAUSE = 100;
    public static final int EVENT_SPEECH_RESUME = 101;
    public static final int RESULT_CANCELED = 1;
    public static final int RESULT_ERROR = 5;
    public static final int RESULT_INTERRUPT_SYSTEM = 3;
    public static final int RESULT_INTERRUPT_VR = 4;
    public static final int RESULT_NO_INPUT = 2;
    public static final int RESULT_ON_WAKEUP_COMPLETE_CMD = 0;
    public static final int RESULT_SPEECH_TIMEOUT = 6;
    public static final int RESULT_STOP_RECORD = 7;

    @Override // com.tencent.wecarspeech.vframework.IRecordCallback
    public abstract void onEvent(int i);

    @Override // com.tencent.wecarspeech.vframework.IRecordCallback
    public abstract void onRecordData(byte[] bArr, int i);

    @Override // com.tencent.wecarspeech.vframework.IRecordCallback
    public abstract void onStart();

    @Override // com.tencent.wecarspeech.vframework.IRecordCallback
    public abstract void onStop(int i, String str, int i2);

    @Override // com.tencent.wecarspeech.vframework.IRecordCallback
    public abstract void onVolumeChanged(float f);
}
