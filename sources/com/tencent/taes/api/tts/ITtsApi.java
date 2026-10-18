package com.tencent.taes.api.tts;

import com.tencent.taes.api.base.BaseApi;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ITtsApi extends com.tencent.taes.remote.api.tts.ITtsApi, BaseApi {
    void initTts();

    void initTts(int i);

    String playTts(String str);

    String playTts(String str, int i, int i2);
}
