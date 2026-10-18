.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;
.super Ljava/lang/Object;
.source "CA1105Helper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
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
.field final synthetic this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 4

    .line 283
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object p1

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged prePowerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$200(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$200(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$200(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {v0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$202(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 289
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$300(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$300(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 291
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq v0, p1, :cond_5

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne v0, p1, :cond_2

    goto/16 :goto_0

    .line 300
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne v0, p1, :cond_7

    .line 301
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 302
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 303
    :cond_3
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ins:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ca1105ChargedUsbPower()Lio/reactivex/disposables/Disposable;

    .line 304
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$600(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$CarPlayObservor;->onServiceConnected()V

    .line 305
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$700(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;->onServiceConnected()V

    .line 306
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->access$800(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/carlife/CarLifeClient$CarLifeObservor;->onServiceConnected()V

    .line 307
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged systemOn connectedLinkStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cisLostPowerAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$100(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "none"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 312
    :cond_4
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$100(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 313
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;->resetUsb()V

    goto :goto_1

    .line 292
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 293
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$400(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 294
    :cond_6
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$102(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;Z)Z

    .line 295
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    sget-object v1, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ins:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->this$1:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$500(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;

    move-result-object p0

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, p0, v2, v3}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ca1105LostUsbPowerAtTimeWhenStandBy(Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;J)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->access$402(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 296
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "hicar"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    .line 297
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carlife"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    .line 298
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carplay"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;->accept(Ljava/lang/Long;)V

    return-void
.end method
