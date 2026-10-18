package com.tencent.taes.api.moss.listener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ICallBack<T> {
    void onFailure(String str);

    void onResponse(T t);
}
