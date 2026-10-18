package com.tencent.sceneengine;

import android.support.annotation.NonNull;
import com.tencent.sceneengine.model.SceneMessage;
import com.tencent.sceneengine.model.StopCond;
import com.tencent.sceneengine.model.TriggerCond;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IMessageValidator {
    boolean isTriggered(@NonNull SceneMessage sceneMessage, @NonNull TriggerCond triggerCond);

    boolean isValid(@NonNull SceneMessage sceneMessage, @NonNull StopCond stopCond);
}
