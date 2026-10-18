.class public Lcom/tencent/wecarbase/carinfo/model/MileageModel;
.super Ljava/lang/Object;
.source "MileageModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1a97056f4ede92bcL


# instance fields
.field private desc:Ljava/lang/String;

.field private enduranceMileage:I

.field private totalMileage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u91cc\u7a0b\u4fe1\u606f"

    .line 13
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getEnduranceMileage()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->enduranceMileage:I

    return p0
.end method

.method public getTotalMileage()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->totalMileage:I

    return p0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->desc:Ljava/lang/String;

    return-void
.end method

.method public setEnduranceMileage(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->enduranceMileage:I

    return-void
.end method

.method public setTotalMileage(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->totalMileage:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MileageModel{desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", totalMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->totalMileage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enduranceMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/wecarbase/carinfo/model/MileageModel;->enduranceMileage:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
