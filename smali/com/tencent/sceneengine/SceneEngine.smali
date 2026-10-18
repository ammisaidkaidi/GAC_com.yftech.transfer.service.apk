.class public Lcom/tencent/sceneengine/SceneEngine;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "SceneEngine"

.field public static final b:Ljava/lang/String;

.field public static volatile c:Lcom/tencent/sceneengine/SceneEngine;


# instance fields
.field public d:Landroid/content/Context;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/sceneengine/IMessageValidator;",
            ">;"
        }
    .end annotation
.end field

.field public h:La/b/b/a/g;

.field public i:Lcom/tencent/wecarbase/cloud/IPushService;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Landroid/os/Handler;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/Timer;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tencent/wecarspeech/log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/sceneengine/SceneEngine;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->n:Ljava/lang/String;

    new-instance v0, La/b/b/f;

    invoke-direct {v0, p0}, La/b/b/f;-><init>(Lcom/tencent/sceneengine/SceneEngine;)V

    iput-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->s:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->e:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->f:Ljava/util/List;

    new-instance v0, La/b/b/a/g;

    invoke-direct {v0}, La/b/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->h:La/b/b/a/g;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->m:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->g:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/tencent/sceneengine/SceneEngine;
    .locals 2

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->c:Lcom/tencent/sceneengine/SceneEngine;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/sceneengine/SceneEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/sceneengine/SceneEngine;->c:Lcom/tencent/sceneengine/SceneEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/sceneengine/SceneEngine;

    invoke-direct {v1}, Lcom/tencent/sceneengine/SceneEngine;-><init>()V

    sput-object v1, Lcom/tencent/sceneengine/SceneEngine;->c:Lcom/tencent/sceneengine/SceneEngine;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->c:Lcom/tencent/sceneengine/SceneEngine;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/sceneengine/SceneEngine;Lcom/tencent/wecarbase/cloud/IPushService;)Lcom/tencent/wecarbase/cloud/IPushService;
    .locals 0

    iput-object p1, p0, Lcom/tencent/sceneengine/SceneEngine;->i:Lcom/tencent/wecarbase/cloud/IPushService;

    return-object p1
.end method

.method public static synthetic a(Lcom/tencent/sceneengine/SceneEngine;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/tencent/sceneengine/SceneEngine;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/sceneengine/SceneEngine;->a(J)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/sceneengine/SceneEngine;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lcom/tencent/sceneengine/SceneEngine;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/tencent/sceneengine/SceneEngine;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/tencent/sceneengine/SceneEngine;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/sceneengine/SceneEngine;->b()V

    return-void
.end method

.method public static synthetic f(Lcom/tencent/sceneengine/SceneEngine;)La/b/b/a/g;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->h:La/b/b/a/g;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/tencent/sceneengine/IMessageValidator;
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->g:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/sceneengine/IMessageValidator;

    return-object p0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v0, "getAppName : "

    invoke-static {p1, v0, p0}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public a(ILcom/tencent/sceneengine/IMessageValidator;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->g:Ljava/util/Map;

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 2

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "connectService"

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/sceneengine/SceneEngine;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->m:Landroid/os/Handler;

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(La/b/b/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tencent/sceneengine/SceneEngine;->c()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 5
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hostPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", serviceAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", accountEnvType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/sceneengine/SceneEngine;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/sceneengine/SceneEngine;->j:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/sceneengine/SceneEngine;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/sceneengine/SceneEngine;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/sceneengine/SceneEngine;->q:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/sceneengine/SceneEngine;->r:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tencent/sceneengine/SceneEngine;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/sceneengine/SceneEngine;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/tencent/sceneengine/SceneEngine;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/sceneengine/SceneEngine;->d:Landroid/content/Context;

    const/4 p2, 0x1

    .line 6
    sput-boolean p2, Lcom/tencent/taiutils/log/LogUtils;->sOpenLog:Z

    .line 7
    sget-object p2, Lcom/tencent/sceneengine/SceneEngine;->b:Ljava/lang/String;

    const-string p3, "SceneEngine"

    const-string p4, "_SceneEngine_"

    invoke-static {p2, p3, p4}, Lcom/tencent/taiutils/log/LogUtils;->initXlog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p3, "TaiSceneMsg init mAppId = "

    invoke-static {p3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/tencent/sceneengine/SceneEngine;->n:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " mPkgName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/tencent/sceneengine/SceneEngine;->j:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " mAppName = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/tencent/sceneengine/SceneEngine;->k:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " mTarget = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/tencent/sceneengine/SceneEngine;->l:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/b/b/c;->a()La/b/b/c;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, La/b/b/c;->a(Landroid/content/Context;I)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/sceneengine/SceneEngine;->a(J)V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/tencent/sceneengine/SceneEngine;->o:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->o:Ljava/util/Timer;

    new-instance v1, La/b/b/d;

    invoke-direct {v1, p0}, La/b/b/d;-><init>(Lcom/tencent/sceneengine/SceneEngine;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final a(Lcom/tencent/sceneengine/model/SceneMessage;Z)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "no message"

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->e:Ljava/util/List;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->f:Ljava/util/List;

    :cond_1
    sget-object p2, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "notifyMessage thread="

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/b/a;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v2, "listener "

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, La/b/b/i;

    invoke-direct {v1, p0, v0, p1}, La/b/b/i;-><init>(Lcom/tencent/sceneengine/SceneEngine;La/b/b/a;Lcom/tencent/sceneengine/model/SceneMessage;)V

    .line 10
    sget-object v0, Lcom/tencent/taiutils/ThreadPool;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "ISceneMessageListener listener is null"

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaiSceneMsg onMessageReceived msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-class v0, Lcom/tencent/sceneengine/model/SceneMessage;

    .line 12
    sget-object v1, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/tencent/sceneengine/model/SceneMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/sceneengine/SceneEngine;->b(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "TaiSceneMsg onMessageReceived msg is invalid now, discard it."

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "TaiSceneMsg onMessageReceived isValid is true"

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getTriggerCond()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getTriggerCond()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "TaiSceneMsg onMessageReceived triggerCond not empty ,will store!"

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/b/b/c;->a()La/b/b/c;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, La/b/b/c;->a(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, La/b/b/c;->b()V

    .line 15
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "TaiSceneMsg onMessageReceived msg is not triggered now."

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "TaiSceneMsg onMessageReceived isTriggered is true"

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "message show "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/model/SceneMessage;Z)V

    invoke-static {}, La/b/b/c;->a()La/b/b/c;

    move-result-object p0

    invoke-virtual {p0, p1}, La/b/b/c;->b(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p2, "TaiSceneMsg onMessageReceived shouldDeleteMsgFromCache is true will remove"

    invoke-static {p0, p2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, La/b/b/c;->a()La/b/b/c;

    move-result-object p0

    .line 16
    iget-object p2, p0, La/b/b/c;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, La/b/b/c;->b()V

    :cond_4
    return-void

    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p2, "parse json failed: "

    invoke-static {p2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/sceneengine/model/SceneMessage;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "isTriggered message is null"

    :goto_0
    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object v1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v2, "isTriggered msgLabel = "

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getTriggerCond()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/sceneengine/SceneEngine;->b(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "isTriggered   hasUnknownTriggerConditionType=true  msgLabel = "

    :goto_1
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getStoppedCond()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/sceneengine/SceneEngine;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "isTriggered   hasUnKnownStopConditionType=true  msgLabel = "

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getTriggerCond()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/sceneengine/model/TriggerCond;

    if-eqz v4, :cond_6

    iget v5, v4, Lcom/tencent/sceneengine/model/TriggerCond;->triggerCondType:I

    invoke-virtual {p0, v5}, Lcom/tencent/sceneengine/SceneEngine;->a(I)Lcom/tencent/sceneengine/IMessageValidator;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5, p1, v4}, Lcom/tencent/sceneengine/IMessageValidator;->isTriggered(Lcom/tencent/sceneengine/model/SceneMessage;Lcom/tencent/sceneengine/model/TriggerCond;)Z

    move-result v4

    if-nez v4, :cond_4

    move v3, v0

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v6, "cannot find validator for triggerCondType="

    invoke-static {v6}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v4, v4, Lcom/tencent/sceneengine/model/TriggerCond;->triggerCondType:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v5, "triggerCond is null"

    invoke-static {v4, v5}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v4, "triggerCondList is empty"

    invoke-static {v3, v4}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v3, v2

    :goto_3
    sget-object v4, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finalTriggered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_9
    move v2, v0

    goto :goto_4

    .line 9
    :cond_a
    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v0, "isTriggered triggerCond list is null  msgId = "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-nez v2, :cond_b

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v0, "isTriggered msg is not triggered now  msgId = "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return v2
.end method

.method public a(Lcom/tencent/sceneengine/model/SceneMessage;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/sceneengine/model/SceneMessage;",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/StopCond;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/sceneengine/model/StopCond;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/tencent/sceneengine/model/StopCond;->stopCondType:I

    invoke-virtual {p0, v1}, Lcom/tencent/sceneengine/SceneEngine;->a(I)Lcom/tencent/sceneengine/IMessageValidator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0}, Lcom/tencent/sceneengine/IMessageValidator;->isValid(Lcom/tencent/sceneengine/model/SceneMessage;Lcom/tencent/sceneengine/model/StopCond;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v2, "cannot find validator for stopCondType="

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/tencent/sceneengine/model/StopCond;->stopCondType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "stopCond is null"

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "stopCondList is empty"

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x1

    :goto_1
    sget-object p1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finalValid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/StopCond;",
            ">;>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "hasUnKnownStopConditionType oldAllList="

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/sceneengine/model/StopCond;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/tencent/sceneengine/model/StopCond;->stopCondType:I

    invoke-virtual {p0, v2}, Lcom/tencent/sceneengine/SceneEngine;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "cannot find validator for stopCondType="

    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v1, Lcom/tencent/sceneengine/model/StopCond;->stopCondType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "hasUnKnownStopConditionType end false"

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 5

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "registerClient"

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->i:Lcom/tencent/wecarbase/cloud/IPushService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "mAppName = "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/sceneengine/SceneEngine;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/SceneEngine;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mTarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/sceneengine/SceneEngine;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsReceiveSysMSg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/sceneengine/SceneEngine;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/sceneengine/tai/AppInfo;

    iget-object v1, p0, Lcom/tencent/sceneengine/SceneEngine;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/sceneengine/SceneEngine;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/sceneengine/SceneEngine;->l:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/sceneengine/SceneEngine;->p:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/sceneengine/tai/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tencent/sceneengine/SceneEngine;->i:Lcom/tencent/wecarbase/cloud/IPushService;

    iget-object v2, p0, Lcom/tencent/sceneengine/SceneEngine;->n:Ljava/lang/String;

    .line 5
    sget-object v3, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v3, La/b/b/g;

    invoke-direct {v3, p0}, La/b/b/g;-><init>(Lcom/tencent/sceneengine/SceneEngine;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/wecarbase/cloud/IPushService;->registerClient(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wecarbase/cloud/IConnectCallback;)V

    iget-object v0, p0, Lcom/tencent/sceneengine/SceneEngine;->i:Lcom/tencent/wecarbase/cloud/IPushService;

    iget-object v1, p0, Lcom/tencent/sceneengine/SceneEngine;->n:Ljava/lang/String;

    new-instance v2, La/b/b/h;

    invoke-direct {v2, p0}, La/b/b/h;-><init>(Lcom/tencent/sceneengine/SceneEngine;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/wecarbase/cloud/IPushService;->registerMessageListener(Ljava/lang/String;Lcom/tencent/wecarbase/cloud/IPushMessageListener;)V

    return-void
.end method

.method public b(La/b/b/a;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->g:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Lcom/tencent/sceneengine/model/SceneMessage;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "isValid message is null"

    :goto_0
    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object v1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v2, "isValid msgLabel = "

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgExpTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getEventTime()J

    move-result-wide v5

    cmp-long v7, v3, v1

    if-gez v7, :cond_1

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v7, "isValid msg expired!  msgId="

    invoke-static {v7}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", msgEventTime="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", msgExpTime = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getTriggerCond()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/sceneengine/SceneEngine;->b(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "isValid   hasUnknownTriggerConditionType=true  msgLabel = "

    :goto_1
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getStoppedCond()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/sceneengine/SceneEngine;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "isValid   hasUnKnownStopConditionType=true  msgLabel = "

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getStoppedCond()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, p1, v3}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/model/SceneMessage;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v0, "isValid stoppedCond list is null msgId = "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v2, :cond_7

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v0, "isValid msg is invalid msgId = "

    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/sceneengine/model/SceneMessage;->getMsgId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v2
.end method

.method public b(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tencent/sceneengine/model/TriggerCond;",
            ">;>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "hasUnKnownTriggerConditionType oldAllList="

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/sceneengine/model/TriggerCond;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/tencent/sceneengine/model/TriggerCond;->triggerCondType:I

    invoke-virtual {p0, v2}, Lcom/tencent/sceneengine/SceneEngine;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "cannot find validator for triggerCondType="

    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v1, Lcom/tencent/sceneengine/model/TriggerCond;->triggerCondType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object p0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p1, "hasUnKnownTriggerConditionType end false"

    invoke-static {p0, p1}, Lcom/tencent/taiutils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 9

    invoke-static {}, La/b/b/c;->a()La/b/b/c;

    move-result-object v0

    .line 3
    iget-object v1, v0, La/b/b/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "MetaMsgManager"

    const-string v3, "MetaMsgManager begin validate mMessageList.size="

    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, La/b/b/c;->c:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/sceneengine/model/SceneMessage;

    invoke-static {}, Lcom/tencent/sceneengine/SceneEngine;->a()Lcom/tencent/sceneengine/SceneEngine;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tencent/sceneengine/SceneEngine;->b(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v4, "MetaMsgManager validate message is inValid, will remove message = "

    invoke-static {v4}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    sget-object v7, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v7, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "MetaMsgManager"

    invoke-static {v7, v4}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, La/b/b/c;->c:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    move v4, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/sceneengine/SceneEngine;->a()Lcom/tencent/sceneengine/SceneEngine;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v5, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, La/b/b/c;->b(Lcom/tencent/sceneengine/model/SceneMessage;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, La/b/b/c;->c:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MetaMsgManager validate message is isTriggered and shouldDeleteMsgFromCache=true, will remove. message = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/tencent/sceneengine/model/SceneMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "MetaMsgManager"

    invoke-static {v6, v4}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v7, "MetaMsgManager isValid but not triggered message = "

    invoke-static {v7}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6
    sget-object v8, Lcom/tencent/taiutils/GsonUtils;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v8, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MetaMsgManager"

    invoke-static {v7, v6}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v0}, La/b/b/c;->b()V

    :cond_6
    if-eqz v5, :cond_7

    const-string v1, "MetaMsgManager validate message triggeredMsg.size = "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MetaMsgManager"

    invoke-static {v2, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "MetaMsgManager"

    const-string v2, "MetaMsgManager end validate mMessageList.size="

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, La/b/b/c;->c:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_8
    const-string v0, "null"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_9

    .line 8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string v1, "message list "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/sceneengine/model/SceneMessage;

    invoke-virtual {p0, v1, v3}, Lcom/tencent/sceneengine/SceneEngine;->a(Lcom/tencent/sceneengine/model/SceneMessage;Z)V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public c(I)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/sceneengine/SceneEngine;->g:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public queryMiniProgramsAlongRoute(Lcom/tencent/sceneengine/Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/sceneengine/IQueryCallback;)V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\u52a0\u6cb9\u7ad9"

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x67

    if-eqz v1, :cond_2

    if-eqz p5, :cond_1

    const-string p0, "invalid request params,category "

    invoke-static {p0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, v2, p0}, Lcom/tencent/sceneengine/IQueryCallback;->onFailed(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "keyword"

    :try_start_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "pageSize"

    const/16 v1, 0xa

    :try_start_1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "pageIndex"

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "lat"

    :try_start_3
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p2, "lon"

    :try_start_4
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string p2, "routeid"

    :try_start_5
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    invoke-static {}, Lcom/tencent/taiutils/network/HttpRequestMgr;->getInstance()Lcom/tencent/taiutils/network/HttpRequestMgr;

    move-result-object p2

    new-instance p3, La/b/b/m;

    invoke-direct {p3, p0, p5}, La/b/b/m;-><init>(Lcom/tencent/sceneengine/SceneEngine;Lcom/tencent/sceneengine/IQueryCallback;)V

    const-string p0, "http://wecar.sparta.html5.qq.com/appletapi/yantu/search/"

    const/4 p4, 0x0

    invoke-virtual {p2, p0, p4, p1, p3}, Lcom/tencent/taiutils/network/HttpRequestMgr;->post(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p2, "queryMiniProgramsAlongRoute JSONException e = "

    invoke-static {p1, p2, p0}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p5, :cond_3

    const-string p0, "invalid request params"

    invoke-interface {p5, v2, p0}, Lcom/tencent/sceneengine/IQueryCallback;->onFailed(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public queryMiniProgramsNearby(Lcom/tencent/sceneengine/Category;Ljava/lang/String;Ljava/lang/String;FLcom/tencent/sceneengine/IQueryCallback;)V
    .locals 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\u52a0\u6cb9\u7ad9"

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x67

    if-eqz v1, :cond_2

    if-eqz p5, :cond_1

    const-string p0, "invalid request params,category "

    invoke-static {p0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported yet"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, v2, p0}, Lcom/tencent/sceneengine/IQueryCallback;->onFailed(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "keyword"

    :try_start_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "ratio"

    float-to-double v3, p4

    :try_start_1
    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p4, "pageSize"

    const/16 v0, 0xa

    :try_start_2
    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p4, "pageIndex"

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p4, "lat"

    :try_start_4
    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string p2, "lon"

    :try_start_5
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    invoke-static {}, Lcom/tencent/taiutils/network/HttpRequestMgr;->getInstance()Lcom/tencent/taiutils/network/HttpRequestMgr;

    move-result-object p2

    new-instance p3, La/b/b/k;

    invoke-direct {p3, p0, p5}, La/b/b/k;-><init>(Lcom/tencent/sceneengine/SceneEngine;Lcom/tencent/sceneengine/IQueryCallback;)V

    const-string p0, "http://wecar.sparta.html5.qq.com/appletapi/tag/search/"

    const/4 p4, 0x0

    invoke-virtual {p2, p0, p4, p1, p3}, Lcom/tencent/taiutils/network/HttpRequestMgr;->post(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/tencent/taiutils/network/HttpRequestMgr$ICallback;)V

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/tencent/sceneengine/SceneEngine;->a:Ljava/lang/String;

    const-string p2, "queryMiniProgramsNearby JSONException e = "

    invoke-static {p1, p2, p0}, Lcom/tencent/taiutils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p5, :cond_3

    const-string p0, "invalid request params"

    invoke-interface {p5, v2, p0}, Lcom/tencent/sceneengine/IQueryCallback;->onFailed(ILjava/lang/String;)V

    :cond_3
    return-void
.end method
