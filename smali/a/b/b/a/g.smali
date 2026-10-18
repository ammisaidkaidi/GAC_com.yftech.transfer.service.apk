.class public La/b/b/a/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "g"


# instance fields
.field public volatile b:Z

.field public volatile c:Z

.field public d:Landroid/content/ServiceConnection;

.field public e:Landroid/os/IBinder;

.field public f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/b/b/a/g;->f:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(La/b/b/a/g;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, La/b/b/a/g;->e:Landroid/os/IBinder;

    return-object p1
.end method

.method public static synthetic a(La/b/b/a/g;)Z
    .locals 0

    iget-boolean p0, p0, La/b/b/a/g;->c:Z

    return p0
.end method

.method public static synthetic a(La/b/b/a/g;Z)Z
    .locals 0

    iput-boolean p1, p0, La/b/b/a/g;->c:Z

    return p1
.end method

.method public static synthetic b(La/b/b/a/g;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, La/b/b/a/g;->d:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static synthetic b(La/b/b/a/g;Z)Z
    .locals 0

    iput-boolean p1, p0, La/b/b/a/g;->b:Z

    return p1
.end method

.method public static synthetic c(La/b/b/a/g;)Z
    .locals 0

    iget-boolean p0, p0, La/b/b/a/g;->b:Z

    return p0
.end method

.method public static synthetic d(La/b/b/a/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, La/b/b/a/g;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic e(La/b/b/a/g;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, La/b/b/a/g;->e:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;La/b/b/a/a;)V
    .locals 3

    sget-object v0, La/b/b/a/g;->a:Ljava/lang/String;

    const-string v1, "TaiSceneMsg linkRemoteService isConnected = "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, La/b/b/a/g;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, La/b/b/a/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/b/a/g;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/b/a/g;->c:Z

    iput-boolean v0, p0, La/b/b/a/g;->b:Z

    iget-object v0, p0, La/b/b/a/g;->d:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    new-instance v0, La/b/b/a/e;

    invoke-direct {v0, p0, p1, p4}, La/b/b/a/e;-><init>(La/b/b/a/g;Landroid/content/Context;La/b/b/a/a;)V

    iput-object v0, p0, La/b/b/a/g;->d:Landroid/content/ServiceConnection;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, La/b/b/a/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    const-string p2, "com.tencent.wecarnavi"

    :cond_2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, La/b/b/a/g;->d:Landroid/content/ServiceConnection;

    const/4 p3, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p1, p0, La/b/b/a/g;->f:Landroid/os/Handler;

    new-instance p2, La/b/b/a/f;

    invoke-direct {p2, p0, p4}, La/b/b/a/f;-><init>(La/b/b/a/g;La/b/b/a/a;)V

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
