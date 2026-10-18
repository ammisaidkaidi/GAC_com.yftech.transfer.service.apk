package com.tencent.scenebizsdk;

import android.support.annotation.Keep;
import com.tencent.scenebizsdk.model.SceneMsg;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface IMsgListener {
    void onMsgReceived(SceneMsg sceneMsg);
}
