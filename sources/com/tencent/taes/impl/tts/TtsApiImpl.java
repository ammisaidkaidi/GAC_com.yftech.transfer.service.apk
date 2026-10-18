package com.tencent.taes.impl.tts;

import android.content.Context;
import android.media.AudioAttributes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.tencent.taes.TaesSDKHelper;
import com.tencent.taes.api.tts.ITtsApi;
import com.tencent.taes.impl.base.AbstractApi;
import com.tencent.taes.remote.api.tts.listener.IPlayingListener;
import com.tencent.taes.remote.api.tts.listener.ITtsInitListener;
import com.tencent.taes.remote.api.tts.listener.ITtsPlayListener;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerChooseListener;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerListener;
import com.tencent.taes.util.ContextHolder;
import com.tencent.wecar.tts.TtsManager;

/* loaded from: /home/user/work/dex/classes.dex */
public class TtsApiImpl extends AbstractApi implements ITtsApi {
    private static final String TAG = "TtsApiImpl";
    private com.tencent.taes.remote.api.tts.ITtsApi mTtsApi = null;
    private final int defaultStreamType = 3;

    @Override // com.tencent.taes.impl.base.AbstractApi
    public void dispose() {
    }

    @Override // com.tencent.taes.api.base.BaseApi
    public String getApiVersion() {
        return null;
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void setTtsSpeaker(@NonNull String str) {
    }

    public TtsApiImpl() {
        TtsManager.getInstance().init(TaesSDKHelper.getContext());
    }

    private com.tencent.taes.remote.api.tts.ITtsApi getTtsApi() {
        this.mTtsApi = TtsManager.getInstance().getRemoteApi();
        if (this.mTtsApi != null && !this.mTtsApi.isInited()) {
            TtsManager.getInstance().init(ContextHolder.getContext());
        }
        return this.mTtsApi;
    }

    @Override // com.tencent.taes.api.tts.ITtsApi
    public void initTts() {
        TtsManager.getInstance().init(TaesSDKHelper.getContext());
    }

    @Override // com.tencent.taes.api.tts.ITtsApi
    public void initTts(int i) {
        TtsManager.getInstance().init(TaesSDKHelper.getContext());
    }

    @Override // com.tencent.taes.api.tts.ITtsApi
    public String playTts(String str) {
        return (getTtsApi() == null || this.mTtsApi == null) ? "" : this.mTtsApi.playTts(str, 3, (ITtsPlayListener) null);
    }

    @Override // com.tencent.taes.api.tts.ITtsApi
    public String playTts(String str, int i, int i2) {
        return (getTtsApi() == null || this.mTtsApi == null) ? "" : this.mTtsApi.playTts(str, i, i2, (ITtsPlayListener) null);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public boolean isInited() {
        return TtsManager.getInstance().getRemoteApi().isInited();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void registerInitCallback(ITtsInitListener iTtsInitListener) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.registerInitCallback(iTtsInitListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String playTts(String str, int i, int i2, ITtsPlayListener iTtsPlayListener) {
        return (getTtsApi() == null || this.mTtsApi == null) ? "" : this.mTtsApi.playTts(str, i, i2, iTtsPlayListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String playTts(String str, int i, ITtsPlayListener iTtsPlayListener) {
        return (getTtsApi() == null || this.mTtsApi == null) ? "" : this.mTtsApi.playTts(str, i, iTtsPlayListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String playTts(String str, ITtsPlayListener iTtsPlayListener, AudioAttributes audioAttributes) {
        return (getTtsApi() == null || this.mTtsApi == null) ? "" : this.mTtsApi.playTts(str, iTtsPlayListener, audioAttributes);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String playTts(String str, int i, ITtsPlayListener iTtsPlayListener, AudioAttributes audioAttributes) {
        return (getTtsApi() == null || this.mTtsApi == null) ? "" : this.mTtsApi.playTts(str, i, iTtsPlayListener, audioAttributes);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void stopPlay(String str) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.stopPlay(str);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void setTtsSpeakerInfo(@NonNull String str, String str2) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.setTtsSpeakerInfo(str, str2);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Nullable
    public String getTtsSpeaker() {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return null;
        }
        return this.mTtsApi.getTtsSpeaker();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Nullable
    public String getTtsSpeakerName() {
        return (getTtsApi() == null || this.mTtsApi == null) ? "" : this.mTtsApi.getTtsSpeakerName();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Nullable
    public String getChooseTtsId() {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return null;
        }
        return this.mTtsApi.getChooseTtsId();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Nullable
    public String getChooseTtsName() {
        return (getTtsApi() == null || this.mTtsApi == null) ? "" : this.mTtsApi.getChooseTtsName();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public int setAppendTtsSpeakerPath(@NonNull String str) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return -1;
        }
        return this.mTtsApi.setAppendTtsSpeakerPath(str);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public boolean isOfficialTtsSpeaker() {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return false;
        }
        return this.mTtsApi.isOfficialTtsSpeaker();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void addTtsSpeakerListener(@Nullable ITtsSpeakerListener iTtsSpeakerListener) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.addTtsSpeakerListener(iTtsSpeakerListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void removeTtsSpeakerListener(@NonNull ITtsSpeakerListener iTtsSpeakerListener) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.removeTtsSpeakerListener(iTtsSpeakerListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void addTtsSpeakerChooseListener(@Nullable ITtsSpeakerChooseListener iTtsSpeakerChooseListener) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.addTtsSpeakerChooseListener(iTtsSpeakerChooseListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void removeTtsSpeakerChooseListener(@NonNull ITtsSpeakerChooseListener iTtsSpeakerChooseListener) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.removeTtsSpeakerChooseListener(iTtsSpeakerChooseListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    @Nullable
    public String[] getAvailableTtsSpeaker() {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return null;
        }
        return this.mTtsApi.getAvailableTtsSpeaker();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void addPlayingListener(IPlayingListener iPlayingListener) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.addPlayingListener(iPlayingListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void removePlayingListener(@NonNull IPlayingListener iPlayingListener) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.removePlayingListener(iPlayingListener);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public String getVersion() {
        return (getTtsApi() == null || this.mTtsApi == null) ? "connect error" : this.mTtsApi.getVersion();
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void startTtsPage(Context context) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.startTtsPage(context);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void getSpeakerName(String str) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.getSpeakerName(str);
    }

    @Override // com.tencent.taes.remote.api.tts.ITtsApi
    public void setChooseTts(String str, String str2) {
        if (getTtsApi() == null || this.mTtsApi == null) {
            return;
        }
        this.mTtsApi.setChooseTts(str, str2);
    }
}
