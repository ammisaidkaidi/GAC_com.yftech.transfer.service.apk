.class public Lcom/tencent/wecarbase/client/CloudManager;
.super Lcom/tencent/wecarbase/client/BaseManager;
.source "CloudManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudManager"

.field private static volatile mInstance:Lcom/tencent/wecarbase/client/CloudManager;


# instance fields
.field private mCloudService:Lcom/tencent/wecarbase/ICloudService;

.field private mPushListener:Lcom/tencent/wecarbase/client/PushListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.tencent.wecarbase.account.CLOUD_SERVICE"

    .line 46
    invoke-direct {p0, v0}, Lcom/tencent/wecarbase/client/BaseManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/client/CloudManager;
    .locals 2

    .line 35
    sget-object v0, Lcom/tencent/wecarbase/client/CloudManager;->mInstance:Lcom/tencent/wecarbase/client/CloudManager;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/tencent/wecarbase/client/CloudManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/tencent/wecarbase/client/CloudManager;->mInstance:Lcom/tencent/wecarbase/client/CloudManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/tencent/wecarbase/client/CloudManager;

    invoke-direct {v1}, Lcom/tencent/wecarbase/client/CloudManager;-><init>()V

    sput-object v1, Lcom/tencent/wecarbase/client/CloudManager;->mInstance:Lcom/tencent/wecarbase/client/CloudManager;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/wecarbase/client/CloudManager;->mInstance:Lcom/tencent/wecarbase/client/CloudManager;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic destroy()V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/tencent/wecarbase/client/BaseManager;->destroy()V

    return-void
.end method

.method protected dispose()V
    .locals 0

    return-void
.end method

.method public declared-synchronized getPushListener()Lcom/tencent/wecarbase/client/PushListener;
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/client/CloudManager;->mPushListener:Lcom/tencent/wecarbase/client/PushListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic init(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isConnected()Z
    .locals 0

    .line 69
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarbase/client/CloudManager;->mCloudService:Lcom/tencent/wecarbase/ICloudService;

    invoke-interface {p0}, Lcom/tencent/wecarbase/ICloudService;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method protected onServiceConnectedOk(Landroid/os/IBinder;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/tencent/wecarbase/ICloudService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wecarbase/ICloudService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/client/CloudManager;->mCloudService:Lcom/tencent/wecarbase/ICloudService;

    return-void
.end method

.method protected onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/tencent/wecarbase/client/CloudManager;->mCloudService:Lcom/tencent/wecarbase/ICloudService;

    return-void
.end method

.method public bridge synthetic reInitIfNeed(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/tencent/wecarbase/client/BaseManager;->reInitIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method public sendData(Lcom/tencent/wecarbase/model/CloudMessage;)Z
    .locals 0

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/tencent/wecarbase/client/CloudManager;->mCloudService:Lcom/tencent/wecarbase/ICloudService;

    invoke-interface {p0, p1}, Lcom/tencent/wecarbase/ICloudService;->sendData(Lcom/tencent/wecarbase/model/CloudMessage;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized setPushListener(Lcom/tencent/wecarbase/client/PushListener;)V
    .locals 0

    monitor-enter p0

    .line 81
    :try_start_0
    iput-object p1, p0, Lcom/tencent/wecarbase/client/CloudManager;->mPushListener:Lcom/tencent/wecarbase/client/PushListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    throw p1
.end method
