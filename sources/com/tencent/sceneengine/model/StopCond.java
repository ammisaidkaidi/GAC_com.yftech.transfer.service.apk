package com.tencent.sceneengine.model;

import a.a.a.a.a;
import android.support.annotation.Keep;
import java.io.Serializable;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class StopCond implements Serializable {
    public String stopCondData;
    public int stopCondType;

    public StopCond() {
    }

    public StopCond(int i) {
        this.stopCondType = i;
    }

    public StopCond(int i, String str) {
        this.stopCondType = i;
        this.stopCondData = str;
    }

    public String toString() {
        StringBuilder a2 = a.a("{stopCondType=");
        a2.append(this.stopCondType);
        a2.append(",stopCondData=");
        a2.append(this.stopCondData);
        a2.append("}");
        return a2.toString();
    }
}
