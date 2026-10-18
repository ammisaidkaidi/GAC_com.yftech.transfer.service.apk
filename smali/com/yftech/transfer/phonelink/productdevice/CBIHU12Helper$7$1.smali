.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;
.super Ljava/lang/Object;
.source "CBIHU12Helper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;

.field final synthetic val$state:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;

    iput-object p2, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 2

    .line 238
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p1, v0, :cond_1

    .line 239
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$600(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    .line 240
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged connectedLinkStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "none"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$700(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    .line 247
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->resetUsb()V

    goto :goto_0

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->val$state:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p1, v0, :cond_5

    .line 251
    :cond_2
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$800(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V

    .line 252
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carlife"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    .line 253
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    if-eqz p0, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    :cond_3
    if-eqz p1, :cond_4

    .line 257
    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    .line 258
    :cond_4
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->disConnect()V

    .line 259
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->disable()V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
