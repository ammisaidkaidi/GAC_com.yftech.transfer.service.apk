package com.tencent.wecarspeech.clientsdk.interfaces;

import android.os.RemoteException;
import android.support.annotation.Keep;
import com.tencent.wecarspeech.clientsdk.enums.DomainType;
import com.tencent.wecarspeech.clientsdk.exceptions.ClientNotInitException;
import com.tencent.wecarspeech.clientsdk.exceptions.IllegalDomainException;
import com.tencent.wecarspeech.clientsdk.exceptions.IllegalSceneException;
import com.tencent.wecarspeech.clientsdk.exceptions.IllegalSkillException;
import com.tencent.wecarspeech.clientsdk.exceptions.MultiSceneException;
import com.tencent.wecarspeech.clientsdk.exceptions.UnsupportedWordException;
import com.tencent.wecarspeech.clientsdk.model.AsrContext;
import com.tencent.wecarspeech.clientsdk.model.Domain;
import com.tencent.wecarspeech.clientsdk.model.HelpInfo;
import com.tencent.wecarspeech.clientsdk.model.HotContact;
import com.tencent.wecarspeech.clientsdk.model.HotMusic;
import com.tencent.wecarspeech.clientsdk.model.HotWechat;
import com.tencent.wecarspeech.clientsdk.model.HotWordType;
import com.tencent.wecarspeech.clientsdk.model.RecordConfig;
import com.tencent.wecarspeech.clientsdk.model.SRContextParams;
import com.tencent.wecarspeech.clientsdk.model.STTParams;
import com.tencent.wecarspeech.clientsdk.model.SegmentResult;
import com.tencent.wecarspeech.clientsdk.model.SegmentText;
import com.tencent.wecarspeech.clientsdk.model.SemanticContext;
import com.tencent.wecarspeech.clientsdk.model.Skill;
import com.tencent.wecarspeech.clientsdk.model.SmartParams;
import com.tencent.wecarspeech.clientsdk.model.SubWakeupScene;
import com.tencent.wecarspeech.clientsdk.model.VoiceParams;
import com.tencent.wecarspeech.clientsdk.model.VrMetaData;
import com.tencent.wecarspeech.clientsdk.model.WakeUpEvent;
import com.tencent.wecarspeech.clientsdk.model.WakeUpScene;
import com.tencent.wecarspeech.vframework.IAudioRecordCallback;
import com.tencent.wecarspeech.vframework.RecordParam;
import com.tencent.wecarspeech.vframework.RecordSyncParam;
import com.tencent.wecarspeech.vframework.StartRecordResult;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Keep
/* loaded from: /home/user/work/dex/classes.dex */
public interface ISpeechClient {
    long activateVrSprite(boolean z, boolean z2, VrSpriteInterruptedListener vrSpriteInterruptedListener) throws ClientNotInitException, RemoteException;

    boolean applyRecordStatus();

    void cancelAudioRecord(String str);

    void clearState(long j);

    String getAppId();

    String getAppName();

    @Deprecated
    String getClientSdkVersion();

    String getPkgName();

    RecordConfig getRecordConfig();

    boolean getRecordStatus();

    VrMetaData getVrMetaData();

    void holdTask(long j, boolean z, SessionInterruptListener sessionInterruptListener) throws RemoteException, ClientNotInitException;

    void holdVrSprite(long j, boolean z, VrSpriteInterruptedListener vrSpriteInterruptedListener) throws ClientNotInitException, RemoteException;

    void holdVrSprite(long j, boolean z, boolean z2, VrSpriteInterruptedListener vrSpriteInterruptedListener) throws ClientNotInitException, RemoteException;

    void notifyUsbConnectedStatus(boolean z);

    int playAudio(String str, long j, IPlayStateCallback iPlayStateCallback);

    int playTTS(String str, long j, int i, IPlayStateCallback iPlayStateCallback);

    @Deprecated
    int playTTS(String str, long j, IPlayStateCallback iPlayStateCallback);

    void registSpeechStateCallback(SpeechStateCallback speechStateCallback) throws RemoteException;

    void registerAppDomain(Domain domain) throws IllegalDomainException;

    String registerAppSkill(DomainType domainType, Skill skill) throws IllegalDomainException, IllegalSkillException;

    String registerAppSkill(String str, Skill skill) throws IllegalDomainException, IllegalSkillException;

    String registerAppWakeupEvent(WakeUpEvent wakeUpEvent) throws IllegalArgumentException, UnsupportedWordException;

    void registerCarStatusListener(ICarStatusListener iCarStatusListener);

    String registerHighPriorityScene(SubWakeupScene subWakeupScene);

    String registerSceneWakeupEvent(String str, WakeUpEvent wakeUpEvent) throws IllegalArgumentException;

    void registerSceneWakeupEvent(String str, Set<WakeUpEvent> set) throws IllegalArgumentException;

    String registerSubWakeupScene(SubWakeupScene subWakeupScene) throws IllegalArgumentException, MultiSceneException;

    String registerSystemSkill(DomainType domainType, Skill skill) throws IllegalDomainException, IllegalSkillException;

    String registerSystemSkill(String str, Skill skill) throws IllegalDomainException, IllegalSkillException;

    String registerSystemWakeUpEvent(WakeUpEvent wakeUpEvent) throws IllegalArgumentException, UnsupportedWordException;

    String registerWakeupScene(WakeUpScene wakeUpScene) throws IllegalArgumentException, MultiSceneException, IllegalSceneException;

    String registerWakeupSceneToSystemVr(WakeUpScene wakeUpScene) throws IllegalArgumentException, MultiSceneException, IllegalSceneException;

    boolean releaseRecordStatus();

    void releaseTask(long j);

    void releaseVrSprite(long j);

    void removeSpeechActiveListener(ISpeechActiveListener iSpeechActiveListener);

    void reportAction(String str, Map<String, String> map);

    void resetState();

    void setAppName(String str);

    void setAsrContext(AsrContext asrContext);

    void setAudioRecordCallback(IAudioRecordCallback iAudioRecordCallback) throws RemoteException;

    void setClientType(long j);

    void setCurrentMiniProgramName(String str);

    void setHelpInfo(HelpInfo helpInfo);

    void setHotContactList(HotWordType hotWordType, List<HotContact> list);

    void setHotContactList(HotWordType hotWordType, List<HotContact> list, IHotWordsCallback iHotWordsCallback);

    void setHotMusicList(HotWordType hotWordType, List<HotMusic> list);

    void setHotWechatList(HotWordType hotWordType, List<HotWechat> list);

    void setMiniProgramList(Set<String> set);

    void setPkgName(String str);

    void setRecordOnly(boolean z) throws RemoteException;

    void setSemanticContext(SemanticContext semanticContext);

    void setSpeechActiveListener(ISpeechActiveListener iSpeechActiveListener);

    void setSpeechState(int i, int i2);

    void setState(long j);

    void setTryBeforeWakeup(String str, String str2);

    void setTryHint(Set<String> set);

    void setVrHints(long j, List<String> list);

    void setVrSpriteModalState(long j, boolean z) throws ClientNotInitException;

    void setVrSpriteModalState(long j, boolean z, boolean z2) throws ClientNotInitException;

    void setVrSpriteState(long j, int i);

    @Deprecated
    String startAudioRecord(RecordParam recordParam, RecordCallback recordCallback);

    StartRecordResult startAudioRecordSync(RecordSyncParam recordSyncParam, RecordCallback recordCallback);

    void startSRWithContext(long j, SRContextParams sRContextParams);

    void startSTT(long j, STTParams sTTParams) throws RemoteException;

    void startWaitSmartInput(long j, SmartParams smartParams);

    void startWaitSmartInputInBack(long j, SmartParams smartParams);

    void startWaitVoiceInput(long j, VoiceParams voiceParams);

    void startWaitVoiceInputInBack(long j, VoiceParams voiceParams);

    void stopAllAudio();

    void stopAllTTS();

    void stopAudio(int i);

    void stopAudioRecord(String str);

    void stopSTT(OnStopCallback onStopCallback) throws RemoteException;

    void stopTTS(int i);

    void stopWaitSmartInput(OnStopCallback onStopCallback);

    void stopWaitVoiceInput(OnStopCallback onStopCallback);

    void unRegisterHighPriorityScene(String str);

    void unregistSpeechStateCallback(SpeechStateCallback speechStateCallback) throws RemoteException;

    void unregisterAllSubWakeupScene();

    void unregisterAppDomain(DomainType domainType);

    void unregisterAppDomain(String str);

    void unregisterAppSkill(String str);

    void unregisterAppWakeupEvent(String str);

    void unregisterCarStatusListener();

    void unregisterSceneWakeupEvent(String str, String str2);

    void unregisterSceneWakeupEvent(String str, Set<String> set);

    void unregisterSubWakeupScene(String str);

    void unregisterSystemSkill(String str);

    void unregisterSystemWakeUpEvent(String str);

    void unregisterWakeupScene(String str);

    SegmentResult wordSegment(SegmentText segmentText) throws RemoteException;
}
