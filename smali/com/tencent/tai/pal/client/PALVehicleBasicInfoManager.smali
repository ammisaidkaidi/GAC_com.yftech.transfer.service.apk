.class public interface abstract Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager;
.super Ljava/lang/Object;
.source "PALVehicleBasicInfoManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/vehiclebasicinfo/IVehicleBasicInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleSpeedListener;,
        Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;
    }
.end annotation


# virtual methods
.method public abstract getChannel()Ljava/lang/String;
.end method

.method public abstract getDayNightMode()I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getGear()I
.end method

.method public abstract getPermanentPartitionPath()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getSeatBeltBuckled(I)Z
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getVehicleId()Ljava/lang/String;
.end method

.method public abstract getVehicleModel()Ljava/lang/String;
.end method

.method public abstract registerVehicleBasicInfoListener(Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;)V
.end method

.method public abstract registerVehicleSpeedListener(Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleSpeedListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;
        }
    .end annotation
.end method

.method public abstract toGearString(I)Ljava/lang/String;
.end method

.method public abstract unregisterVehicleBasicInfoListener(Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;)V
.end method

.method public abstract unregisterVehicleSpeedListener(Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleSpeedListener;)V
.end method
