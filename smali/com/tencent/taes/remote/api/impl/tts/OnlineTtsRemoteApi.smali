.class public Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;
.super Landroid/app/Service;
.source "OnlineTtsRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/tts/IOnlineTtsApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "OnlineTtsRemoteApi"


# instance fields
.field private mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public playTts(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->playTts(Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;)V

    return-void
.end method

.method public playTts(Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;

    new-instance v1, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;

    invoke-direct {v1, p0, p2}, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi$1;-><init>(Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsListener;)V

    invoke-interface {v0, p1, v1}, Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;->playTts(Ljava/lang/String;Lcom/tencent/taes/remote/api/tts/listener/IOnlineTtsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSpeaker(I)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "OnlineTtsRemoteApi"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeaker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;->setSpeaker(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSpeedLevel(I)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "OnlineTtsRemoteApi"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;->setSpeedLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setStreamType(I)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "OnlineTtsRemoteApi"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecar/tts/log/TtsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/tencent/taes/remote/api/impl/tts/OnlineTtsRemoteApi;->mIOnlineTtsService:Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/tts/IOnlineTtsService;->setStreamType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
