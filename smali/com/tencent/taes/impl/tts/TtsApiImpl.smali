.class public Lcom/tencent/taes/impl/tts/TtsApiImpl;
.super Lcom/tencent/taes/impl/base/AbstractApi;
.source "TtsApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/tts/ITtsApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "TtsApiImpl"


# instance fields
.field private final defaultStreamType:I

.field private mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/AbstractApi;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->defaultStreamType:I

    .line 31
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecar/tts/TtsManager;->init(Landroid/content/Context;)Z

    return-void
.end method

.method private getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;
    .locals 2

    .line 35
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/TtsManager;->getRemoteApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    .line 37
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {v0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/taes/util/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/wecar/tts/TtsManager;->init(Landroid/content/Context;)Z

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    return-object p0
.end method


# virtual methods
.method public addPlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->addPlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V

    :cond_0
    return-void
.end method

.method public addTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;)V
    .locals 1
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 233
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->addTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;)V

    :cond_0
    return-void
.end method

.method public addTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;)V
    .locals 1
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->addTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableTtsSpeaker()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 252
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 254
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->getAvailableTtsSpeaker()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChooseTtsId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 174
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->getChooseTtsId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChooseTtsName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->getChooseTtsName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getSpeakerName(Ljava/lang/String;)V
    .locals 1

    .line 299
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->getSpeakerName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getTtsSpeaker()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->getTtsSpeaker()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTtsSpeakerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->getTtsSpeakerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 280
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 282
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "connect error"

    return-object p0
.end method

.method public initTts()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/wecar/tts/TtsManager;->init(Landroid/content/Context;)Z

    return-void
.end method

.method public initTts(I)V
    .locals 0

    .line 48
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-static {}, Lcom/tencent/taes/TaesSDKHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/wecar/tts/TtsManager;->init(Landroid/content/Context;)Z

    return-void
.end method

.method public isInited()Z
    .locals 0

    .line 71
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/TtsManager;->getRemoteApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->isInited()Z

    move-result p0

    return p0
.end method

.method public isOfficialTtsSpeaker()Z
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 207
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->isOfficialTtsSpeaker()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public playTts(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public playTts(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 63
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->playTts(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public playTts(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->playTts(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public playTts(Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->playTts(Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public registerInitCallback(Lcom/tencent/taes/remote/api/tts/listener/ITtsInitListener;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->registerInitCallback(Lcom/tencent/taes/remote/api/tts/listener/ITtsInitListener;)V

    :cond_0
    return-void
.end method

.method public removePlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V
    .locals 1
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 271
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->removePlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V

    :cond_0
    return-void
.end method

.method public removeTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;)V
    .locals 1
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 242
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->removeTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;)V

    :cond_0
    return-void
.end method

.method public removeTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;)V
    .locals 1
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 224
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 226
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->removeTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;)V

    :cond_0
    return-void
.end method

.method public setAppendTtsSpeakerPath(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setAppendTtsSpeakerPath(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public setChooseTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 308
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 310
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setChooseTts(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTtsSpeaker(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startTtsPage(Landroid/content/Context;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 292
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->startTtsPage(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public stopPlay(Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/tencent/taes/impl/tts/TtsApiImpl;->getTtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    if-eqz v0, :cond_0

    .line 128
    iget-object p0, p0, Lcom/tencent/taes/impl/tts/TtsApiImpl;->mTtsApi:Lcom/tencent/taes/remote/api/tts/ITtsApi;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsApi;->stopPlay(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
