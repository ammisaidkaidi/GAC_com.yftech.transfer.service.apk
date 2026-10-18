package com.yftech.transfer.tencent.access;

import android.support.annotation.NonNull;
import com.tencent.libspeechcommon.def.ActionRet;
import com.tencent.wecarspeech.sdk.api.IMusicClient;

/* loaded from: /home/user/work/dex/classes.dex */
public class MusicClientImpl implements IMusicClient<ActionRet> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet openApp(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet closeApp(String str) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet play() {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet pause() {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet next() {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet pre() {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet isPlayModeSupported(int i) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet setPlayMode(int i) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet searchSong(String str, String str2, String str3) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet playSong(String str, String str2, String str3) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    public ActionRet playByMediaSource(String str, String str2) {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    @NonNull
    public ActionRet addFavorite() {
        return ActionRet.create(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.wecarspeech.sdk.api.IMusicClient
    @NonNull
    public ActionRet cancelFavorite() {
        return ActionRet.create(0);
    }
}
