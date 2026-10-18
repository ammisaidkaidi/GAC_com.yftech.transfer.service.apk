package com.tencent.wecar.tts.client.net;

import java.io.File;

/* loaded from: /home/user/work/dex/classes.dex */
public interface DownLoadModlelCallBack {
    void onError(String str);

    void onFinish(File file);

    void onProgress(long j, long j2, float f);

    void onStart(long j, long j2, float f);
}
