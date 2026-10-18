package com.tencent.scenebizsdk.model.widgets;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.tencent.taes.framework.parser.ConfigConstant;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class Action {

    @SerializedName(alternate = {"action_name"}, value = ConfigConstant.CONFIG_KEY_ACTION_NAME)
    public String actionName;
    public String app;

    @SerializedName(alternate = {"payload"}, value = "data")
    public String data;
}
