.class public interface abstract Lcom/tencent/tai/pal/client/PALPowerManager;
.super Ljava/lang/Object;
.source "PALPowerManager.java"

# interfaces
.implements Lcom/tencent/tai/pal/power/IPower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/client/PALPowerManager$PowerLevelLowListener;
    }
.end annotation


# virtual methods
.method public abstract getPowerInfo()Lcom/tencent/tai/pal/power/PowerInfo;
.end method

.method public abstract getPowerLevelAfterDriving(I)I
.end method

.method public abstract getPowerType()I
.end method

.method public abstract registerPowerLevelLowListener(Lcom/tencent/tai/pal/client/PALPowerManager$PowerLevelLowListener;)V
.end method

.method public abstract unregisterPowerLevelLowListener(Lcom/tencent/tai/pal/client/PALPowerManager$PowerLevelLowListener;)V
.end method
