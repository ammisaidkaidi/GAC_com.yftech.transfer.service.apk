.class Lcom/tencent/tai/pal/client/cs/a/e$1;
.super Lcom/tencent/tai/pal/ins/b$a;
.source "InsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/e;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/e;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/e$1;->a:Lcom/tencent/tai/pal/client/cs/a/e;

    invoke-direct {p0}, Lcom/tencent/tai/pal/ins/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFFIJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 39
    iget-object v0, v0, Lcom/tencent/tai/pal/client/cs/a/e$1;->a:Lcom/tencent/tai/pal/client/cs/a/e;

    invoke-static {v0}, Lcom/tencent/tai/pal/client/cs/a/e;->a(Lcom/tencent/tai/pal/client/cs/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    .line 41
    invoke-interface/range {v2 .. v9}, Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;->onGyroscopeInfoChanged(FFFFIJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(FFFIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/e$1;->a:Lcom/tencent/tai/pal/client/cs/a/e;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/e;->a(Lcom/tencent/tai/pal/client/cs/a/e;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    .line 50
    invoke-interface/range {v1 .. v7}, Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;->onAccelerometerInfoChanged(FFFIJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(FIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/e$1;->a:Lcom/tencent/tai/pal/client/cs/a/e;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/e;->a(Lcom/tencent/tai/pal/client/cs/a/e;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tai/pal/client/PALInsManager$InsInfoListener;->onSpeedChanged(FIJ)V

    goto :goto_0

    :cond_1
    return-void
.end method
