package com.tencent.sceneengine;

import android.support.annotation.Keep;
import com.tencent.sceneengine.model.MossInfo;
import java.util.List;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface IQueryCallback {
    void onFailed(int i, String str);

    void onSuccess(int i, List<MossInfo> list);
}
