.class public Lcom/yftech/transfer/callback/CarInfoListenerImp;
.super Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
.source "CarInfoListenerImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;
    }
.end annotation


# static fields
.field private static final observors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->observors:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static isregisterObservor(Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;)Z
    .locals 1

    .line 43
    sget-object v0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static registerObservor(Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterObservor(Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onDayNightModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;)V
    .locals 1

    .line 77
    sget-object p0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 78
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;

    .line 80
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;->onDayNightModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 1

    .line 68
    sget-object p0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 69
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;

    .line 71
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;->onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRearGearStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    sget-object p0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;

    .line 53
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;->onRearGearStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVehicleSpeedChanged(I)V
    .locals 1

    .line 59
    sget-object p0, Lcom/yftech/transfer/callback/CarInfoListenerImp;->observors:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 60
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;

    .line 62
    invoke-virtual {v0, p1}, Lcom/yftech/transfer/callback/CarInfoListenerImp$CarInfoObservor;->onVehicleSpeedChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
