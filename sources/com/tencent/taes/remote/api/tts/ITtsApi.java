package com.tencent.taes.remote.api.tts;

import android.content.Context;
import android.media.AudioAttributes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.tencent.taes.remote.api.tts.listener.IPlayingListener;
import com.tencent.taes.remote.api.tts.listener.ITtsInitListener;
import com.tencent.taes.remote.api.tts.listener.ITtsPlayListener;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerChooseListener;
import com.tencent.taes.remote.api.tts.listener.ITtsSpeakerListener;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ITtsApi {
    void addPlayingListener(@NonNull IPlayingListener iPlayingListener);

    void addTtsSpeakerChooseListener(@NonNull ITtsSpeakerChooseListener iTtsSpeakerChooseListener);

    void addTtsSpeakerListener(@NonNull ITtsSpeakerListener iTtsSpeakerListener);

    @Nullable
    String[] getAvailableTtsSpeaker();

    String getChooseTtsId();

    String getChooseTtsName();

    void getSpeakerName(String str);

    @Nullable
    String getTtsSpeaker();

    @Nullable
    String getTtsSpeakerName();

    String getVersion();

    boolean isInited();

    boolean isOfficialTtsSpeaker();

    String playTts(String str, int i, int i2, ITtsPlayListener iTtsPlayListener);

    String playTts(String str, int i, ITtsPlayListener iTtsPlayListener);

    String playTts(String str, int i, ITtsPlayListener iTtsPlayListener, AudioAttributes audioAttributes);

    String playTts(String str, ITtsPlayListener iTtsPlayListener, AudioAttributes audioAttributes);

    void registerInitCallback(ITtsInitListener iTtsInitListener);

    void removePlayingListener(@NonNull IPlayingListener iPlayingListener);

    void removeTtsSpeakerChooseListener(@NonNull ITtsSpeakerChooseListener iTtsSpeakerChooseListener);

    void removeTtsSpeakerListener(@NonNull ITtsSpeakerListener iTtsSpeakerListener);

    int setAppendTtsSpeakerPath(@NonNull String str);

    void setChooseTts(String str, String str2);

    @Deprecated
    void setTtsSpeaker(@NonNull String str);

    void setTtsSpeakerInfo(@NonNull String str, String str2);

    void startTtsPage(Context context);

    void stopPlay(String str);
}
