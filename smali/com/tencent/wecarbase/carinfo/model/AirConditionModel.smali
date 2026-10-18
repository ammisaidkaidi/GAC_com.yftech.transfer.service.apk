.class public Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;
.super Ljava/lang/Object;
.source "AirConditionModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CYCLE_MODEL_INSIDE:I = 0x1

.field public static final CYCLE_MODEL_INSIDE_AUTO:I = 0x3

.field public static final CYCLE_MODEL_NONE:I = 0x0

.field public static final CYCLE_MODEL_OUTSIDE:I = 0x2

.field public static final TEMPERATURE_HIGH:I = 0xf0

.field public static final TEMPERATURE_LOW:I = 0x1

.field public static final TEMP_UNIT_CELSIUS:I = 0x0

.field public static final TEMP_UNIT_FAHRENHEIT:I = 0x1

.field public static final WIND_DIRECTION_ALL:I = 0x7

.field public static final WIND_DIRECTION_FACE:I = 0x1

.field public static final WIND_DIRECTION_FACE_AND_LEG:I = 0x2

.field public static final WIND_DIRECTION_FRONT_GLASS:I = 0x5

.field public static final WIND_DIRECTION_FRONT_GLASS_AND_FACE:I = 0x6

.field public static final WIND_DIRECTION_FRONT_GLASS_AND_LEG:I = 0x4

.field public static final WIND_DIRECTION_LEG:I = 0x3

.field public static final WIND_DIRECTION_NONE:I = 0x0

.field private static final serialVersionUID:J = -0x35cc1b661dc6ab72L


# instance fields
.field private mAC:I

.field private mAuto:I

.field private mBackDefog:I

.field private mCycleModel:I

.field private mDualZone:I

.field private mFrontDefog:I

.field private mLeftTemp:F

.field private mRightTemp:F

.field private mTemperatureUnitType:I

.field private mWindDirection:I

.field private mWindLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mLeftTemp:F

    .line 26
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mRightTemp:F

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mTemperatureUnitType:I

    .line 78
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mWindDirection:I

    .line 83
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mWindLevel:I

    .line 88
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mAC:I

    const/4 v1, 0x1

    .line 93
    iput v1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mAuto:I

    .line 116
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mCycleModel:I

    .line 121
    iput v1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mDualZone:I

    .line 126
    iput v1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mFrontDefog:I

    .line 131
    iput v1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mBackDefog:I

    return-void
.end method


# virtual methods
.method public getAC()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mAC:I

    return p0
.end method

.method public getAuto()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mAuto:I

    return p0
.end method

.method public getBackDefog()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mBackDefog:I

    return p0
.end method

.method public getCycleModel()I
    .locals 0

    .line 214
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mCycleModel:I

    return p0
.end method

.method public getDualZone()I
    .locals 0

    .line 206
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mDualZone:I

    return p0
.end method

.method public getFrontDefog()I
    .locals 0

    .line 198
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mFrontDefog:I

    return p0
.end method

.method public getLeftTemp()F
    .locals 0

    .line 134
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mLeftTemp:F

    return p0
.end method

.method public getRightTemp()F
    .locals 0

    .line 142
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mRightTemp:F

    return p0
.end method

.method public getTemperatureUnitType()I
    .locals 0

    .line 150
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mTemperatureUnitType:I

    return p0
.end method

.method public getWindDirection()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mWindDirection:I

    return p0
.end method

.method public getWindLevel()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mWindLevel:I

    return p0
.end method

.method public setAC(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mAC:I

    return-void
.end method

.method public setAuto(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mAuto:I

    return-void
.end method

.method public setBackDefog(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mBackDefog:I

    return-void
.end method

.method public setCycleModel(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mCycleModel:I

    return-void
.end method

.method public setDualZone(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mDualZone:I

    return-void
.end method

.method public setFrontDefog(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mFrontDefog:I

    return-void
.end method

.method public setLeftTemp(F)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mLeftTemp:F

    return-void
.end method

.method public setRightTemp(F)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mRightTemp:F

    return-void
.end method

.method public setTemperatureUnitType(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mTemperatureUnitType:I

    return-void
.end method

.method public setWindDirection(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mWindDirection:I

    return-void
.end method

.method public setWindLevel(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/AirConditionModel;->mWindLevel:I

    return-void
.end method
