package com.tencent.wecarspeech.clientsdk.exceptions;

import com.tencent.wecarspeech.clientsdk.utils.log.LogUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class ExceptionCtrlManager {
    private static final String TAG = "ExceptionCtrlManager";
    private static ExceptionCtrlManager exceptionCtrlManager;
    private boolean isThrowException = false;

    public static ExceptionCtrlManager getInstance() {
        if (exceptionCtrlManager == null) {
            exceptionCtrlManager = new ExceptionCtrlManager();
        }
        return exceptionCtrlManager;
    }

    public void setIsThrowException(boolean z) {
        this.isThrowException = z;
    }

    public void throwException(RuntimeException runtimeException) {
        if (this.isThrowException) {
            throw runtimeException;
        }
        LogUtils.e(TAG, runtimeException.getMessage());
    }
}
