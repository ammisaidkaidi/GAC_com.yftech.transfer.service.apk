package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import android.text.TextUtils;
import com.tencent.wecarspeech.clientsdk.exceptions.ExceptionCtrlManager;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SubWakeupScene extends WakeUpScene {
    public static final int HIGH_PRIORITY = 2;
    public static final int MEDIUM_PRIORITY = 1;
    public static final int NORMAL_PRIORITY = 0;
    private boolean exclusive;
    private int priority;
    private String superSceneId;

    public SubWakeupScene(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            ExceptionCtrlManager.getInstance().throwException(new IllegalArgumentException("superSceneId cannot be empty"));
        } else {
            this.superSceneId = str;
            this.exclusive = z;
        }
    }

    public SubWakeupScene(String str, boolean z, int i) {
        this(str, z);
        this.priority = i;
    }

    public String getSuperSceneId() {
        return this.superSceneId;
    }

    public boolean isExclusive() {
        return this.exclusive;
    }

    public int getPriority() {
        return this.priority;
    }
}
