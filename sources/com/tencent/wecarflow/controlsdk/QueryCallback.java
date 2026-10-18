package com.tencent.wecarflow.controlsdk;

/* loaded from: /home/user/work/dex/classes.dex */
public interface QueryCallback<T> {
    void onError(int i);

    void onSuccess(T t);
}
