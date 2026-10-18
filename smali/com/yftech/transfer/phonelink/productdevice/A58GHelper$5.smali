.class Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;
.super Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;
.source "A58GHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;->onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged prePowerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne v0, p1, :cond_0

    const-string p0, "onPowerStateChanged prePowerState == state"

    .line 174
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 178
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p1, v0, :cond_2

    .line 179
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->access$500(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    .line 180
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged connectedLinkStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "none"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->access$600(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    .line 187
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->resetUsb()V

    goto :goto_0

    .line 188
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p1, v0, :cond_3

    .line 190
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper$5;->this$0:Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;->access$700(Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;)V

    .line 191
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->disConnect()V

    .line 192
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disable()V

    :cond_3
    :goto_0
    return-void
.end method
