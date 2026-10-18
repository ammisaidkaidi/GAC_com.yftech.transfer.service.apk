.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;
.super Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;
.source "CBIHU12Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 2

    .line 224
    invoke-super {p0, p1}, Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;->onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged prePowerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne v0, p1, :cond_0

    const-string p0, "onPowerStateChanged prePowerState == state"

    .line 228
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    .line 232
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$500(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$500(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    new-instance v1, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7$1;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper$7;Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V

    const-wide/16 p0, 0x1f4

    invoke-static {v1, p0, p1}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->access$502(Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
