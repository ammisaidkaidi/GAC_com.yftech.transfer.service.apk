package com.tencent.wecarspeech.clientsdk.exceptions;

import android.support.annotation.Keep;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class IllegalSkillException extends RuntimeException {
    public IllegalSkillException() {
    }

    public IllegalSkillException(String str) {
        super(str);
    }

    public IllegalSkillException(String str, Throwable th) {
        super(str, th);
    }

    public IllegalSkillException(Throwable th) {
        super(th);
    }
}
