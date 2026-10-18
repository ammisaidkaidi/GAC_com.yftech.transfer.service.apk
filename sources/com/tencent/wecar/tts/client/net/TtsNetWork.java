package com.tencent.wecar.tts.client.net;

import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class TtsNetWork {
    private static INetWork sNetWork = new INetWork() { // from class: com.tencent.wecar.tts.client.net.TtsNetWork.1
        @Override // com.tencent.wecar.tts.client.net.INetWork
        public void request(String str, Map<String, String> map, INetWorkCallBack iNetWorkCallBack) {
        }

        @Override // com.tencent.wecar.tts.client.net.INetWork
        public void requestPicture(String str, INetWorkPicCallBack iNetWorkPicCallBack) {
        }
    };

    public static void setNetWork(INetWork iNetWork) {
        sNetWork = iNetWork;
    }

    public static void request(String str, Map<String, String> map, INetWorkCallBack iNetWorkCallBack) {
        sNetWork.request(str, map, iNetWorkCallBack);
    }

    public static void requestPicture(String str, INetWorkPicCallBack iNetWorkPicCallBack) {
        sNetWork.requestPicture(str, iNetWorkPicCallBack);
    }
}
