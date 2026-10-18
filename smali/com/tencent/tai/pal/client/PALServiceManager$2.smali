.class final Lcom/tencent/tai/pal/client/PALServiceManager$2;
.super Ljava/lang/Object;
.source "PALServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/PALServiceManager;->unregisterManagerStateListener(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/tencent/tai/pal/client/PALServiceManager$2;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->a()Lcom/tencent/tai/pal/client/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->b()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/tai/pal/client/PALServiceManager$2;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->a()Lcom/tencent/tai/pal/client/a;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/tai/pal/client/PALServiceManager$2;->a:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-interface {v0, p0}, Lcom/tencent/tai/pal/client/a;->b(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V

    :goto_0
    return-void
.end method
