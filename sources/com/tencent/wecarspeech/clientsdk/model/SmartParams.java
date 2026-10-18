package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import com.tencent.wecarspeech.clientsdk.interfaces.ISTrvCallback;
import java.util.Map;
import java.util.Set;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public class SmartParams extends BaseVoiceParams {
    public Map<String, Set<String>> sceneWords;
    public ISTrvCallback strvCallback;

    public String toString() {
        return "SmartParams{sceneWords=" + this.sceneWords + ", tts='" + this.tts + "', ttsSequence=" + this.ttsSequence + ", hints=" + this.hints + ", displayVrSprite=" + this.displayVrSprite + ", playSound=" + this.playSound + ", speechTimeout=" + this.speechTimeout + ", speechSilTimeout=" + this.speechSilTimeout + ", vadEndSilTimeout=" + this.vadEndSilTimeout + ", semanticContext=" + this.semanticContext + ", requestVuiPolicy=" + this.requestVuiPolicy + '}';
    }
}
