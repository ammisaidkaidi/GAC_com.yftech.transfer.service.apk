.class public interface abstract Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechClient;
.super Ljava/lang/Object;
.source "ISpeechClient.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract activateVrSprite(ZZLcom/tencent/wecarspeech/clientsdk/interfaces/VrSpriteInterruptedListener;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract applyRecordStatus()Z
.end method

.method public abstract cancelAudioRecord(Ljava/lang/String;)V
.end method

.method public abstract clearState(J)V
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getClientSdkVersion()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPkgName()Ljava/lang/String;
.end method

.method public abstract getRecordConfig()Lcom/tencent/wecarspeech/clientsdk/model/RecordConfig;
.end method

.method public abstract getRecordStatus()Z
.end method

.method public abstract getVrMetaData()Lcom/tencent/wecarspeech/clientsdk/model/VrMetaData;
.end method

.method public abstract holdTask(JZLcom/tencent/wecarspeech/clientsdk/interfaces/SessionInterruptListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;
        }
    .end annotation
.end method

.method public abstract holdVrSprite(JZLcom/tencent/wecarspeech/clientsdk/interfaces/VrSpriteInterruptedListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract holdVrSprite(JZZLcom/tencent/wecarspeech/clientsdk/interfaces/VrSpriteInterruptedListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyUsbConnectedStatus(Z)V
.end method

.method public abstract playAudio(Ljava/lang/String;JLcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I
.end method

.method public abstract playTTS(Ljava/lang/String;JILcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I
.end method

.method public abstract playTTS(Ljava/lang/String;JLcom/tencent/wecarspeech/clientsdk/interfaces/IPlayStateCallback;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registSpeechStateCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/SpeechStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerAppDomain(Lcom/tencent/wecarspeech/clientsdk/model/Domain;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;
        }
    .end annotation
.end method

.method public abstract registerAppSkill(Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;
        }
    .end annotation
.end method

.method public abstract registerAppSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;
        }
    .end annotation
.end method

.method public abstract registerAppWakeupEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/UnsupportedWordException;
        }
    .end annotation
.end method

.method public abstract registerCarStatusListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ICarStatusListener;)V
.end method

.method public abstract registerHighPriorityScene(Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;)Ljava/lang/String;
.end method

.method public abstract registerSceneWakeupEvent(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract registerSceneWakeupEvent(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract registerSubWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/SubWakeupScene;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/MultiSceneException;
        }
    .end annotation
.end method

.method public abstract registerSystemSkill(Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;
        }
    .end annotation
.end method

.method public abstract registerSystemSkill(Ljava/lang/String;Lcom/tencent/wecarspeech/clientsdk/model/Skill;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalDomainException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSkillException;
        }
    .end annotation
.end method

.method public abstract registerSystemWakeUpEvent(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpEvent;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/UnsupportedWordException;
        }
    .end annotation
.end method

.method public abstract registerWakeupScene(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/MultiSceneException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSceneException;
        }
    .end annotation
.end method

.method public abstract registerWakeupSceneToSystemVr(Lcom/tencent/wecarspeech/clientsdk/model/WakeUpScene;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/MultiSceneException;,
            Lcom/tencent/wecarspeech/clientsdk/exceptions/IllegalSceneException;
        }
    .end annotation
.end method

.method public abstract releaseRecordStatus()Z
.end method

.method public abstract releaseTask(J)V
.end method

.method public abstract releaseVrSprite(J)V
.end method

.method public abstract removeSpeechActiveListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;)V
.end method

.method public abstract reportAction(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetState()V
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setAsrContext(Lcom/tencent/wecarspeech/clientsdk/model/AsrContext;)V
.end method

.method public abstract setAudioRecordCallback(Lcom/tencent/wecarspeech/vframework/IAudioRecordCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setClientType(J)V
.end method

.method public abstract setCurrentMiniProgramName(Ljava/lang/String;)V
.end method

.method public abstract setHelpInfo(Lcom/tencent/wecarspeech/clientsdk/model/HelpInfo;)V
.end method

.method public abstract setHotContactList(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotContact;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHotContactList(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/util/List;Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotContact;",
            ">;",
            "Lcom/tencent/wecarspeech/clientsdk/interfaces/IHotWordsCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setHotMusicList(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotMusic;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHotWechatList(Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWordType;",
            "Ljava/util/List<",
            "Lcom/tencent/wecarspeech/clientsdk/model/HotWechat;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMiniProgramList(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPkgName(Ljava/lang/String;)V
.end method

.method public abstract setRecordOnly(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSemanticContext(Lcom/tencent/wecarspeech/clientsdk/model/SemanticContext;)V
.end method

.method public abstract setSpeechActiveListener(Lcom/tencent/wecarspeech/clientsdk/interfaces/ISpeechActiveListener;)V
.end method

.method public abstract setSpeechState(II)V
.end method

.method public abstract setState(J)V
.end method

.method public abstract setTryBeforeWakeup(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTryHint(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVrHints(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVrSpriteModalState(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;
        }
    .end annotation
.end method

.method public abstract setVrSpriteModalState(JZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wecarspeech/clientsdk/exceptions/ClientNotInitException;
        }
    .end annotation
.end method

.method public abstract setVrSpriteState(JI)V
.end method

.method public abstract startAudioRecord(Lcom/tencent/wecarspeech/vframework/RecordParam;Lcom/tencent/wecarspeech/clientsdk/interfaces/RecordCallback;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startAudioRecordSync(Lcom/tencent/wecarspeech/vframework/RecordSyncParam;Lcom/tencent/wecarspeech/clientsdk/interfaces/RecordCallback;)Lcom/tencent/wecarspeech/vframework/StartRecordResult;
.end method

.method public abstract startSRWithContext(JLcom/tencent/wecarspeech/clientsdk/model/SRContextParams;)V
.end method

.method public abstract startSTT(JLcom/tencent/wecarspeech/clientsdk/model/STTParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startWaitSmartInput(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
.end method

.method public abstract startWaitSmartInputInBack(JLcom/tencent/wecarspeech/clientsdk/model/SmartParams;)V
.end method

.method public abstract startWaitVoiceInput(JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
.end method

.method public abstract startWaitVoiceInputInBack(JLcom/tencent/wecarspeech/clientsdk/model/VoiceParams;)V
.end method

.method public abstract stopAllAudio()V
.end method

.method public abstract stopAllTTS()V
.end method

.method public abstract stopAudio(I)V
.end method

.method public abstract stopAudioRecord(Ljava/lang/String;)V
.end method

.method public abstract stopSTT(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopTTS(I)V
.end method

.method public abstract stopWaitSmartInput(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V
.end method

.method public abstract stopWaitVoiceInput(Lcom/tencent/wecarspeech/clientsdk/interfaces/OnStopCallback;)V
.end method

.method public abstract unRegisterHighPriorityScene(Ljava/lang/String;)V
.end method

.method public abstract unregistSpeechStateCallback(Lcom/tencent/wecarspeech/clientsdk/interfaces/SpeechStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterAllSubWakeupScene()V
.end method

.method public abstract unregisterAppDomain(Lcom/tencent/wecarspeech/clientsdk/enums/DomainType;)V
.end method

.method public abstract unregisterAppDomain(Ljava/lang/String;)V
.end method

.method public abstract unregisterAppSkill(Ljava/lang/String;)V
.end method

.method public abstract unregisterAppWakeupEvent(Ljava/lang/String;)V
.end method

.method public abstract unregisterCarStatusListener()V
.end method

.method public abstract unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterSceneWakeupEvent(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterSubWakeupScene(Ljava/lang/String;)V
.end method

.method public abstract unregisterSystemSkill(Ljava/lang/String;)V
.end method

.method public abstract unregisterSystemWakeUpEvent(Ljava/lang/String;)V
.end method

.method public abstract unregisterWakeupScene(Ljava/lang/String;)V
.end method

.method public abstract wordSegment(Lcom/tencent/wecarspeech/clientsdk/model/SegmentText;)Lcom/tencent/wecarspeech/clientsdk/model/SegmentResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
