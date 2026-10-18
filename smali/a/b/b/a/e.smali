.class public La/b/b/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;La/b/b/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:La/b/b/a/a;

.field public final synthetic c:La/b/b/a/g;


# direct methods
.method public constructor <init>(La/b/b/a/g;Landroid/content/Context;La/b/b/a/a;)V
    .locals 0

    iput-object p1, p0, La/b/b/a/e;->c:La/b/b/a/g;

    iput-object p2, p0, La/b/b/a/e;->a:Landroid/content/Context;

    iput-object p3, p0, La/b/b/a/e;->b:La/b/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    sget-object p1, La/b/b/a/g;->a:Ljava/lang/String;

    const-string v0, "onServiceConnected"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, La/b/b/a/e;->c:La/b/b/a/g;

    invoke-static {p1}, La/b/b/a/g;->a(La/b/b/a/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La/b/b/a/e;->a:Landroid/content/Context;

    iget-object p0, p0, La/b/b/a/e;->c:La/b/b/a/g;

    invoke-static {p0}, La/b/b/a/g;->b(La/b/b/a/g;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_0
    iget-object p1, p0, La/b/b/a/e;->c:La/b/b/a/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, La/b/b/a/g;->b(La/b/b/a/g;Z)Z

    iget-object p1, p0, La/b/b/a/e;->b:La/b/b/a/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, La/b/b/a/e;->c:La/b/b/a/g;

    invoke-static {p1}, La/b/b/a/g;->d(La/b/b/a/g;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, La/b/b/a/b;

    invoke-direct {v0, p0, p2}, La/b/b/a/b;-><init>(La/b/b/a/e;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p1, p0, La/b/b/a/e;->c:La/b/b/a/g;

    invoke-static {p1, p2}, La/b/b/a/g;->a(La/b/b/a/g;Landroid/os/IBinder;)Landroid/os/IBinder;

    :try_start_0
    iget-object p1, p0, La/b/b/a/e;->c:La/b/b/a/g;

    invoke-static {p1}, La/b/b/a/g;->e(La/b/b/a/g;)Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, La/b/b/a/d;

    invoke-direct {p2, p0}, La/b/b/a/d;-><init>(La/b/b/a/e;)V

    const/4 p0, 0x0

    invoke-interface {p1, p2, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-object p1, La/b/b/a/g;->a:Ljava/lang/String;

    const-string v0, "onServiceDisconnected"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/taiutils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, La/b/b/a/e;->c:La/b/b/a/g;

    const/4 p1, 0x0

    invoke-static {p0, p1}, La/b/b/a/g;->b(La/b/b/a/g;Z)Z

    return-void
.end method
