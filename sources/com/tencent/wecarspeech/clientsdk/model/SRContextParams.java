package com.tencent.wecarspeech.clientsdk.model;

import com.tencent.wecarspeech.clientsdk.interfaces.ISSRContextCallback;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SRContextParams extends VoiceParams {
    public List<String> mClearSlotsInStack;
    public MultiTurnTmpl mMultiTurnTmpl;
    public List<String> mMutiTurnExtendIntents;
    public SeriesVerifySemanticInfo mSeriesVerifySemanticInfo;
    public ISSRContextCallback mSsrContextCallback;
}
