.class public Lcom/tencent/tai/pal/ins/c;
.super Lcom/tencent/tai/pal/ins/a$a;
.source "InsService.java"

# interfaces
.implements Lcom/tencent/tai/pal/service/a;


# instance fields
.field private final a:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/tencent/tai/pal/ins/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/tai/pal/ins/InsAdapter;

.field private c:Z

.field private d:Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/tencent/tai/pal/ins/a$a;-><init>()V

    .line 13
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/tencent/tai/pal/ins/c;->c:Z

    .line 17
    new-instance v0, Lcom/tencent/tai/pal/ins/c$1;

    invoke-direct {v0, p0}, Lcom/tencent/tai/pal/ins/c$1;-><init>(Lcom/tencent/tai/pal/ins/c;)V

    iput-object v0, p0, Lcom/tencent/tai/pal/ins/c;->d:Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;

    return-void
.end method

.method private a(FFFFIJ)V
    .locals 13

    move-object v1, p0

    .line 84
    iget-object v2, v1, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v0, v1, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 88
    :try_start_1
    iget-object v0, v1, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/tencent/tai/pal/ins/b;

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    invoke-interface/range {v5 .. v12}, Lcom/tencent/tai/pal/ins/b;->a(FFFFIJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v5, "PAL_SDK"

    const-string v6, "exception caught"

    .line 91
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, v1, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 96
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private a(FFFIJ)V
    .locals 12

    move-object v1, p0

    .line 103
    iget-object v2, v1, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v0, v1, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 107
    :try_start_1
    iget-object v0, v1, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/tencent/tai/pal/ins/b;

    move v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-interface/range {v5 .. v11}, Lcom/tencent/tai/pal/ins/b;->a(FFFIJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v5, "PAL_SDK"

    const-string v6, "exception caught"

    .line 110
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, v1, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 115
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private a(FIJ)V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 71
    :try_start_1
    iget-object v3, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tai/pal/ins/b;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/tencent/tai/pal/ins/b;->a(FIJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "PAL_SDK"

    const-string v5, "exception caught"

    .line 73
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 78
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/tai/pal/ins/c;FFFFIJ)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p7}, Lcom/tencent/tai/pal/ins/c;->a(FFFFIJ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/ins/c;FFFIJ)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/tencent/tai/pal/ins/c;->a(FFFIJ)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tai/pal/ins/c;FIJ)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tai/pal/ins/c;->a(FIJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tai/pal/ins/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 45
    iget-object p1, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    .line 46
    iget-boolean v1, p0, Lcom/tencent/tai/pal/ins/c;->c:Z

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/ins/c;->b:Lcom/tencent/tai/pal/ins/InsAdapter;

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/tencent/tai/pal/ins/c;->b:Lcom/tencent/tai/pal/ins/InsAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/ins/c;->d:Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/ins/InsAdapter;->registerOnInsInfoChangeListener(Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/tencent/tai/pal/ins/c;->c:Z

    .line 50
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

.method public a(Lcom/tencent/tai/pal/service/BaseAdapter;)V
    .locals 1

    .line 120
    instance-of v0, p1, Lcom/tencent/tai/pal/ins/InsAdapter;

    if-eqz v0, :cond_1

    .line 121
    check-cast p1, Lcom/tencent/tai/pal/ins/InsAdapter;

    iput-object p1, p0, Lcom/tencent/tai/pal/ins/c;->b:Lcom/tencent/tai/pal/ins/InsAdapter;

    .line 122
    iget-object p1, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    monitor-enter p1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/tencent/tai/pal/ins/c;->c:Z

    .line 126
    iget-object v0, p0, Lcom/tencent/tai/pal/ins/c;->b:Lcom/tencent/tai/pal/ins/InsAdapter;

    iget-object p0, p0, Lcom/tencent/tai/pal/ins/c;->d:Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;

    invoke-virtual {v0, p0}, Lcom/tencent/tai/pal/ins/InsAdapter;->registerOnInsInfoChangeListener(Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/tencent/tai/pal/ins/c;->c:Z

    .line 130
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public b(Lcom/tencent/tai/pal/ins/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 57
    iget-object p1, p0, Lcom/tencent/tai/pal/ins/c;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 58
    iget-boolean p1, p0, Lcom/tencent/tai/pal/ins/c;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tai/pal/ins/c;->b:Lcom/tencent/tai/pal/ins/InsAdapter;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/tencent/tai/pal/ins/c;->b:Lcom/tencent/tai/pal/ins/InsAdapter;

    iget-object v1, p0, Lcom/tencent/tai/pal/ins/c;->d:Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;

    invoke-virtual {p1, v1}, Lcom/tencent/tai/pal/ins/InsAdapter;->unregisterOnInsInfoChangeListener(Lcom/tencent/tai/pal/ins/InsAdapter$OnInsInfoChangeListener;)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/tencent/tai/pal/ins/c;->c:Z

    .line 62
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

.method public c()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method
