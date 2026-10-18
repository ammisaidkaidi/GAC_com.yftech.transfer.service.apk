package com.tencent.wecarspeech.clientsdk.model;

import android.support.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class SessionParams {
    private static final int TASK_NOT_EXIST = 0;

    @SerializedName("appId")
    public String mAppId;

    @SerializedName("clearSlotsInStack")
    public List<String> mClearSlotsInStack;

    @SerializedName("hints")
    public List<String> mHints;

    @SerializedName("multiTurnTmplInfo")
    public MultiTurnTmpl mMultiTurnTmplInfo;

    @SerializedName("mutiTurnExtendIntents")
    public List<String> mMutiTurnExtendIntents;

    @SerializedName("semanticJsonContext")
    public SemanticContext mSemanticContext;

    @SerializedName("seriesVerifySemanticInfo")
    public SeriesVerifySemanticInfo mSeriesVerifySemanticInfo;

    @SerializedName("tips")
    public String mTips;

    @SerializedName("trvWords")
    public Set<String> mTrvWords;

    @SerializedName("tts")
    public String mTts;

    @SerializedName("ttsSequence")
    public TTSSequence mTtsSequence;

    @SerializedName("taskId")
    public long mTaskId = 0;

    @SerializedName("displayUI")
    public boolean mDisplayUI = true;

    @SerializedName("playSound")
    public boolean mPlaySound = false;

    @SerializedName("speechTimeout")
    public long mSpeechTimeout = 0;

    @SerializedName("speechSilTimeout")
    public long mSpeechSilTimeout = 0;

    @SerializedName("vadEndSilTime")
    public long mVadEndSilTime = 0;

    @SerializedName("requestVuiPolicy")
    public boolean mRequestVuiPolicy = true;

    @SerializedName("isSeriesSession")
    public boolean mIsSeriesSession = false;

    @SerializedName("seriesDomain")
    public String mSeriesDomain = "";

    @SerializedName("seriesIntent")
    public String mSeriesIntent = "";

    @Keep
    /* loaded from: /home/user/work/dex/classes.dex */
    public enum TTSSequence {
        WITH,
        AFTER
    }
}
