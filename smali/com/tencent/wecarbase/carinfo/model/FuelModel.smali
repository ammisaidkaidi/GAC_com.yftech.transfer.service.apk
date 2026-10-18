.class public Lcom/tencent/wecarbase/carinfo/model/FuelModel;
.super Ljava/lang/Object;
.source "FuelModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATE_WARNING_LOW:I = 0x2

.field public static final STATE_WARNING_NONE:I = 0x0

.field public static final STATE_WARNING_NORMAL:I = 0x1

.field private static final serialVersionUID:J = 0x52899b2153060ab8L


# instance fields
.field private desc:Ljava/lang/String;

.field private fuelLevel:I

.field private mAverageFuelConsumption:F

.field private mInstantaneousFuelConsumption:F

.field private mState:I

.field private remainFuel:I

.field private totalFuel:I

.field private whichChanged:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u6cb9\u91cf\u4fe1\u606f"

    .line 11
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->desc:Ljava/lang/String;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->fuelLevel:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->mState:I

    return-void
.end method


# virtual methods
.method public getAverageFuelConsumption()F
    .locals 0

    .line 92
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->mAverageFuelConsumption:F

    return p0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getFuelLevel()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->fuelLevel:I

    return p0
.end method

.method public getInstantaneousFuelConsumption()F
    .locals 0

    .line 100
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->mInstantaneousFuelConsumption:F

    return p0
.end method

.method public getRemainFuel()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->remainFuel:I

    return p0
.end method

.method public getState()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->mState:I

    return p0
.end method

.method public getTotalFuel()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->totalFuel:I

    return p0
.end method

.method public setAverageFuelConsumption(F)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->mAverageFuelConsumption:F

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->desc:Ljava/lang/String;

    return-void
.end method

.method public setFuelLevel(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->fuelLevel:I

    return-void
.end method

.method public setInstantaneousFuelConsumption(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->mInstantaneousFuelConsumption:F

    return-void
.end method

.method public setRemainFuel(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->remainFuel:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->mState:I

    return-void
.end method

.method public setTotalFuel(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->totalFuel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FuelModel{desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fuelLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->fuelLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainFuel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->remainFuel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalFuel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/FuelModel;->totalFuel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
