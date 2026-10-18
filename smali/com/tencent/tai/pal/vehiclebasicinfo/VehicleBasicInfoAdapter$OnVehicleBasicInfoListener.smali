.class public interface abstract Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter$OnVehicleBasicInfoListener;
.super Ljava/lang/Object;
.source "VehicleBasicInfoAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/vehiclebasicinfo/VehicleBasicInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVehicleBasicInfoListener"
.end annotation


# virtual methods
.method public abstract onDayNightModeChanged(I)V
.end method

.method public abstract onGearChanged(I)V
.end method

.method public abstract onPowerEventChange(I)V
.end method

.method public abstract onSeatBeltBuckledChanged(IZ)V
.end method
