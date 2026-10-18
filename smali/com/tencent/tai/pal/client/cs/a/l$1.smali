.class Lcom/tencent/tai/pal/client/cs/a/l$1;
.super Lcom/tencent/tai/pal/vehiclebasicinfo/a$a;
.source "VehicleBasicInfoManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/cs/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/client/cs/a/l;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/client/cs/a/l;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l$1;->a:Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-direct {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l$1;->a:Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->a(Lcom/tencent/tai/pal/client/cs/a/l;)Ljava/util/List;

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

    check-cast v0, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleSpeedListener;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleSpeedListener;->onSpeedChanged(F)V

    goto :goto_0

    :cond_1
    return-void
.end method
