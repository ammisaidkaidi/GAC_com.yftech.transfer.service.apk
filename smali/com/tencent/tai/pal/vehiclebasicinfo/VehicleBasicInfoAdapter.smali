.class public abstract Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "VehicleBasicInfoAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/vehiclebasicinfo/IVehicleBasicInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;,
        Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;,
        Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getChannel()Ljava/lang/String;
.end method

.method public abstract getDayNightMode()I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getGear()I
.end method

.method public getPermanentPartitionPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSeatBeltBuckled(I)Z
.end method

.method public abstract getSpeed()Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$SpeedInfo;
.end method

.method public abstract getVehicleId()Ljava/lang/String;
.end method

.method public abstract getVehicleModel()Ljava/lang/String;
.end method

.method public abstract registerOnVehicleBasicInfoListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;)V
.end method

.method public abstract registerOnVehicleSpeedListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;)V
.end method

.method public final toGearString(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "GEAR_NEUTRAL"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-string p0, "GEAR_REVERSE"

    return-object p0

    :cond_1
    const/4 p0, 0x4

    if-ne p1, p0, :cond_2

    const-string p0, "GEAR_PARK"

    return-object p0

    :cond_2
    const/16 p0, 0x8

    if-ne p1, p0, :cond_3

    const-string p0, "GEAR_DRIVE"

    return-object p0

    :cond_3
    const/16 p0, 0x10

    if-ne p1, p0, :cond_4

    const-string p0, "GEAR_1"

    return-object p0

    :cond_4
    const/16 p0, 0x20

    if-ne p1, p0, :cond_5

    const-string p0, "GEAR_2"

    return-object p0

    :cond_5
    const/16 p0, 0x40

    if-ne p1, p0, :cond_6

    const-string p0, "GEAR_3"

    return-object p0

    :cond_6
    const/16 p0, 0x80

    if-ne p1, p0, :cond_7

    const-string p0, "GEAR_4"

    return-object p0

    :cond_7
    const/16 p0, 0x100

    if-ne p1, p0, :cond_8

    const-string p0, "GEAR_5"

    return-object p0

    :cond_8
    const/16 p0, 0x200

    if-ne p1, p0, :cond_9

    const-string p0, "GEAR_6"

    return-object p0

    :cond_9
    const/16 p0, 0x400

    if-ne p1, p0, :cond_a

    const-string p0, "GEAR_7"

    return-object p0

    :cond_a
    const/16 p0, 0x800

    if-ne p1, p0, :cond_b

    const-string p0, "GEAR_8"

    return-object p0

    :cond_b
    const/16 p0, 0x1000

    if-ne p1, p0, :cond_c

    const-string p0, "GEAR_9"

    return-object p0

    :cond_c
    if-nez p1, :cond_d

    const-string p0, "GEAR_UNKNOWN"

    return-object p0

    .line 224
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract unregisterOnVehicleBasicInfoListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;)V
.end method

.method public abstract unregisterOnVehicleSpeedListener(Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleSpeedListener;)V
.end method
