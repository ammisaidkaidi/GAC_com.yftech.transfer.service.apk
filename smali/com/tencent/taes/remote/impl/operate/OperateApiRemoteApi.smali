.class public Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;
.super Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.source "OperateApiRemoteApi.java"

# interfaces
.implements Lcom/tencent/taes/remote/api/operate/IOperateApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "OperateApiRemoteApi"


# instance fields
.field private mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

.field private mSceneBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener$Stub;

.field private final mSceneBannerInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneStatusBannerInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/listener/SceneStatusBannerInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneTipsInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener$Stub;

.field private final mSceneTipsInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneTipsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneTipsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneWeakPushComplete:Z

.field private mSceneWeakPushInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener$Stub;

.field private final mSceneWeakPushInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/listener/SceneWeakPushInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener$Stub;

.field private mStatusInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakPushInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 37
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneBannerInfoListeners:Ljava/util/List;

    .line 38
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsInfoListeners:Ljava/util/List;

    .line 39
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneStatusBannerInfoListeners:Ljava/util/List;

    .line 40
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushInfoListeners:Ljava/util/List;

    const/4 p2, 0x0

    .line 42
    iput-boolean p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushComplete:Z

    .line 45
    new-instance p2, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$1;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$1;-><init>(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener$Stub;

    .line 64
    new-instance p2, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$2;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$2;-><init>(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener$Stub;

    .line 83
    new-instance p2, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$3;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$3;-><init>(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mStatusBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener$Stub;

    .line 95
    new-instance p2, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$4;

    invoke-direct {p2, p0}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi$4;-><init>(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener$Stub;

    .line 109
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->onBind(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$002(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneBannerInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mStatusInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneStatusBannerInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mWeakPushInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method private onBind(Landroid/os/IBinder;)V
    .locals 2

    .line 129
    invoke-static {p1}, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/remote/api/operate/IOperateService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    const-string p1, "OperateApiRemoteApi"

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind mOperateService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_0
    iget-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener$Stub;

    invoke-interface {p1, v0}, Lcom/tencent/taes/remote/api/operate/IOperateService;->registerSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneBannerInfoListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OperateApiRemoteApi"

    const-string v1, "registerSceneBannerInfoListener exception caught "

    .line 134
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mStatusBannerInfoListener:Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener$Stub;

    invoke-interface {p1, v0}, Lcom/tencent/taes/remote/api/operate/IOperateService;->registerStatusBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/IStatusBannerInfoListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "OperateApiRemoteApi"

    const-string v1, "registerStatusBannerInfoListener exception caught "

    .line 140
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener$Stub;

    invoke-interface {p1, v0}, Lcom/tencent/taes/remote/api/operate/IOperateService;->registerSceneWeakPushInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneWeakPushInfoListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string v0, "OperateApiRemoteApi"

    const-string v1, "registerSceneWeakPushInfoListener exception caught "

    .line 146
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsInfoListener:Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener$Stub;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/operate/IOperateService;->registerSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/ISceneTipsInfoListener;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    const-string p1, "OperateApiRemoteApi"

    const-string v0, "registerSceneTipsInfoListener exception caught "

    .line 152
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public binderConnect(Landroid/os/IBinder;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->onBind(Landroid/os/IBinder;)V

    .line 120
    invoke-super {p0, p1}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    return-void
.end method

.method public binderDisConnect()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    return-void
.end method

.method public getSceneBannerInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneBannerInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "OperateApiRemoteApi"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSceneBannerInfoList mOperateService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/operate/IOperateService;->getSceneBannerInfos()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSceneTipsInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneTipsInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "OperateApiRemoteApi"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSceneTipsInfoList mOperateService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/operate/IOperateService;->getSceneTipsInfos()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSceneWeakPushInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneWeakPushInfo;",
            ">;"
        }
    .end annotation

    .line 281
    iget-boolean v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushComplete:Z

    if-eqz v0, :cond_0

    const-string v0, "OperateApiRemoteApi"

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSceneWeakPushInfos mWeakPushInfoList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mWeakPushInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mWeakPushInfoList:Ljava/util/List;

    return-object p0

    :cond_0
    const-string v0, "OperateApiRemoteApi"

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSceneWeakPushInfos mOperateService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    if-eqz v0, :cond_1

    .line 288
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/operate/IOperateService;->getSceneWeakPushInfos()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 290
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStatusBannerInfos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/taes/remote/api/operate/bean/SceneStatusBannerInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "OperateApiRemoteApi"

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStatusBannerInfos mOperateService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-interface {p0}, Lcom/tencent/taes/remote/api/operate/IOperateService;->getStatusBannerInfos()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public notifySceneWeakPushComplete()V
    .locals 2

    const-string v0, "OperateApiRemoteApi"

    const-string v1, "notifySceneWeakPushComplete"

    .line 321
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushComplete:Z

    .line 323
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mWeakPushInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public registerSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;)V
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSceneBannerInfoListener mInfoList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneBannerInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneBannerInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 178
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mInfoList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;->onSceneBannerInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public registerSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSceneTipsInfoListener mSceneTipsInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 214
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;->onSceneTipsInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public registerSceneWeakPushInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneWeakPushInfoListener;)V
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSceneWeakPushInfoListener mWeakPushInfoList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mWeakPushInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  mSceneWeakPushComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mWeakPushInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 305
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mWeakPushInfoList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/operate/listener/SceneWeakPushInfoListener;->onSceneWeakPushInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public registerStatusBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneStatusBannerInfoListener;)V
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerStatusBannerInfoListener mInfoList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mStatusInfoList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneStatusBannerInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneStatusBannerInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mStatusInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 264
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mStatusInfoList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/tencent/taes/remote/api/operate/listener/SceneStatusBannerInfoListener;->onSceneStatusBannerInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public showSceneBannerDetail(Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSceneBannerDetail mOperateService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mOperateService:Lcom/tencent/taes/remote/api/operate/IOperateService;

    invoke-interface {p0, p1, p2}, Lcom/tencent/taes/remote/api/operate/IOperateService;->showSceneBannerDetail(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
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

    .line 114
    new-instance p0, Landroid/util/Pair;

    const-string v0, "Operate"

    const-class v1, Lcom/tencent/taes/remote/api/operate/IOperateService$Stub;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public unregisterSceneBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneBannerInfoListener;)V
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSceneBannerInfoListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneBannerInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterSceneTipsInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneTipsInfoListener;)V
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSceneTipsInfoListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneTipsInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterSceneWeakPushInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneWeakPushInfoListener;)V
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSceneWeakPushInfoListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneWeakPushInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterStatusBannerInfoListener(Lcom/tencent/taes/remote/api/operate/listener/SceneStatusBannerInfoListener;)V
    .locals 3

    const-string v0, "OperateApiRemoteApi"

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterStatusBannerInfoListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/operate/OperateApiRemoteApi;->mSceneStatusBannerInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
