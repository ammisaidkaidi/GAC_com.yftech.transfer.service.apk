package com.tencent.wecarflow.controlsdk;

/* loaded from: /home/user/work/dex/classes.dex */
public interface PlayStateListener {
    void onPause();

    void onProgress(String str, long j, long j2);

    void onStart();

    void onStop();
}
