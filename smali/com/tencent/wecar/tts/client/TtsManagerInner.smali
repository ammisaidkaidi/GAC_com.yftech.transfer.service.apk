.class public final Lcom/tencent/wecar/tts/client/TtsManagerInner;
.super Ljava/lang/Object;
.source "TtsManagerInner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecar/tts/client/TtsManagerInner$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TtsManagerInner"


# instance fields
.field private volatile mConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    invoke-direct {v0}, Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner;->mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    .line 49
    new-instance v0, Lcom/tencent/wecar/tts/client/TtsManagerInner$1;

    invoke-direct {v0, p0}, Lcom/tencent/wecar/tts/client/TtsManagerInner$1;-><init>(Lcom/tencent/wecar/tts/client/TtsManagerInner;)V

    iput-object v0, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wecar/tts/client/TtsManagerInner$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/tencent/wecar/tts/client/TtsManagerInner;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/wecar/tts/client/TtsManagerInner;)Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner;->mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/wecar/tts/client/TtsManagerInner;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner;->mConnected:Z

    return p1
.end method

.method public static getInstance()Lcom/tencent/wecar/tts/client/TtsManagerInner;
    .locals 1

    .line 31
    invoke-static {}, Lcom/tencent/wecar/tts/client/TtsManagerInner$SingletonHolder;->access$100()Lcom/tencent/wecar/tts/client/TtsManagerInner;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bindService(Landroid/content/Context;)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner;->mConnected:Z

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/wecar/tts/server/TtsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public getITtsApi()Lcom/tencent/taes/remote/api/tts/ITtsApi;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/wecar/tts/client/TtsManagerInner;->mTtsRemoteApi:Lcom/tencent/taes/remote/api/impl/tts/TtsRemoteApi;

    return-object p0
.end method
