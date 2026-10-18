.class public Lcom/tencent/taes/impl/moss/MossApiImpl;
.super Lcom/tencent/taes/impl/base/AbstractApi;
.source "MossApiImpl.java"

# interfaces
.implements Lcom/tencent/taes/api/moss/IMossApi;


# static fields
.field public static END:Ljava/lang/String; = "end"

.field public static ERROR:Ljava/lang/String; = "error"

.field public static PAUSE:Ljava/lang/String; = "pause"

.field public static PLAY:Ljava/lang/String; = "play"

.field public static STOP:Ljava/lang/String; = "stop"

.field private static final TAG:Ljava/lang/String; = "MossApiImpl"

.field public static WAItING:Ljava/lang/String; = "waiting"


# instance fields
.field private callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

.field private conn:Landroid/content/ServiceConnection;

.field private context:Landroid/content/Context;

.field private isConnection:Z

.field private weCarMasAudioCallback:Lcom/tencent/mossbiz/IWeCarMasAudioCallback;

.field private weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/tencent/taes/impl/base/AbstractApi;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->isConnection:Z

    .line 192
    new-instance v0, Lcom/tencent/taes/impl/moss/MossApiImpl$2;

    invoke-direct {v0, p0}, Lcom/tencent/taes/impl/moss/MossApiImpl$2;-><init>(Lcom/tencent/taes/impl/moss/MossApiImpl;)V

    iput-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->conn:Landroid/content/ServiceConnection;

    .line 222
    new-instance v0, Lcom/tencent/taes/impl/moss/MossApiImpl$3;

    invoke-direct {v0, p0}, Lcom/tencent/taes/impl/moss/MossApiImpl$3;-><init>(Lcom/tencent/taes/impl/moss/MossApiImpl;)V

    iput-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasAudioCallback:Lcom/tencent/mossbiz/IWeCarMasAudioCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/tencent/taes/impl/moss/MossApiImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/taes/impl/moss/MossApiImpl;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->isConnection:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/mossbiz/IWeCarMasService;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/taes/impl/moss/MossApiImpl;Lcom/tencent/mossbiz/IWeCarMasService;)Lcom/tencent/mossbiz/IWeCarMasService;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/taes/api/moss/listener/MossCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/taes/impl/moss/MossApiImpl;)Lcom/tencent/mossbiz/IWeCarMasAudioCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasAudioCallback:Lcom/tencent/mossbiz/IWeCarMasAudioCallback;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "1.0"

    return-object p0
.end method

.method public getMossAudioBean()Lcom/tencent/taes/api/moss/bean/MossAudioBean;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v0, :cond_0

    .line 348
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    invoke-interface {p0}, Lcom/tencent/mossbiz/IWeCarMasService;->musicInfo()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/tencent/taes/api/moss/bean/MossAudioBean;

    invoke-static {p0, v0}, Lcom/tencent/taes/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/taes/api/moss/bean/MossAudioBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    if-eqz v0, :cond_1

    .line 354
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecentAppList(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    invoke-interface {p0}, Lcom/tencent/mossbiz/IWeCarMasService;->getRecentAppList()Ljava/util/List;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 130
    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onSucceeded(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz p1, :cond_1

    const-string p0, "error"

    .line 135
    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    if-eqz v0, :cond_1

    .line 139
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    if-eqz p1, :cond_1

    const-string p0, "error"

    .line 141
    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadAllAppsFromNet(Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/taes/local/api/moss/IMossRequestCallback<",
            "Lcom/tencent/taes/api/moss/bean/MiniAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    new-instance v1, Lcom/tencent/taes/impl/moss/MossApiImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/taes/impl/moss/MossApiImpl$1;-><init>(Lcom/tencent/taes/impl/moss/MossApiImpl;Lcom/tencent/taes/local/api/moss/IMossRequestCallback;)V

    invoke-interface {v0, v1}, Lcom/tencent/mossbiz/IWeCarMasService;->loadAllAppsFromNet(Lcom/tencent/mossbiz/IWeCarMasCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_1

    const-string p0, "error"

    .line 81
    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    if-eqz v0, :cond_1

    .line 85
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    if-eqz p1, :cond_1

    const-string p0, "error"

    .line 87
    invoke-interface {p1, p0}, Lcom/tencent/taes/local/api/moss/IMossRequestCallback;->onFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public next()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v0, :cond_0

    .line 310
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    invoke-interface {p0}, Lcom/tencent/mossbiz/IWeCarMasService;->onAudioNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 312
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    if-eqz v0, :cond_1

    .line 315
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public openMossApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/mossbiz/IWeCarMasService;->openMossApp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    if-eqz p1, :cond_1

    .line 108
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    invoke-interface {p0}, Lcom/tencent/mossbiz/IWeCarMasService;->onAudioPause()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    if-eqz v0, :cond_1

    .line 302
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    invoke-interface {p0}, Lcom/tencent/mossbiz/IWeCarMasService;->onPlayer()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 286
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    if-eqz v0, :cond_1

    .line 289
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public prev()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->weCarMasService:Lcom/tencent/mossbiz/IWeCarMasService;

    invoke-interface {p0}, Lcom/tencent/mossbiz/IWeCarMasService;->onAudioPre()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 325
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    if-eqz v0, :cond_1

    .line 328
    iget-object p0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    invoke-interface {p0}, Lcom/tencent/taes/api/moss/listener/MossCallback;->connectionFail()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerConnection(Landroid/content/Context;)V
    .locals 3

    .line 368
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 369
    iget-boolean v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->isConnection:Z

    if-nez v0, :cond_0

    .line 371
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.mossbiz.aidl"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.tencent.wecar"

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->conn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->isConnection:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerMossCallback(Lcom/tencent/taes/api/moss/listener/MossCallback;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    return-void
.end method

.method public unRegisterConnection()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->isConnection:Z

    if-eqz v0, :cond_0

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->isConnection:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 392
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterMossCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/tencent/taes/impl/moss/MossApiImpl;->callback:Lcom/tencent/taes/api/moss/listener/MossCallback;

    return-void
.end method
