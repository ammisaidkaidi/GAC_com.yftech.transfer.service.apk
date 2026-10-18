.class Lcom/tencent/tai/pal/client/cs/a/m$2;
.super Lcom/tencent/tai/pal/vehiclerichinfo/a$a;
.source "VehicleRichInfoManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/m;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/m;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/m$2;->a:Lcom/tencent/tai/pal/client/cs/a/m;

    invoke-direct {p0}, Lcom/tencent/tai/pal/vehiclerichinfo/a$a;-><init>()V

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

    .line 42
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/m$2;->a:Lcom/tencent/tai/pal/client/cs/a/m;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/m;->b(Lcom/tencent/tai/pal/client/cs/a/m;)Ljava/util/concurrent/CopyOnWriteArrayList;

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

    check-cast v0, Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$OnDrivingControlStatusChangeListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$OnDrivingControlStatusChangeListener;->onDrivingControlStatusChange(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
