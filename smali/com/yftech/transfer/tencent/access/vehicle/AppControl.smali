.class public Lcom/yftech/transfer/tencent/access/vehicle/AppControl;
.super Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;
.source "AppControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvokeAction(ZLcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;)Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppControl onInvokeAction\uff0cisOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    .line 18
    invoke-super {p0, p1, p2}, Lcom/yftech/transfer/tencent/access/vehicle/BaseControl;->onInvokeAction(ZLcom/yftech/transfer/tencent/access/VehicleControlImpl$VehicleControlType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
