.class Lcom/tencent/tai/pal/client/cs/c$5;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/cs/c;->a(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/tencent/tai/pal/client/cs/c;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/c;Landroid/os/IBinder;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    iput-object p2, p0, Lcom/tencent/tai/pal/client/cs/c$5;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 375
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/c;->c(Lcom/tencent/tai/pal/client/cs/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/c$5;->a:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/tencent/tai/pal/b$a;->a(Landroid/os/IBinder;)Lcom/tencent/tai/pal/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/b;)Lcom/tencent/tai/pal/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 378
    :try_start_1
    iget-object v4, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v4}, Lcom/tencent/tai/pal/client/cs/c;->d(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/b;

    move-result-object v4

    .line 379
    invoke-static {}, Lcom/tencent/tai/pal/VersionInfo;->getLocalVersion()Lcom/tencent/tai/pal/VersionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tai/pal/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/tencent/tai/pal/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    iget-object v5, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v5}, Lcom/tencent/tai/pal/client/cs/c;->d(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/tai/pal/b;->a()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :try_start_2
    iget-object v6, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v6, v4}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_0

    const-string v1, "PAL_SDK"

    const-string v4, "PALServiceManager.onServiceConnected  versionMatch failed"

    .line 391
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v1, v3}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/b;)Lcom/tencent/tai/pal/b;

    .line 394
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v1, v2}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;I)I

    .line 395
    iget-object v1, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v1, v6}, Lcom/tencent/tai/pal/client/cs/c;->b(Lcom/tencent/tai/pal/client/cs/c;I)V

    .line 396
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/c;->e(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/client/cs/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/b;->a()V

    .line 397
    monitor-exit v0

    return-void

    .line 399
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v5}, Lcom/tencent/tai/pal/PlatformSupportInfo;->fromJson(Ljava/lang/String;)Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/PlatformSupportInfo;)Lcom/tencent/tai/pal/PlatformSupportInfo;

    .line 401
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v2}, Lcom/tencent/tai/pal/client/cs/c;->f(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tai/pal/client/cs/c;->b(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/PlatformSupportInfo;)V

    .line 402
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v0, v1}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;I)I

    .line 403
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v0, v6}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Z)V

    .line 404
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/c;->f(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/PlatformSupportInfo;

    move-result-object p0

    invoke-static {v0, v6, p0}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;ZLcom/tencent/tai/pal/PlatformSupportInfo;)V

    return-void

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "PAL_SDK"

    const-string v6, "exception caught"

    .line 382
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    iget-object v4, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v4, v3}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;Lcom/tencent/tai/pal/b;)Lcom/tencent/tai/pal/b;

    .line 385
    iget-object v3, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v3, v2}, Lcom/tencent/tai/pal/client/cs/c;->a(Lcom/tencent/tai/pal/client/cs/c;I)I

    .line 386
    iget-object v2, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {v2, v1}, Lcom/tencent/tai/pal/client/cs/c;->b(Lcom/tencent/tai/pal/client/cs/c;I)V

    .line 387
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$5;->b:Lcom/tencent/tai/pal/client/cs/c;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/c;->e(Lcom/tencent/tai/pal/client/cs/c;)Lcom/tencent/tai/pal/client/cs/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/tai/pal/client/cs/b;->a()V

    .line 388
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 399
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
