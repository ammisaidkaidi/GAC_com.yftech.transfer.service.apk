.class public Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;
.super Lcom/tencent/taes/framework/server/BaseClient;
.source "EventDispatcher.java"

# interfaces
.implements Lcom/tencent/taes/framework/interfaces/IEventSubscriber;
.implements Lcom/tencent/taes/framework/interfaces/IEventPublisher;


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.tencent.taes.framework.EVENT_DISPATCH"

.field private static final TAG:Ljava/lang/String; = "EventDispatcher"


# instance fields
.field private dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

.field private mClientName:Ljava/lang/String;

.field private final mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/taes/framework/server/eventbus/M2MHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/taes/framework/interfaces/IEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPublishEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/taes/framework/bean/IPCEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSubscribeEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/taes/framework/server/BaseClient;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    invoke-direct {v0}, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingPublishEvents:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/taes/util/PackageUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mClientName:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/tencent/taes/framework/server/router/SMSRouterStrategy;

    invoke-direct {v0}, Lcom/tencent/taes/framework/server/router/SMSRouterStrategy;-><init>()V

    iput-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    .line 46
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    const-string v1, "com.tencent.taes.framework.EVENT_DISPATCH"

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->scanAndSortService(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 47
    iget-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mRouterStrategy:Lcom/tencent/taes/framework/interfaces/IRouterStrategy;

    invoke-interface {p1}, Lcom/tencent/taes/framework/interfaces/IRouterStrategy;->getHostServiceInfo()Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p1, Lcom/tencent/taes/framework/interfaces/IRouterStrategy$ServiceItemInfo;->intent:Landroid/content/Intent;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->connect(Landroid/content/Intent;Lcom/tencent/taes/framework/interfaces/IConnection$Listener;)V

    :cond_0
    return-void
.end method

.method private subscribeOnServer(Ljava/lang/String;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EventDispatcher"

    const-string v2, "subscribe but is not connected, so pending"

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v0

    return-void

    .line 83
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    if-nez v0, :cond_1

    const-string v0, "EventDispatcher"

    const-string v1, "subscribe but ipcInterface is null, so pending"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    monitor-enter v0

    .line 89
    :try_start_1
    iget-object p0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 94
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    iget-object p0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mClientName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/tencent/taes/framework/remote/IEventDispatchService;->subscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 83
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method


# virtual methods
.method protected handleConnect(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "EventDispatcher"

    const-string v1, "handleConnected, re-subscribe events"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {p1}, Lcom/tencent/taes/framework/remote/IEventDispatchService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/taes/framework/remote/IEventDispatchService;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    .line 229
    :try_start_0
    iget-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/taes/util/PackageUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher$1;

    invoke-direct {v1, p0}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher$1;-><init>(Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;)V

    invoke-interface {p1, v0, v1}, Lcom/tencent/taes/framework/remote/IEventDispatchService;->registerEventListener(Ljava/lang/String;Lcom/tencent/taes/framework/listener/IPCEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 239
    :goto_0
    iget-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    monitor-enter p1

    .line 240
    :try_start_1
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 243
    iget-object v1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 244
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 245
    invoke-direct {p0, v1}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->subscribeOnServer(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    :cond_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    iget-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingPublishEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 251
    iget-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingPublishEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/taes/framework/bean/IPCEvent;

    .line 252
    invoke-virtual {p0, v0}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->publish(Lcom/tencent/taes/framework/bean/IPCEvent;)V

    goto :goto_2

    .line 254
    :cond_1
    iget-object p0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingPublishEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 248
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method protected handleDisConnect()V
    .locals 3

    const-string v0, "EventDispatcher"

    const-string v1, "handleDisconnected, pending subscribe all local events"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    invoke-virtual {v1}, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 266
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    iget-object v2, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    monitor-enter v2

    .line 268
    :try_start_1
    iget-object p0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingSubscribeEvents:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 269
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 266
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onEvent(Lcom/tencent/taes/framework/bean/IPCEvent;)V
    .locals 3

    const-string v0, "EventDispatcher"

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent, event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object p0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    iget-object v1, p1, Lcom/tencent/taes/framework/bean/IPCEvent;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;->getValueSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 185
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 186
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/taes/framework/interfaces/IEventListener;

    .line 187
    invoke-interface {v1, p1}, Lcom/tencent/taes/framework/interfaces/IEventListener;->onEvent(Lcom/tencent/taes/framework/bean/IPCEvent;)V

    goto :goto_0

    .line 190
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

.method public publish(Lcom/tencent/taes/framework/bean/IPCEvent;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mClientName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->publish(Ljava/lang/String;Lcom/tencent/taes/framework/bean/IPCEvent;Z)V

    return-void
.end method

.method public declared-synchronized publish(Ljava/lang/String;Lcom/tencent/taes/framework/bean/IPCEvent;Z)V
    .locals 3

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mPendingPublishEvents:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "EventDispatcher"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 217
    :try_start_2
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/taes/framework/remote/IEventDispatchService;->publish(Ljava/lang/String;Lcom/tencent/taes/framework/bean/IPCEvent;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 209
    monitor-exit p0

    throw p1
.end method

.method public subscribe(Ljava/lang/String;Lcom/tencent/taes/framework/interfaces/IEventListener;)V
    .locals 3

    const-string v0, "EventDispatcher"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-direct {p0, p1}, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->subscribeOnServer(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const-string p0, "EventDispatcher"

    const-string p1, "subscribe but invalid event or listener"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unsubscribe(Lcom/tencent/taes/framework/interfaces/IEventListener;)V
    .locals 4

    const-string v0, "EventDispatcher"

    const-string v1, "unsubscribe"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    invoke-virtual {v2, p1}, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;->removeValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    invoke-virtual {v3, v2}, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object p1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    if-nez p1, :cond_3

    const-string p0, "EventDispatcher"

    const-string p1, "unsubscribe but ipcInterface is null"

    .line 161
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    iget-object v2, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mClientName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/taes/framework/remote/IEventDispatchService;->unsubscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 170
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 158
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/tencent/taes/framework/interfaces/IEventListener;)V
    .locals 3

    const-string v0, "EventDispatcher"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsubscribe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    iget-object p2, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mEventListenersMap:Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;

    invoke-virtual {p2, p1}, Lcom/tencent/taes/framework/server/eventbus/M2MHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 119
    monitor-exit v0

    return-void

    .line 121
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object p2, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    if-nez p2, :cond_2

    const-string p0, "EventDispatcher"

    const-string p1, "unregisterModule but ipcInterface is null"

    .line 124
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->dispatchService:Lcom/tencent/taes/framework/remote/IEventDispatchService;

    iget-object p0, p0, Lcom/tencent/taes/framework/server/eventbus/EventDispatcher;->mClientName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/tencent/taes/framework/remote/IEventDispatchService;->unsubscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 121
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
