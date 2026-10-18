package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class VrMetaData {
    public static final int VR_MODE_DUPLEX = 2;
    public static final int VR_MODE_NORMAL = 1;
    public static final int VR_MODE_UNKNOWN = -1;

    @SerializedName("versionCode")
    private int mVersionCode;

    @SerializedName("versionName")
    private String mVersionName;

    @SerializedName("vrMode")
    private int mVrMode;

    public int getVrMode() {
        return this.mVrMode;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public String getVersionName() {
        return this.mVersionName;
    }
}
