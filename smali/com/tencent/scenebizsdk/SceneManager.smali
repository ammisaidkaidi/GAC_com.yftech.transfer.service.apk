.class public Lcom/tencent/scenebizsdk/SceneManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/scenebizsdk/SceneManager$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "SceneManager"

.field public static b:Z


# instance fields
.field public c:La/b/b/a;

.field public d:La/b/a/a/a;

.field public e:La/b/a/b/c;

.field public f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/scenebizsdk/SceneManager;->f:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/scenebizsdk/SceneManager;->b:Z

    new-instance v0, La/b/a/b/c;

    invoke-direct {v0}, La/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/scenebizsdk/SceneManager;->e:La/b/a/b/c;

    new-instance v0, La/b/a/a/b;

    invoke-direct {v0}, La/b/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/scenebizsdk/SceneManager;->d:La/b/a/a/a;

    new-instance v0, La/b/a/a;

    invoke-direct {v0, p0}, La/b/a/a;-><init>(Lcom/tencent/scenebizsdk/SceneManager;)V

    iput-object v0, p0, Lcom/tencent/scenebizsdk/SceneManager;->c:La/b/b/a;

    return-void
.end method

.method public synthetic constructor <init>(La/b/a/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/scenebizsdk/SceneManager;->f:Landroid/os/Handler;

    const/4 p1, 0x0

    sput-boolean p1, Lcom/tencent/scenebizsdk/SceneManager;->b:Z

    new-instance p1, La/b/a/b/c;

    invoke-direct {p1}, La/b/a/b/c;-><init>()V

    iput-object p1, p0, Lcom/tencent/scenebizsdk/SceneManager;->e:La/b/a/b/c;

    new-instance p1, La/b/a/a/b;

    invoke-direct {p1}, La/b/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/scenebizsdk/SceneManager;->d:La/b/a/a/a;

    new-instance p1, La/b/a/a;

    invoke-direct {p1, p0}, La/b/a/a;-><init>(Lcom/tencent/scenebizsdk/SceneManager;)V

    iput-object p1, p0, Lcom/tencent/scenebizsdk/SceneManager;->c:La/b/b/a;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/scenebizsdk/SceneManager;)La/b/a/b/c;
    .locals 0

    iget-object p0, p0, Lcom/tencent/scenebizsdk/SceneManager;->e:La/b/a/b/c;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/scenebizsdk/SceneManager;)La/b/a/a/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/scenebizsdk/SceneManager;->d:La/b/a/a/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/scenebizsdk/SceneManager;)La/b/b/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/scenebizsdk/SceneManager;->c:La/b/b/a;

    return-object p0
.end method

.method public static getInstance()Lcom/tencent/scenebizsdk/SceneManager;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/scenebizsdk/SceneManager$a;->a:Lcom/tencent/scenebizsdk/SceneManager;

    return-object v0
.end method


# virtual methods
.method public dispatchSceneMsg(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/tencent/scenebizsdk/SceneManager;->e:La/b/a/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, La/b/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/tencent/scenebizsdk/model/SceneMsg;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/scenebizsdk/SceneManager;->d:La/b/a/a/a;

    check-cast p0, La/b/a/a/b;

    invoke-virtual {p0, p1}, La/b/a/a/b;->a(Lcom/tencent/scenebizsdk/model/SceneMsg;)V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "com.tencent.wecar"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/scenebizsdk/SceneManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-class v0, Lcom/tencent/scenebizsdk/SceneManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/scenebizsdk/SceneManager;->b:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/scenebizsdk/SceneManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "init hostPkg = "

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/scenebizsdk/SceneManager;->f:Landroid/os/Handler;

    new-instance v2, La/b/a/b;

    invoke-direct {v2, p0, p1, p2}, La/b/a/b;-><init>(Lcom/tencent/scenebizsdk/SceneManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-class v0, Lcom/tencent/scenebizsdk/SceneManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/scenebizsdk/SceneManager;->b:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/scenebizsdk/SceneManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "init hostPkg = "

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, ", action = "

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/scenebizsdk/SceneManager;->f:Landroid/os/Handler;

    new-instance v2, La/b/a/c;

    invoke-direct {v2, p0, p1, p2, p3}, La/b/a/c;-><init>(Lcom/tencent/scenebizsdk/SceneManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public registerMsgValidator(ILcom/tencent/sceneengine/IMessageValidator;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-static {}, Lcom/tencent/sceneengine/SceneEngine;->a()Lcom/tencent/sceneengine/SceneEngine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/sceneengine/SceneEngine;->a(ILcom/tencent/sceneengine/IMessageValidator;)V

    return-void
.end method

.method public registerSceneMsgListener(Lcom/tencent/scenebizsdk/IMsgListener;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/tencent/scenebizsdk/SceneManager;->d:La/b/a/a/a;

    check-cast p0, La/b/a/a/b;

    invoke-virtual {p0, p1}, La/b/a/a/b;->a(Lcom/tencent/scenebizsdk/IMsgListener;)V

    return-void
.end method

.method public uninit()V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-class v0, Lcom/tencent/scenebizsdk/SceneManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/scenebizsdk/SceneManager;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/scenebizsdk/SceneManager;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "uninit"

    :try_start_1
    invoke-static {v1, v2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/sceneengine/SceneEngine;->a()Lcom/tencent/sceneengine/SceneEngine;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/scenebizsdk/SceneManager;->c:La/b/b/a;

    invoke-virtual {v1, p0}, Lcom/tencent/sceneengine/SceneEngine;->b(La/b/b/a;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/tencent/scenebizsdk/SceneManager;->b:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unregisterMsgValidator(I)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-static {}, Lcom/tencent/sceneengine/SceneEngine;->a()Lcom/tencent/sceneengine/SceneEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/sceneengine/SceneEngine;->c(I)V

    return-void
.end method

.method public unregisterSceneMsgListener(Lcom/tencent/scenebizsdk/IMsgListener;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/tencent/scenebizsdk/SceneManager;->d:La/b/a/a/a;

    check-cast p0, La/b/a/a/b;

    invoke-virtual {p0, p1}, La/b/a/a/b;->b(Lcom/tencent/scenebizsdk/IMsgListener;)V

    return-void
.end method
