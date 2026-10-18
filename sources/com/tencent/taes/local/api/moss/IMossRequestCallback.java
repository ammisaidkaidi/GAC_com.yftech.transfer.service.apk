package com.tencent.taes.local.api.moss;

import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IMossRequestCallback<T> {
    void onFailed(String str);

    void onSucceeded(List<T> list);
}
