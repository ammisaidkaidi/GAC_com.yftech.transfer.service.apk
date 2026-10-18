.class public Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;
.super Ljava/lang/Object;
.source "TtsRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/tts/ITtsApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "TtsRemoteApi"


# instance fields
.field private final defaultSpeedLevel:I

.field private final mITtsPlayCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field private mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

.field private final mPlayingListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTtsInitCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback$Stub;

.field private final mTtsInitListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/tts/listener/ITtsInitListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTtsPlayCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback$Stub;

.field private final mTtsSpeakerCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback$Stub;

.field private final mTtsSpeakerChooseCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback$Stub;

.field private final mTtsSpeakerChooseListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTtsSpeakerListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->defaultSpeedLevel:I

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerListenerList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerChooseListenerList:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$1;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$1;-><init>(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback$Stub;

    .line 59
    new-instance v0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$2;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$2;-><init>(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerChooseCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback$Stub;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mPlayingListener:Ljava/util/List;

    .line 71
    new-instance v0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$3;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$3;-><init>(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsPlayCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback$Stub;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsInitListenerList:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$4;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$4;-><init>(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsInitCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback$Stub;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsPlayCallbackMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerChooseListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mPlayingListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsInitListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;)Ljava/util/Map;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsPlayCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method private createITtsPlayCallbackStub(Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;
    .locals 1

    .line 188
    new-instance v0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;

    invoke-direct {v0, p0, p1}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi$5;-><init>(Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)V

    return-object v0
.end method

.method private playTtsByStreamType(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;
    .locals 8

    const-string v0, "TtsRemoteApi"

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTts: text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";speedLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 239
    iget-object v1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    .line 243
    invoke-direct {p0, p4}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->createITtsPlayCallbackStub(Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v2 .. v7}, Lcom/tencent/taes/remote/api/tts/ITtsService;->playTts(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/tencent/taes/remote/api/tts/ITtsService;->playTts(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    goto :goto_2

    .line 248
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method public addPlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V
    .locals 1
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 388
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mPlayingListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mPlayingListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;)V
    .locals 1
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 352
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerChooseListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerChooseListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;)V
    .locals 1
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 345
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public binderConnect(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "TtsRemoteApi"

    const-string v1, "binderConnect: "

    .line 99
    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lcom/tencent/taes/remote/api/tts/ITtsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/tts/ITtsService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    .line 103
    :try_start_0
    iget-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback$Stub;

    invoke-interface {p1, v0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->addTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerCallback;)V

    .line 105
    iget-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerChooseCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback$Stub;

    invoke-interface {p1, v0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->addTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseCallback;)V

    .line 107
    iget-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsPlayCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback$Stub;

    invoke-interface {p1, v0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->addPlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingCallback;)V

    .line 109
    iget-object p1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsInitCallbackStub:Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback$Stub;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->registerInitListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsInitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string p1, "TtsRemoteApi"

    .line 112
    invoke-static {p1, p0}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public binderDisConnect()V
    .locals 6

    const-string v0, "TtsRemoteApi"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDisConnect:  mITtsPlayCallbackMap.size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsPlayCallbackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsPlayCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;

    if-eqz v2, :cond_0

    const/16 v3, -0x2710

    const-string v4, "TtsService is dead."

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;->onError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsPlayCallbackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAvailableTtsSpeaker()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 378
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->getAvailableTtsSpeaker()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 380
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChooseTtsId()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 422
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->getChooseTtsId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 424
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getChooseTtsName()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 445
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->getChooseTtsName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 447
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getSpeakerName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getTtsRecordPcmValue()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 481
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->getTtsRecordPcmValue()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 483
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTtsSpeaker()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->getTtsSpeaker()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 300
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTtsSpeakerName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->getTtsSpeakerName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 313
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 405
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->getVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 407
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public isInited()Z
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "TtsRemoteApi"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {v2}, Lcom/tencent/taes/remote/api/tts/ITtsService;->isInited()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->isInited()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "TtsRemoteApi"

    const-string v0, "TtsService connect failure."

    .line 139
    invoke-static {p0, v0}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOfficialTtsSpeaker()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 335
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/tts/ITtsService;->isOfficialTtsSpeaker()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 337
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public playTts(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->playTtsByStreamType(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->playTtsByStreamType(Ljava/lang/String;IILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;
    .locals 3

    const-string v0, "TtsRemoteApi"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTts: text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";speedLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";audioAttributes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 172
    iget-object v1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-direct {p0, p3}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->createITtsPlayCallbackStub(Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;)Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback$Stub;

    move-result-object p0

    invoke-interface {v1, p1, p2, p0, p4}, Lcom/tencent/taes/remote/api/tts/ITtsService;->playTtsByAudioAttribute(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback;Landroid/media/AudioAttributes;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/tts/ITtsService;->playTtsByAudioAttribute(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayCallback;Landroid/media/AudioAttributes;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    goto :goto_2

    .line 181
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0
.end method

.method public playTts(Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->playTts(Ljava/lang/String;ILcom/tencent/taes/remote/api/tts/listener/ITtsPlayListener;Landroid/media/AudioAttributes;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerInitCallback(Lcom/tencent/taes/remote/api/tts/listener/ITtsInitListener;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsInitListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsInitListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removePlayingListener(Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;)V
    .locals 0
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/IPlayingListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 395
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mPlayingListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TtsRemoteApi"

    const-string p1, "IPlayingListener is NOT added"

    .line 397
    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeTtsSpeakerChooseListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;)V
    .locals 0
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerChooseListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 359
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerChooseListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TtsRemoteApi"

    const-string p1, "ITtsSpeakerChooseListener is NOT added"

    .line 361
    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeTtsSpeakerListener(Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;)V
    .locals 0
    .param p1    # Lcom/tencent/taes/remote/api/tts/listener/ITtsSpeakerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 367
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mTtsSpeakerListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "TtsRemoteApi"

    const-string p1, "ITtsSpeakerListener is NOT added"

    .line 369
    invoke-static {p0, p1}, Lcom/tencent/wecar/tts/log/TtsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAppendTtsSpeakerPath(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 321
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService;->setAppendTtsSpeakerPath(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 325
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public setChooseTts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/tts/ITtsService;->setChooseTts(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 436
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTtsRecordPcm(Z)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 471
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService;->setTtsRecordPcm(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 473
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTtsSpeaker(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService;->setTtsSpeaker(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/TtsManager;->uploadTtsSpeakerSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 283
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/tts/ITtsService;->setTtsSpeakerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/wecar/tts/TtsManager;->uploadTtsSpeakerSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startTtsPage(Landroid/content/Context;)V
    .locals 2

    .line 455
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 456
    invoke-static {}, Lcom/tencent/wecar/tts/TtsManager;->getInstance()Lcom/tencent/wecar/tts/TtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecar/tts/TtsManager;->getUseApk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.wecar.tts.app"

    const-string v1, "com.tencent.wecar.tts.client.PersonaliseTTSActivity"

    .line 457
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 460
    :cond_0
    const-class v0, Lcom/tencent/wecar/tts/client/PersonaliseTTSActivity;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const-string v0, "skinMode"

    const/4 v1, 0x2

    .line 462
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 463
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public stopPlay(Ljava/lang/String;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "TtsRemoteApi"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlay: msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 260
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;->mITtsService:Lcom/tencent/taes/remote/api/tts/ITtsService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/ITtsService;->stopPlay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
