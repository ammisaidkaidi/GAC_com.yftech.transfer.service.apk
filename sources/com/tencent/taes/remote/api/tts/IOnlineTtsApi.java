package com.tencent.taes.remote.api.tts;

import com.tencent.taes.remote.api.tts.listener.IOnlineTtsListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IOnlineTtsApi {
    void playTts(String str);

    void playTts(String str, IOnlineTtsListener iOnlineTtsListener);

    void setSpeaker(int i);

    void setSpeedLevel(int i);

    void setStreamType(int i);
}
