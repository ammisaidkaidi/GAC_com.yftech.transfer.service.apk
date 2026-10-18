package com.yftech.transfer.tencent.access;

import android.support.annotation.NonNull;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.wecarspeech.sdk.api.IMediaControlClient;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaControlClientImpl implements IMediaControlClient<ActionRet> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMediaControlClient
    public ActionRet play(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMediaControlClient
    public ActionRet pause(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMediaControlClient
    public ActionRet next(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMediaControlClient
    public ActionRet pre(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMediaControlClient
    @NonNull
    public ActionRet addFavorite(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMediaControlClient
    @NonNull
    public ActionRet cancelFavorite(String str) {
        return ActionRet.create(0);
    }
}
