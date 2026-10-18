.class Lcom/tencent/tai/pal/vehiclebasicinfo/d$1;
.super Ljava/lang/Object;
.source "VehicleBasicInfoService.java"

# interfaces
.implements Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;


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

    .line 25
    iput-object p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d$1;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeedChanged(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/d$1;->a:Lcom/tencent/tai/pal/vehiclebasicinfo/d;

    invoke-static {p0, p1}, Lcom/tencent/tai/pal/vehiclebasicinfo/d;->a(Lcom/tencent/tai/pal/vehiclebasicinfo/d;Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;)V

    return-void
.end method
