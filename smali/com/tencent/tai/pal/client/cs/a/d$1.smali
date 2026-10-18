.class Lcom/tencent/tai/pal/client/cs/a/d$1;
.super Lcom/tencent/tai/pal/extensible/c$a;
.source "ExtensibleManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/d;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/d;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/d$1;->a:Lcom/tencent/tai/pal/client/cs/a/d;

    invoke-direct {p0}, Lcom/tencent/tai/pal/extensible/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/d$1;->a:Lcom/tencent/tai/pal/client/cs/a/d;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/d;->a(Lcom/tencent/tai/pal/client/cs/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/tencent/tai/pal/client/PALExtensibleManager$ExtensibleListener;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/client/PALExtensibleManager$ExtensibleListener;->onExtensibleMsg(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method
