package com.tencent.taes.remote.api.account.listener;

import com.tencent.taes.remote.api.account.bean.WeCarContract;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IContractCallback {
    void onError(int i, String str);

    void onSuccess(WeCarContract weCarContract);
}
