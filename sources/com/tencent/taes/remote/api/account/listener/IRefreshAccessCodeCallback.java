package com.tencent.taes.remote.api.account.listener;

import com.tencent.taes.remote.api.account.bean.RefreshAccessCode;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IRefreshAccessCodeCallback {
    void onError(int i, String str);

    void onSuccess(RefreshAccessCode refreshAccessCode);
}
