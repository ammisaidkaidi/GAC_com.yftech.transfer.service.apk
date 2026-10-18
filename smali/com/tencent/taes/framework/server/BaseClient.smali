.class public abstract Lcom/tencent/taes/framework/server/BaseClient;
.super Ljava/lang/Object;
.source "BaseClient.java"

# interfaces
.implements Lcom/tencent/taes/framework/interfaces/IConnection$Operation;
.implements Lcom/tencent/taes/framework/interfaces/IConnection$State;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseClient"


# instance fields
.field private mConnectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/interfaces/IConnection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mIBinder:Landroid/os/IBinder;

.field private mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/tencent/taes/framework/server/BaseClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/tencent/taes/framework/server/BaseClient;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tencent/taes/framework/server/BaseClient;->mIBinder:Landroid/os/IBinder;

    return-object p1
.end method


# virtual methods
.method public connect(Landroid/content/Intent;Lcom/tencent/taes/framework/interfaces/IConnection$Listener;)V
    .locals 2

    const-string v0, "BaseClient"

    const-string v1, "connect"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    if-nez p2, :cond_1

    .line 47
    new-instance p2, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;-><init>(Lcom/tencent/taes/framework/server/BaseClient;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    .line 48
    iget-object p2, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->bindService(Landroid/content/Intent;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->notifyBindFail()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "BaseClient"

    const-string v1, "destroy"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->disconnect()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    const-string v0, "BaseClient"

    const-string v1, "disconnect"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    invoke-virtual {v0}, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->unbindService()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    :cond_0
    return-void
.end method

.method protected findIntentFromPkgs(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 247
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 248
    invoke-virtual {p0, p1, p3, v2}, Lcom/tencent/taes/framework/server/BaseClient;->getMatchIntentInPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectionState()I
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->isConnectionDied()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getConnectionStateString()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Connected"

    return-object p0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Connecting"

    return-object p0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->isConnectionDied()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "ConnectionDied"

    return-object p0

    :cond_2
    const-string p0, "Unconnected"

    return-object p0
.end method

.method protected getMatchIntentInPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const-string p0, "BaseClient"

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMatchIntentInPackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x20

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 270
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceUtils"

    .line 274
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    .line 279
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_3

    .line 283
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 285
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 286
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 288
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 289
    new-instance p3, Landroid/content/ComponentName;

    invoke-direct {p3, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 293
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-string p0, "BaseClient"

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMatchIntentInPackage = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_3
    return-object v1
.end method

.method protected abstract handleConnect(Landroid/os/IBinder;)V
.end method

.method protected abstract handleDisConnect()V
.end method

.method public isConnected()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mIBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mIBinder:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnecting()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mIBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    .line 82
    invoke-virtual {v0}, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->isServiceBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->isServiceDied()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isConnectionDied()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mServiceConnection:Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;

    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient$ServiceConnection;->isServiceDied()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected notifyBindFail()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/interfaces/IConnection$Listener;

    .line 182
    invoke-interface {v1}, Lcom/tencent/taes/framework/interfaces/IConnection$Listener;->onBindFail()V

    goto :goto_0

    .line 184
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected notifyConnected()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/interfaces/IConnection$Listener;

    .line 171
    invoke-interface {v1}, Lcom/tencent/taes/framework/interfaces/IConnection$Listener;->onConnected()V

    goto :goto_0

    .line 173
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected notifyDisConnected()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/interfaces/IConnection$Listener;

    .line 193
    invoke-interface {v1}, Lcom/tencent/taes/framework/interfaces/IConnection$Listener;->onDisconnected()V

    goto :goto_0

    .line 195
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerConnectListener(Lcom/tencent/taes/framework/interfaces/IConnection$Listener;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 144
    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/BaseClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-interface {p1}, Lcom/tencent/taes/framework/interfaces/IConnection$Listener;->onConnected()V

    .line 147
    monitor-exit v0

    return-void

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterConnectListener(Lcom/tencent/taes/framework/interfaces/IConnection$Listener;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 160
    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/tencent/taes/framework/server/BaseClient;->mConnectListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
