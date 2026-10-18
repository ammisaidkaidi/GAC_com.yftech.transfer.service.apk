.class final Lcom/tencent/tai/pal/client/PALServiceManager$3;
.super Ljava/lang/Object;
.source "PALServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tai/pal/client/PALServiceManager;->init(Lcom/tencent/tai/pal/client/PALServiceManager$PALConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/tencent/tai/pal/client/PALServiceManager$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tai/pal/client/PALServiceManager$3;->b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "PAL_SDK"

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PALServiceManager.init context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tai/pal/client/PALServiceManager$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tai/pal/client/PALServiceManager$3;->b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sServiceManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->a()Lcom/tencent/tai/pal/client/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->a()Lcom/tencent/tai/pal/client/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Lcom/tencent/tai/pal/client/cs/c;

    invoke-direct {v0}, Lcom/tencent/tai/pal/client/cs/c;-><init>()V

    invoke-static {v0}, Lcom/tencent/tai/pal/client/PALServiceManager;->a(Lcom/tencent/tai/pal/client/a;)Lcom/tencent/tai/pal/client/a;

    .line 188
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    .line 189
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->a()Lcom/tencent/tai/pal/client/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tencent/tai/pal/client/a;->a(Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    :cond_1
    invoke-static {}, Lcom/tencent/tai/pal/client/PALServiceManager;->a()Lcom/tencent/tai/pal/client/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tai/pal/client/PALServiceManager$3;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/tai/pal/client/PALServiceManager$3;->b:Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;

    invoke-interface {v0, v1, p0}, Lcom/tencent/tai/pal/client/a;->a(Landroid/content/Context;Lcom/tencent/tai/pal/client/PALServiceManager$ManagerStateListener;)V

    return-void
.end method
