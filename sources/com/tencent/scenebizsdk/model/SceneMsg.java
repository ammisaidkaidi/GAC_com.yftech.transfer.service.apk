package com.tencent.scenebizsdk.model;

import android.support.annotation.Keep;
import com.tencent.scenebizsdk.model.widgets.ActionData;
import com.tencent.scenebizsdk.model.widgets.PicData;
import com.tencent.scenebizsdk.model.widgets.TextData;
import com.tencent.scenebizsdk.model.widgets.VoiData;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SceneMsg {
    public ActionData cancelAction;
    public String modeContainer;
    public String modeName;
    public int modeType;
    public String msgId;
    public long msgTime;
    public ActionData okAction;
    public PicData picView;
    public TextData subText;
    public TextData titleText;
    public VoiData voi;
}
