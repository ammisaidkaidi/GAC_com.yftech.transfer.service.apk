.class Lcom/tencent/tai/pal/vehiclebasicinfo/d$2;
.super Ljava/lang/Object;
.source "VehicleBasicInfoService.java"

# interfaces
.implements Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/vehiclebasicinfo/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tai/pal/vehiclebasicinfo/d;


# direct methods
.method constructor <init>(Lcom/tencent/tai/pal/vehiclebasicinfo/d;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d$2;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayNightModeChanged(I)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d$2;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/d;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a(Lcom/tencent/tai/pal/vehiclebasicinfo/d;I)V

    return-void
.end method

.method public onGearChanged(I)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d$2;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/d;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->b(Lcom/tencent/tai/pal/vehiclebasicinfo/d;I)V

    return-void
.end method

.method public onPowerEventChange(I)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d$2;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/d;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->c(Lcom/tencent/tai/pal/vehiclebasicinfo/d;I)V

    return-void
.end method

.method public onSeatBeltBuckledChanged(IZ)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d$2;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/d;

    invoke-static {p0, p1, p2}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a(Lcom/tencent/tai/pal/vehiclebasicinfo/d;IZ)V

    return-void
.end method
