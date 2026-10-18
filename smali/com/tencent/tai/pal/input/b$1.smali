.class Lcom/tencent/tai/pal/input/b$1;
.super Ljava/lang/Object;
.source "CabinKeyEventService.java"

# interfaces
.implements Lcom/tencent/tai/pal/input/CabinKeyEventAdapter$CabinKeyEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/input/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/input/b;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/input/b;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(IIIJJ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v10, p3

    .line 68
    iget-object v0, v1, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    monitor-enter v11

    .line 69
    :try_start_0
    iget-object v0, v1, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    const-string v0, "PAL_SDK"

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CabinKeyEventService:dispatchKeyEvent count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " downTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p4

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " eventTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    if-ge v15, v12, :cond_1

    .line 75
    :try_start_1
    iget-object v0, v1, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/input/c;

    .line 76
    invoke-interface {v0}, Lcom/tencent/tai/pal/input/c;->a()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2, v10}, Lcom/tencent/tai/pal/input/KeyFilter;->match(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v5, Lcom/tencent/tai/pal/input/CabinKeyEvent;

    move-object v2, v5

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v10, v5

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/tencent/tai/pal/input/CabinKeyEvent;-><init>(IIIJJ)V

    invoke-interface {v0, v10}, Lcom/tencent/tai/pal/input/c;->a(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "PAL_SDK"

    const-string v3, "exception caught"

    .line 83
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, p4

    move-wide/from16 v6, p6

    move/from16 v10, p3

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, v1, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 88
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dispatchKeyLongPressEvent(IIIJJ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v10, p3

    .line 93
    iget-object v0, v1, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v11

    monitor-enter v11

    .line 94
    :try_start_0
    iget-object v0, v1, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    const-string v0, "PAL_SDK"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CabinKeyEventService:dispatchKeyLongPressEvent count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " downTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p4

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " eventTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    if-ge v15, v12, :cond_2

    .line 100
    :try_start_1
    iget-object v0, v1, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/input/c;

    .line 101
    invoke-interface {v0}, Lcom/tencent/tai/pal/input/c;->a()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2, v10}, Lcom/tencent/tai/pal/input/KeyFilter;->match(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-static/range {p3 .. p3}, Lcom/tencent/tai/pal/input/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    .line 105
    invoke-static/range {v2 .. v9}, Lcom/tencent/tai/pal/input/a;->a(Lcom/tencent/tai/pal/input/c;IIIJJ)V

    goto :goto_1

    .line 107
    :cond_0
    new-instance v8, Lcom/tencent/tai/pal/input/CabinKeyEvent;

    move-object v2, v8

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object v10, v8

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/tencent/tai/pal/input/CabinKeyEvent;-><init>(IIIJJ)V

    invoke-interface {v0, v10}, Lcom/tencent/tai/pal/input/c;->b(Lcom/tencent/tai/pal/input/CabinKeyEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "PAL_SDK"

    const-string v3, "exception caught"

    .line 112
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, p4

    move-wide/from16 v6, p6

    move/from16 v10, p3

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, v1, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 118
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getRegisteredKeyCodeSet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v1}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v2}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 43
    :try_start_1
    iget-object v4, p0, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {v4}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/tencent/tai/pal/input/c;

    .line 44
    invoke-interface {v4}, Lcom/tencent/tai/pal/input/c;->a()Lcom/tencent/tai/pal/input/KeyFilter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v4}, Lcom/tencent/tai/pal/input/KeyFilter;->getBindingKeys()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 48
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "PAL_SDK"

    const-string v6, "exception caught"

    .line 56
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_2
    iget-object p0, p0, Lcom/tencent/tai/pal/input/b$1;->a:Lcom/tencent/tai/pal/input/b;

    invoke-static {p0}, Lcom/tencent/tai/pal/input/b;->a(Lcom/tencent/tai/pal/input/b;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 61
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p0, "PAL_SDK"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CabinKeyEventService:getRegisteredKeyCodeSet count: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "keys.keySet(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 61
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
