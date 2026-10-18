.class Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;
.super Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;
.source "CA1105Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isLostPowerAction:Z

.field private onCA1105LostUsbPowerListener:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;

.field private powerLaterD:Lio/reactivex/disposables/Disposable;

.field private prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

.field private usbLostPowerD:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;-><init>()V

    .line 259
    new-instance p1, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$1;

    invoke-direct {p1, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$1;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)V

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->onCA1105LostUsbPowerListener:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Z
    .locals 0

    .line 254
    iget-boolean p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->isLostPowerAction:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;Z)Z
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->isLostPowerAction:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->prePowerState:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->usbLostPowerD:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->usbLostPowerD:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->onCA1105LostUsbPowerListener:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager$OnCA1105LostUsbPowerListener;

    return-object p0
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 0

    .line 271
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->ON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-ne p0, p1, :cond_0

    .line 272
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ins:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ca1105ChargedUsbPower()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 2

    .line 278
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->powerLaterD:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->powerLaterD:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 280
    :cond_0
    new-instance p1, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;

    invoke-direct {p1, p0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8$2;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper$8;->powerLaterD:Lio/reactivex/disposables/Disposable;

    return-void
.end method
