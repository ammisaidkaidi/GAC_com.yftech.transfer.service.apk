.class public interface abstract Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager$VehicleBasicInfoListener;
.super Ljava/lang/Object;
.source "PALVehicleBasicInfoManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tai/pal/client/PALVehicleBasicInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VehicleBasicInfoListener"
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
