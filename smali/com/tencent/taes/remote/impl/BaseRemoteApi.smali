.class public abstract Lcom/tencent/taes/remote/impl/BaseRemoteApi;
.super Ljava/lang/Object;
.source "BaseRemoteApi.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tencent/taes/remote/api/IRegitsterConnectStateApi;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseRemoteApi"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mDeathRecipientHelper:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

.field private final mDefualtInterval:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRetryCount:I

.field private mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

.field private serverConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/tencent/taes/remote/api/IServerConnectListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->serverConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0xbb8

    .line 33
    iput v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mDefualtInterval:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mRetryCount:I

    const-string v0, "BaseRemoteApi"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseRemoteApi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-static {p2}, Lcom/tencent/taes/framework/remote/IServiceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/framework/remote/IServiceManagerService;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    .line 47
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    .line 48
    new-instance p2, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    new-instance v0, Lcom/tencent/taes/remote/impl/BaseRemoteApi$1;

    invoke-direct {v0, p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi$1;-><init>(Lcom/tencent/taes/remote/impl/BaseRemoteApi;)V

    invoke-direct {p2, v0}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    iput-object p2, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mDeathRecipientHelper:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    .line 55
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mDeathRecipientHelper:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    invoke-virtual {p0, p1}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->listenBinderDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/taes/remote/impl/BaseRemoteApi;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->handleDisconnect()V

    return-void
.end method

.method private handleDisconnect()V
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderDisConnect()V

    .line 70
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x409f400000000000L    # 2000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public binderConnect(Landroid/os/IBinder;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->serverConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/taes/remote/api/IServerConnectListener;

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Lcom/tencent/taes/remote/api/IServerConnectListener;->onConnected()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public binderDisConnect()V
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->serverConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/remote/api/IServerConnectListener;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/tencent/taes/remote/api/IServerConnectListener;->onDisConnected()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p1}, Lcom/tencent/taes/remote/api/IServerConnectListener;->onConnected()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->serverConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->serverConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .line 76
    iget v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mRetryCount:I

    .line 78
    invoke-virtual {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->subscribeModuleBinder()Landroid/util/Pair;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    invoke-interface {v1}, Lcom/tencent/taes/framework/remote/IServiceManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/tencent/taes/framework/remote/IServiceManagerService;->getRemoteBinder(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "code"

    const/16 v3, 0x192

    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "BaseRemoteApi"

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApi Remote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const-string v0, "data"

    .line 86
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    .line 87
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->binderConnect(Landroid/os/IBinder;)V

    .line 88
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mDeathRecipientHelper:Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;

    iget-object v1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/tencent/taes/framework/server/connect/DeathRecipientHelper;->listenBinderDeath(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mRetryCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    :cond_0
    iget v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mRetryCount:I

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, 0xbb8

    int-to-long v0, v0

    .line 99
    iget-object v2, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    move-wide v0, v3

    :cond_1
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setServiceManagerService(Lcom/tencent/taes/framework/remote/IServiceManagerService;)V
    .locals 2

    .line 59
    iput-object p1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mServiceManagerService:Lcom/tencent/taes/framework/remote/IServiceManagerService;

    .line 61
    iget-object p1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BaseRemoteApi"

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Binder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isAlive !"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->handleDisconnect()V

    return-void
.end method

.method public abstract subscribeModuleBinder()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public unregisterConnectListener(Lcom/tencent/taes/remote/api/IServerConnectListener;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->serverConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/tencent/taes/remote/impl/BaseRemoteApi;->serverConnectListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
