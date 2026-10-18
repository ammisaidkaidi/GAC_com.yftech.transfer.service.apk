.class public Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;
.super Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;
.source "CabinKeyEventAdapterImpl.java"


# static fields
.field private static SYS_KEYCODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isLongPress:Z

.field private isStartASR:Z

.field private mCabinKeyEventDispatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field mCarKeyListener:Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;

.field private mLockObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->SYS_KEYCODES:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->SYS_KEYCODES:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->SYS_KEYCODES:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->SYS_KEYCODES:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->SYS_KEYCODES:Ljava/util/Map;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter;-><init>()V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->isLongPress:Z

    .line 36
    iput-boolean p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->isStartASR:Z

    .line 43
    new-instance p1, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl$1;

    invoke-direct {p1, p0}, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl$1;-><init>(Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;)V

    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCarKeyListener:Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCabinKeyEventDispatchers:Ljava/util/List;

    .line 116
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mLockObj:Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarKeyManager;->get()Lcom/yftech/vehicle/sdk/CarKeyManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCarKeyListener:Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarKeyManager;->registerListener(Lcom/yftech/vehicle/sdk/CarKeyManager$CarKeyListener;)V

    const-string p0, "CabinKeyEventAdapterImpl init!!!!"

    .line 40
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onKeyEvent(II)V
    .locals 11

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open sdk listen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",contains:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->SYS_KEYCODES:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCabinKeyEventDispatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 56
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCabinKeyEventDispatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;

    .line 58
    invoke-interface {v3}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;->getRegisteredKeyCodeSet()Ljava/util/Set;

    move-result-object v2

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the dispatcher:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",register keys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "empty!"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->SYS_KEYCODES:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    sget-object v4, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->SYS_KEYCODES:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",dispatcher object:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x6

    if-nez p2, :cond_2

    .line 65
    iput-boolean v2, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->isLongPress:Z

    const/4 p2, 0x1

    if-eq v6, v4, :cond_0

    const/4 v4, 0x1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move v5, p2

    invoke-interface/range {v3 .. v10}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;->dispatchKeyEvent(IIIJJ)V

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x8

    const/4 v7, 0x7

    const/16 v8, 0x9

    const/4 v9, 0x1

    if-ne p2, v9, :cond_7

    const/4 p2, 0x2

    .line 81
    iget-boolean v9, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->isLongPress:Z

    if-eqz v9, :cond_4

    if-eq v6, v8, :cond_4

    if-eq v6, v5, :cond_4

    if-eq v6, v4, :cond_6

    if-ne v6, v7, :cond_3

    const/16 v6, 0xe

    const/4 v4, 0x1

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v5, 0x2

    invoke-interface/range {v3 .. v10}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;->dispatchKeyEvent(IIIJJ)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move v5, p2

    invoke-interface/range {v3 .. v10}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;->dispatchKeyLongPressEvent(IIIJJ)V

    goto :goto_2

    :cond_4
    if-ne v6, v4, :cond_5

    .line 91
    invoke-static {}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->getInstance()Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->isWeChatServiceAvailable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 92
    invoke-static {}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->getInstance()Lcom/tencent/car/wechatsdk/impl/WeChatMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/car/wechatsdk/impl/WeChatMgr;->carEventLaunchWeChat()V

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v5, 0x2

    invoke-interface/range {v3 .. v10}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;->dispatchKeyEvent(IIIJJ)V

    .line 97
    :cond_6
    :goto_2
    iput-boolean v2, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->isLongPress:Z

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 99
    iput-boolean v9, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->isLongPress:Z

    const/4 p2, 0x1

    if-ne v6, v7, :cond_8

    const/16 v6, 0xe

    const/4 v4, 0x1

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v5, 0x1

    invoke-interface/range {v3 .. v10}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;->dispatchKeyEvent(IIIJJ)V

    goto/16 :goto_0

    :cond_8
    if-eq v6, v8, :cond_0

    if-eq v6, v5, :cond_0

    const/4 v4, 0x1

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move v5, p2

    invoke-interface/range {v3 .. v10}, Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;->dispatchKeyLongPressEvent(IIIJJ)V

    goto/16 :goto_0

    .line 111
    :cond_9
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    :goto_3
    return-void
.end method

.method public registerCabinKeyEventDispatcher(Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCabinKeyEventDispatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCabinKeyEventDispatchers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterCabinKeyEventDispatcher(Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCabinKeyEventDispatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/CabinKeyEventAdapterImpl;->mCabinKeyEventDispatchers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
