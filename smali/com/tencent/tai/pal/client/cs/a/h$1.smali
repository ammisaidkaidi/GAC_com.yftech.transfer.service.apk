.class Lcom/tencent/tai/pal/client/cs/a/h$1;
.super Lcom/tencent/tai/pal/power/b$a;
.source "PowerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/h;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/h;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/h$1;->a:Lcom/tencent/tai/pal/client/cs/a/h;

    invoke-direct {p0}, Lcom/tencent/tai/pal/power/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/h$1;->a:Lcom/tencent/tai/pal/client/cs/a/h;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/h;->a(Lcom/tencent/tai/pal/client/cs/a/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/PALPowerManager$PowerLevelLowListener;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/client/PALPowerManager$PowerLevelLowListener;->onPowerLevelLow(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
