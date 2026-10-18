.class public abstract Lcom/tencent/tai/pal/power/PowerAdapter;
.super Lcom/tencent/tai/pal/service/BaseAdapter;
.source "PowerAdapter.java"

# interfaces
.implements Lcom/tencent/tai/pal/power/IPower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tencent/tai/pal/service/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPowerInfo()Lcom/tencent/tai/pal/power/PowerInfo;
.end method

.method public abstract getPowerLevelAfterDriving(I)I
.end method

.method public abstract getPowerType()I
.end method

.method public abstract registerOnPowerLevelLowListener(Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;)V
.end method

.method public abstract unregisterOnPowerLevelLowListener(Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;)V
.end method
