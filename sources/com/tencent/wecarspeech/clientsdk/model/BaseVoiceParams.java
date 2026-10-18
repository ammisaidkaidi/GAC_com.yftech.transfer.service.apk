package com.tencent.wecarspeech.clientsdk.model;

import com.tencent.wecarspeech.clientsdk.interfaces.IPlayStateCallback;
import com.tencent.wecarspeech.clientsdk.interfaces.IRejectSemanticCallBack;
import com.tencent.wecarspeech.clientsdk.interfaces.ISemanticFilter;
import com.tencent.wecarspeech.clientsdk.interfaces.IStartResultCallback;
import com.tencent.wecarspeech.clientsdk.model.SessionParams;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseVoiceParams {
    public ISemanticFilter filter;
    public List<String> hints;
    public IPlayStateCallback playCallback;
    public IRejectSemanticCallBack rejectCallback;
    public SemanticContext semanticContext;
    public long speechSilTimeout;
    public long speechTimeout;
    public IStartResultCallback startCallback;
    public String tips;
    public String tts;
    public SessionParams.TTSSequence ttsSequence;
    public long vadEndSilTimeout;
    public boolean displayVrSprite = true;
    public boolean playSound = false;
    public boolean requestVuiPolicy = true;
}
