package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.clientsdk.interfaces.ISSRCallback;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class VoiceParams extends BaseVoiceParams {
    public ISSRCallback ssrCallback;

    public String toString() {
        return "VoiceParams{tts='" + this.tts + "', ttsSequence=" + this.ttsSequence + ", hints=" + this.hints + ", displayVrSprite=" + this.displayVrSprite + ", playSound=" + this.playSound + ", speechTimeout=" + this.speechTimeout + ", speechSilTimeout=" + this.speechSilTimeout + ", vadEndSilTimeout=" + this.vadEndSilTimeout + '}';
    }
}
