.class public Lcom/yftech/transfer/tencent/opensdk/adapter/VehicleRichInfoAdapterImpl;
.super Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;
.source "VehicleRichInfoAdapterImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrivingControlStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDrivingSafetyDisclaimerInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;)V
    .locals 0

    return-void
.end method

.method public registerOnDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnDrivingControlStatusChangeListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingControlStatusChangeListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnDrivingSafetyDisclaimerListener(Lcom/tencent/tai/pal/vehiclerichinfo/VehicleRichInfoAdapter$OnDrivingSafetyDisclaimerListener;)V
    .locals 0

    return-void
.end method
