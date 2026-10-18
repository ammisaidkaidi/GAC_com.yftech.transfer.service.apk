.class public Lcom/tencent/tai/pal/power/PowerInfo;
.super Ljava/lang/Object;
.source "PowerInfo.java"

# interfaces
.implements Lcom/tencent/tai/pal/INoProguardClass;


# instance fields
.field private mAirConditionerOn:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mAirConditionerOn"
    .end annotation
.end field

.field private mCurrentDrivingRangeInMeter:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mCurrentDrivingRangeInMeter"
    .end annotation
.end field

.field private mDrivingMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mDrivingMode"
    .end annotation
.end field

.field private mDrivingRangePerPercentInMeter:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mDrivingRangePerPercentInMeter"
    .end annotation
.end field

.field private mIsCharging:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mIsCharging"
    .end annotation
.end field

.field private mPercentageOfPowerRemaining:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mPercentageOfPowerRemaining"
    .end annotation
.end field

.field private mPowerLevel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mPowerLevel"
    .end annotation
.end field

.field private mTotalDrivingRangeInMeter:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mTotalDrivingRangeInMeter"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIZIIIIZ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mCurrentDrivingRangeInMeter:I

    .line 63
    iput p2, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mPercentageOfPowerRemaining:I

    .line 64
    iput-boolean p3, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mIsCharging:Z

    .line 65
    iput p4, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mTotalDrivingRangeInMeter:I

    .line 66
    iput p5, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mDrivingRangePerPercentInMeter:I

    .line 67
    iput p6, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mPowerLevel:I

    .line 68
    iput p7, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mDrivingMode:I

    .line 69
    iput-boolean p8, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mAirConditionerOn:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/tencent/tai/pal/power/PowerInfo;
    .locals 2

    .line 110
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 111
    const-class v1, Lcom/tencent/tai/pal/power/PowerInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/tai/pal/power/PowerInfo;

    return-object p0
.end method

.method public static toJson(Lcom/tencent/tai/pal/power/PowerInfo;)Ljava/lang/String;
    .locals 1

    .line 105
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 106
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCurrentDrivingRange()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mCurrentDrivingRangeInMeter:I

    return p0
.end method

.method public getDrivingMode()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mDrivingMode:I

    return p0
.end method

.method public getDrivingRangePerPercent()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mDrivingRangePerPercentInMeter:I

    return p0
.end method

.method public getPercentageOfPowerRemaining()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mPercentageOfPowerRemaining:I

    return p0
.end method

.method public getPowerLevel()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mPowerLevel:I

    return p0
.end method

.method public getTotalDrivingRange()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mTotalDrivingRangeInMeter:I

    return p0
.end method

.method public isAirConditionerOn()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mAirConditionerOn:Z

    return p0
.end method

.method public isCharging()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/tencent/tai/pal/power/PowerInfo;->mIsCharging:Z

    return p0
.end method
