package com.yftech.transfer.tencent.access;

import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.wecarspeech.sdk.api.IRadioClient;

/* loaded from: /home/user/work/dex/classes.dex */
public class RadioClientImpl implements IRadioClient<ActionRet> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IRadioClient
    public ActionRet playFMChannel(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IRadioClient
    public ActionRet playAMChannel(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IRadioClient
    public ActionRet playChannel(String str, String str2) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IRadioClient
    public ActionRet startAutoScan() {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IRadioClient
    public ActionRet openApp(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IRadioClient
    public ActionRet closeApp(String str) {
        return ActionRet.create(0);
    }
}
