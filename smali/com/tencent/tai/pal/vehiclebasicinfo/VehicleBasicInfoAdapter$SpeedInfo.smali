.class public Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;
.super Ljava/lang/Object;
.source "VehicleBasicInfoAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedInfo"
.end annotation


# instance fields
.field private a:F

.field private b:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;


# direct methods
.method public constructor <init>(FLcom/tencent/tai/pal/SDKConstants$SpeedUnit;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput p1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->a:F

    .line 377
    iput-object p2, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->b:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    return-void
.end method


# virtual methods
.method public getSpeedInMetersPerSecond()F
    .locals 4

    .line 386
    sget-object v0, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->METERS_PER_SECOND:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    iget-object v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->b:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    invoke-virtual {v0, v1}, Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->a:F

    return p0

    .line 389
    :cond_0
    iget p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->a:F

    float-to-double v0, p0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeedInfo{mSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;->b:Lcom/tencent/tai/pal/SDKConstants$SpeedUnit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
