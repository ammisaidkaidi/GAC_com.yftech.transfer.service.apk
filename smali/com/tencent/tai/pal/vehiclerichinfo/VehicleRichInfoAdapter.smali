.class public abstract Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "VehicleRichInfoAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/vehiclerichinfo/IVehicleRichInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;,
        Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDrivingControlStatus()I
.end method

.method public abstract getDrivingSafetyDisclaimerInfo()Ljava/lang/String;
.end method

.method public abstract registerOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;)V
.end method

.method public abstract registerOnDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;)V
.end method

.method public abstract unregisterOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;)V
.end method

.method public abstract unregisterOnDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;)V
.end method
