package com.tencent.wecarspeech.clientsdk.ipcservice;

import com.tencent.wecarspeech.vframework.ISpeechService;

/* loaded from: /home/user/work/dex/classes.dex */
public interface IPCLinkCallback {
    void onLinkDisconnected();

    void onLinkFailed(int i, String str);

    void onLinkSuccess(ISpeechService iSpeechService);
}
