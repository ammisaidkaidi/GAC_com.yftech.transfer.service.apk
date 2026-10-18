.class public abstract Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;
.super Ljava/lang/Object;
.source "CarInfoListenerImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/callback/CarInfoListenerImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarInfoObservor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayNightModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;)V
    .locals 0

    return-void
.end method

.method public onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 0

    return-void
.end method

.method public onRearGearStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;)V
    .locals 0

    return-void
.end method

.method public onVehicleSpeedChanged(I)V
    .locals 0

    return-void
.end method
