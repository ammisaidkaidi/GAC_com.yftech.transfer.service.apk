package com.tencent.sceneengine.model;

import a.a.a.a.a;
import android.support.annotation.Keep;
import java.io.Serializable;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class TriggerCond implements Serializable {
    public String triggerCondData;
    public int triggerCondType;

    public TriggerCond() {
    }

    public TriggerCond(int i) {
        this.triggerCondType = i;
    }

    public String toString() {
        StringBuilder a2 = a.a("{triggerCondType=");
        a2.append(this.triggerCondType);
        a2.append(",triggerCondData=");
        a2.append(this.triggerCondData);
        a2.append("}");
        return a2.toString();
    }
}
