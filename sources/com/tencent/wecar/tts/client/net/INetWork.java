package com.tencent.wecar.tts.client.net;

import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public interface INetWork {
    void request(String str, Map<String, String> map, INetWorkCallBack iNetWorkCallBack);

    void requestPicture(String str, INetWorkPicCallBack iNetWorkPicCallBack);
}
