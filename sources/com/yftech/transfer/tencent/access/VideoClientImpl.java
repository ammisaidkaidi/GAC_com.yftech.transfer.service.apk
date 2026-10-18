package com.yftech.transfer.tencent.access;

import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.wecarspeech.sdk.api.IVideoClient;

/* loaded from: /home/user/work/dex/classes.dex */
public class VideoClientImpl implements IVideoClient<ActionRet> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IVideoClient
    public ActionRet playVideo() {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IVideoClient
    public ActionRet playUSBVideo() {
        return ActionRet.create(0);
    }
}
