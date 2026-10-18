package com.tencent.sceneengine.model;

import android.support.annotation.Keep;
import java.io.Serializable;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class ViewMode implements Serializable {
    public static final int TYPE_CHECKALERT = 2;
    public static final int TYPE_CHOOSEALERT = 3;
    public static final int TYPE_HIPPY = 100;
    public static final int TYPE_INVALID = 0;
    public static final int TYPE_MOSS = 101;
    public static final int TYPE_SIMPLEALERT = 1;
    public String modeData;
    public int modeType;

    public String getModeData() {
        return this.modeData;
    }

    public int getModeType() {
        return this.modeType;
    }

    public void setModeData(String str) {
        this.modeData = str;
    }

    public void setModeType(int i) {
        this.modeType = i;
    }
}
