package com.yftech.transfer.tencent.access;

import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.wecarspeech.sdk.api.ThirdAppClient;

/* loaded from: /home/user/work/dex/classes.dex */
public class ThirdAppClientImpl implements ThirdAppClient<ActionRet> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.ThirdAppClient
    public ActionRet openApp(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.ThirdAppClient
    public ActionRet closeApp(String str) {
        return ActionRet.create(0);
    }
}
