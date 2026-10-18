.class public interface abstract Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager;
.super Ljava/lang/Object;
.source "PALVehicleRichInfoManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/vehiclerichinfo/IVehicleRichInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$OnDrivingControlStatusChangeListener;,
        Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$DrivingSafetyDisclaimerListener;
    }
.end annotation


# virtual methods
.method public abstract getDrivingControlStatus()I
.end method

.method public abstract getDrivingSafetyDisclaimerInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tai/pal/exception/FeatureNotSupportedException;
        }
    .end annotation
.end method

.method public abstract registerDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$DrivingSafetyDisclaimerListener;)V
.end method

.method public abstract registerOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$OnDrivingControlStatusChangeListener;)V
.end method

.method public abstract unregisterDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$DrivingSafetyDisclaimerListener;)V
.end method

.method public abstract unregisterOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/client/PALVehicleRichInfoManager$OnDrivingControlStatusChangeListener;)V
.end method
