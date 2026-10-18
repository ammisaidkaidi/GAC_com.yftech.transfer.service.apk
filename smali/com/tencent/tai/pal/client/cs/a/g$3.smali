.class Lcom/tencent/tai/pal/client/cs/a/g$3;
.super Lcom/tencent/tai/pal/network/d$a;
.source "NetworkManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/g;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/g$3;->a:Lcom/tencent/tai/pal/client/cs/a/g;

    invoke-direct {p0}, Lcom/tencent/tai/pal/network/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/g$3;->a:Lcom/tencent/tai/pal/client/cs/a/g;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/g;->c(Lcom/tencent/tai/pal/client/cs/a/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkSignalStrengthChangeListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/client/PALNetworkManager$OnNetworkSignalStrengthChangeListener;->onNetworkSignalStrengthChange(IF)V

    goto :goto_0

    :cond_1
    return-void
.end method
