.class Lcom/tencent/tai/pal/client/cs/c$4;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/cs/c;->a(ZLcom/tencent/tai/pal/PlatformSupportInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

.field final synthetic c:Lcom/tencent/tai/pal/PlatformSupportInfo;

.field final synthetic d:Lcom/tencent/tai/pal/client/cs/c;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/c;ZLcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;Lcom/tencent/tai/pal/PlatformSupportInfo;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/c$4;->d:Lcom/tencent/tai/pal/client/cs/c;

    iput-boolean p2, p0, Lcom/tencent/tai/pal/client/cs/c$4;->a:Z

    iput-object p3, p0, Lcom/tencent/tai/pal/client/cs/c$4;->b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    iput-object p4, p0, Lcom/tencent/tai/pal/client/cs/c$4;->c:Lcom/tencent/tai/pal/PlatformSupportInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$4;->d:Lcom/tencent/tai/pal/client/cs/c;

    invoke-virtual {v0}, Lcom/tencent/tai/pal/client/cs/c;->a()Z

    move-result v0

    iget-boolean v1, p0, Lcom/tencent/tai/pal/client/cs/c$4;->a:Z

    if-eq v0, v1, :cond_0

    return-void

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/tai/pal/client/cs/c$4;->a:Z

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/tencent/tai/pal/client/cs/c$4;->b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$4;->c:Lcom/tencent/tai/pal/PlatformSupportInfo;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;->onConnected(Lcom/tencent/tai/pal/PlatformSupportInfo;)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/c$4;->b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-interface {p0}, Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;->onDisconnected()V

    :goto_0
    return-void
.end method
