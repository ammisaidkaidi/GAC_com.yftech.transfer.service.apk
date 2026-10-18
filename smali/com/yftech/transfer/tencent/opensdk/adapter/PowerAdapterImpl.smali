.class public Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;
.super Lcom/tencent/tai/pal/power/PowerAdapter;
.source "PowerAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl$WXReverseStateRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_ECALLBCALL_STATE_CHANGE:Ljava/lang/String; = "com.tencent.mm.action.ECALL_BCALL_STATE"

.field public static final AVM_ACTION:Ljava/lang/String; = "com.tencent.mm.action.vehicle.AVM"

.field public static final AVM_ACTION_AVM:I = 0x0

.field public static final AVM_ACTION_AVM_END:I = 0x1

.field public static final BCALL_ECALL_STATE_END:I = 0x0

.field public static final BCALL_ECALL_STATE_OPEN:I = 0x1

.field public static final KEY_AVM_STATE:Ljava/lang/String; = "avm_state"

.field public static final KEY_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final KEY_REVERSE_STATE:Ljava/lang/String; = "reverse_state"

.field public static final REVERSE_ACTION:Ljava/lang/String; = "com.tencent.mm.action.vehicle.REVERSE"

.field public static final REVERSE_ACTION_REVERSE:I = 0x0

.field public static final REVERSE_ACTION_REVERSE_END:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private mLockObj:Ljava/lang/Object;

.field private mOnPowerLevelLowListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/tencent/tai/pal/power/PowerAdapter;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mH:Landroid/os/Handler;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mOnPowerLevelLowListener:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mLockObj:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPowerInfo()Lcom/tencent/tai/pal/power/PowerInfo;
    .locals 9

    .line 109
    new-instance p0, Lcom/tencent/tai/pal/power/PowerInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/tencent/tai/pal/power/PowerInfo;-><init>(IIZIIIIZ)V

    const-string v0, "call getPowerInfo ,return value CurrentDrivingRangeInMeter=0,PercentageOfPowerRemaining=0,IsCharging=false,TotalDrivingRangeInMeter=0,DrivingRangePerPercentInMeter=0,PowerLevel=0,DrivingMode=2,AirConditionerOn=true"

    .line 119
    invoke-static {v0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    return-object p0
.end method

.method public getPowerLevelAfterDriving(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPowerType()I
    .locals 0

    const-string p0, "call getPowerType ,return value:1"

    .line 74
    invoke-static {p0}, Lcom/tencent/tai/pal/platform/adapter/PlatformAdapter;->LOGI(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public registerOnPowerLevelLowListener(Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mOnPowerLevelLowListener:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mOnPowerLevelLowListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mOnPowerLevelLowListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterOnPowerLevelLowListener(Lcom/tencent/tai/pal/power/PowerAdapter$OnPowerLevelLowListener;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mOnPowerLevelLowListener:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mOnPowerLevelLowListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/yftech/transfer/tencent/opensdk/adapter/PowerAdapterImpl;->mOnPowerLevelLowListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
