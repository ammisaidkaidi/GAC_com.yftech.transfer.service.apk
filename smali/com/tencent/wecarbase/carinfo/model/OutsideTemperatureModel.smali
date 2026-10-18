.class public Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;
.super Ljava/lang/Object;
.source "OutsideTemperatureModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TEMP_UNIT_CELSIUS:I = 0x0

.field public static final TEMP_UNIT_FAHRENHEIT:I = 0x1

.field private static final serialVersionUID:J = 0x3e19b8a7ba33c79L


# instance fields
.field private mOutsideTemperature:F

.field private mTemperatureUnitType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 14
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;->mOutsideTemperature:F

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;->mTemperatureUnitType:I

    return-void
.end method


# virtual methods
.method public getOutsideTemperature()F
    .locals 0

    .line 24
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;->mOutsideTemperature:F

    return p0
.end method

.method public getTemperatureUnitType()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;->mTemperatureUnitType:I

    return p0
.end method

.method public setOutsideTemperature(F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;->mOutsideTemperature:F

    return-void
.end method

.method public setTemperatureUnitType(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/OutsideTemperatureModel;->mTemperatureUnitType:I

    return-void
.end method
