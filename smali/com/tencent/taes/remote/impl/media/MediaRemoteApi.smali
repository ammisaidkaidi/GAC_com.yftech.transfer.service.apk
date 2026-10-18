.class public Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "MediaRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/media/IMediaApi;


# instance fields
.field private mService:Lcom/tencent/taes/remote/api/media/IPlayerService;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 31
    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/IPlayerService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    const-string p1, "construct"

    .line 32
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MediaRemoteApi"

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mService "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addAudioFocusListener(Lcom/tencent/taes/remote/api/media/listener/IAudioFocusListener;)V
    .locals 1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 559
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->addAudioFocusListener(Lcom/tencent/taes/remote/api/media/listener/IAudioFocusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 562
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public addPlayListListener(Lcom/tencent/taes/remote/api/media/listener/IPlayListListener;)V
    .locals 1

    const-string v0, "addPlayListListener"

    .line 277
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->addPlayListListener(Lcom/tencent/taes/remote/api/media/listener/IPlayListListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 282
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public addPlayModeListener(Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;)V
    .locals 1

    const-string v0, "addPlayModeListener"

    .line 402
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 405
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->addPlayModeListener(Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 407
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public binderConnect(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "reBindBinder"

    .line 481
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 482
    invoke-static {p1}, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/media/IPlayerService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    .line 483
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 488
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public decreaseVolume()V
    .locals 1

    const-string v0, "decreaseVolume"

    .line 189
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->decreaseVolume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const-string v0, "destroy"

    .line 87
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAudioFocus()I
    .locals 1

    const-string v0, "getAudioFocus"

    .line 463
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 466
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getAudioFocus()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 469
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    const-string v0, "getCurrentPosition"

    .line 138
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    const-string v0, "getDuration"

    .line 112
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirst()I
    .locals 1

    const-string v0, "getFirst"

    .line 314
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getFirst()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 319
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNextWhenComplete(I)I
    .locals 1

    const-string v0, "getNextWhenComplete"

    .line 353
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getNextWhenComplete(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 358
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlayIndex()I
    .locals 1

    const-string v0, "getPlayIndex"

    .line 301
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 304
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getPlayIndex()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 306
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;"
        }
    .end annotation

    const-string v0, "getPlayList"

    .line 237
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getPlayList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 242
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayListBatch(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlayListBatch page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getPlayListBatch(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 255
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayListSize()I
    .locals 1

    const-string v0, "getPlayListSize"

    .line 263
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getPlayListSize()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPlayMode()I
    .locals 1

    const-string v0, "getPlayMode"

    .line 426
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 429
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getPlayMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 432
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getUploadPosition()J
    .locals 2

    const-string v0, "getUploadPosition"

    .line 125
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->getUploadPosition()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasAudioFocus()Z
    .locals 1

    const-string v0, "hasAudioFocus"

    .line 99
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->hasAudioFocus()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "init"

    .line 37
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->init(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public initTTSPlayer()V
    .locals 1

    const-string v0, "initTTSPlayer"

    .line 439
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->initTTSPlayer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 445
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isBuffering()Z
    .locals 1

    const-string v0, "isBuffering"

    .line 492
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 495
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->isBuffering()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 498
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 1

    const-string v0, "isPlaying"

    .line 163
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->isPlaying()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSeekable()Z
    .locals 1

    const-string v0, "isSeekable"

    .line 505
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 508
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->isSeekable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 511
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportShuffleMode()Z
    .locals 1

    const-string v0, "isSupportShuffleMode"

    .line 518
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 521
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->isSupportShuffleMode()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 524
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public likeItem(Ljava/lang/String;IZ)V
    .locals 1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 548
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/media/IPlayerService;->likeItem(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 551
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public next(I)I
    .locals 1

    const-string v0, "next"

    .line 340
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->next(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 345
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause(Z)V
    .locals 1

    const-string v0, "pause"

    .line 63
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->pause(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public play(Z)V
    .locals 1

    const-string v0, "play"

    .line 51
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->play(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public pre(I)I
    .locals 1

    const-string v0, "pre"

    .line 327
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->pre(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 332
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePlayModeListener(Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;)V
    .locals 1

    const-string v0, "removePlayModeListener"

    .line 414
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 417
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->removePlayModeListener(Lcom/tencent/taes/remote/api/media/listener/IPlayModeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 419
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public resumeVolume()V
    .locals 1

    const-string v0, "resumeVolume"

    .line 176
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->resumeVolume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    const-string v0, "seekTo"

    .line 151
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService;->seekTo(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setDeviceId"

    .line 451
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 454
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->setDeviceId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 457
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlayIndex(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "setPlayIndex"

    .line 289
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService;->setPlayIndex(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 294
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlayList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setPlayList"

    .line 213
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService;->setPlayList(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlayListBatch(Ljava/lang/String;Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/media/bean/MediaBean;",
            ">;II)V"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayListBatch pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/tencent/taes/remote/api/media/IPlayerService;->setPlayListBatch(Ljava/lang/String;Ljava/util/List;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlayListener(Lcom/tencent/taes/remote/api/media/listener/IPlayerListener;)V
    .locals 1

    const-string v0, "setPlayListener"

    .line 201
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->setPlayListener(Lcom/tencent/taes/remote/api/media/listener/IPlayerListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPlayMode(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "setPlayMode"

    .line 378
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 381
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService;->setPlayMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRecommendMode(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "setRecommendMode"

    .line 366
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/media/IPlayerService;->setRecommendMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 371
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const-string v0, "stop"

    .line 75
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/media/IPlayerService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public subscribeModuleBinder()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance p0, Landroid/util/Pair;

    const-string v0, "Media"

    const-class v1, Lcom/tencent/taes/remote/api/media/IPlayerService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public switchPlayMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "switchPlayMode"

    .line 390
    invoke-direct {p0, v0}, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->log(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1}, Lcom/tencent/taes/remote/api/media/IPlayerService;->switchPlayMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 395
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateListItem(Ljava/lang/String;ILcom/tencent/taes/remote/api/media/bean/MediaBean;)V
    .locals 1

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    if-eqz v0, :cond_0

    .line 537
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/media/MediaRemoteApi;->mService:Lcom/tencent/taes/remote/api/media/IPlayerService;

    invoke-interface {p0, p1, p2, p3}, Lcom/tencent/taes/remote/api/media/IPlayerService;->updateListItem(Ljava/lang/String;ILcom/tencent/taes/remote/api/media/bean/MediaBean;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 540
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
