.class public abstract Lcom/tencent/tai/pal/client/cs/a;
.super Ljava/lang/Object;
.source "BaseManager.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/tencent/tai/pal/PlatformSupportInfo;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a;->c:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/tencent/tai/pal/client/cs/a;->a:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/tencent/tai/pal/client/cs/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method protected abstract a(Landroid/os/IBinder;)V
.end method

.method a(ZLandroid/os/IBinder;Lcom/tencent/tai/pal/PlatformSupportInfo;)V
    .locals 0

    .line 44
    iput-object p3, p0, Lcom/tencent/tai/pal/client/cs/a;->d:Lcom/tencent/tai/pal/PlatformSupportInfo;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    .line 47
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0, p2}, Lcom/tencent/tai/pal/client/cs/a;->a(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PAL_SDK"

    const-string p2, "exception caught"

    .line 51
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/a;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b()Lcom/tencent/tai/pal/PlatformSupportInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a;->d:Lcom/tencent/tai/pal/PlatformSupportInfo;

    return-object p0
.end method

.method c()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method d()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method protected e()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->isServiceConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ServiceManager not connected!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract f()V
.end method
