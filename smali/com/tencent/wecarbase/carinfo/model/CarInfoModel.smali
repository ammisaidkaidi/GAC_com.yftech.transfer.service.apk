.class public Lcom/tencent/wecarbase/carinfo/model/CarInfoModel;
.super Ljava/lang/Object;
.source "CarInfoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3c91a970ea15eaafL


# instance fields
.field private mileage_info:Lcom/tencent/wecarbase/carinfo/model/MileageModel;

.field private oil_info:Lcom/tencent/wecarbase/carinfo/model/FuelModel;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "empty"

    .line 14
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/model/CarInfoModel;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMileage_info()Lcom/tencent/wecarbase/carinfo/model/MileageModel;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/model/CarInfoModel;->mileage_info:Lcom/tencent/wecarbase/carinfo/model/MileageModel;

    return-object p0
.end method

.method public getOil_info()Lcom/tencent/wecarbase/carinfo/model/FuelModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/model/CarInfoModel;->oil_info:Lcom/tencent/wecarbase/carinfo/model/FuelModel;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/model/CarInfoModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setMileage_info(Lcom/tencent/wecarbase/carinfo/model/MileageModel;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/model/CarInfoModel;->mileage_info:Lcom/tencent/wecarbase/carinfo/model/MileageModel;

    return-void
.end method

.method public setOil_info(Lcom/tencent/wecarbase/carinfo/model/FuelModel;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/model/CarInfoModel;->oil_info:Lcom/tencent/wecarbase/carinfo/model/FuelModel;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/model/CarInfoModel;->title:Ljava/lang/String;

    return-void
.end method
