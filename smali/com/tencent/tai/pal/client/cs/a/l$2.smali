.class Lcom/tencent/tai/pal/client/cs/a/l$2;
.super Lcom/tencent/tai/pal/vehiclebasicinfo/c$a;
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

    .line 122
    iput-object p1, p0, Lcom/tencent/tai/pal/client/cs/a/l$2;->a:Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-direct {p0}, Lcom/tencent/tai/pal/vehiclebasicinfo/c$a;-><init>()V

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

    .line 126
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l$2;->a:Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b(Lcom/tencent/tai/pal/client/cs/a/l;)Ljava/util/List;

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

    check-cast v0, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;->onGearChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l$2;->a:Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b(Lcom/tencent/tai/pal/client/cs/a/l;)Ljava/util/List;

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

    check-cast v0, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p1, p2}, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;->onSeatBeltBuckledChanged(IZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l$2;->a:Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b(Lcom/tencent/tai/pal/client/cs/a/l;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 138
    invoke-interface {v0, v1}, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;->onPowerEventChange(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 140
    invoke-interface {v0, v1}, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;->onPowerEventChange(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l$2;->a:Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b(Lcom/tencent/tai/pal/client/cs/a/l;)Ljava/util/List;

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

    check-cast v0, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;->onDayNightModeChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object p0, p0, Lcom/tencent/tai/pal/client/cs/a/l$2;->a:Lcom/tencent/tai/pal/client/cs/a/l;

    invoke-static {p0}, Lcom/tencent/tai/pal/client/cs/a/l;->b(Lcom/tencent/tai/pal/client/cs/a/l;)Ljava/util/List;

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

    check-cast v0, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0, p1}, Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;->onPowerEventChange(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
