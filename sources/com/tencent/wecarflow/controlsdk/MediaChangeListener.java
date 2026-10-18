package com.tencent.wecarflow.controlsdk;

/* loaded from: /home/user/work/dex/classes.dex */
public interface MediaChangeListener {
    void onFavorChange(boolean z);

    void onMediaChange(MediaInfo mediaInfo);

    void onModeChange(int i);

    void onPlayListChange();
}
