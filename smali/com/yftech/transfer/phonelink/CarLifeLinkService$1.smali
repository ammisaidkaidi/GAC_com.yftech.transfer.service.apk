.class Lcom/yftech/transfer/phonelink/CarLifeLinkService$1;
.super Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;
.source "CarLifeLinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/CarLifeLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/CarLifeLinkService;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/CarLifeLinkService;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService$1;->this$0:Lcom/yftech/transfer/phonelink/CarLifeLinkService;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 0

    return-void
.end method

.method public onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 1

    .line 44
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    iget v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    iget v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->value:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->sleepStatus(Z)V

    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/transfer/phonelink/CarLifeLinkService;->stub:Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/stub/CarLifeServerInterfaceStub;->sleepStatus(Z)V

    :goto_1
    return-void
.end method
