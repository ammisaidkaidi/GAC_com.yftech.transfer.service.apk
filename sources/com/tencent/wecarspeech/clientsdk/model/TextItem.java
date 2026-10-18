package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class TextItem {
    public static final String TYPE_FLIGHT_NO = "FLIGHT_NO";
    public static final String TYPE_MUSIC = "MUSIC";
    public static final String TYPE_NAME = "NAME";
    public static final String TYPE_POI = "POI";
    public static final String TYPE_SONG = "SONG";
    public static final String TYPE_UNKNOWN = "UNKNOWN";

    @SerializedName("txt")
    private String txt;

    @SerializedName("type")
    private String type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextItem(String str, String str2) {
        this.txt = str;
        this.type = str2;
    }

    public String getTxt() {
        return this.txt;
    }

    public String getType() {
        return this.type;
    }
}
