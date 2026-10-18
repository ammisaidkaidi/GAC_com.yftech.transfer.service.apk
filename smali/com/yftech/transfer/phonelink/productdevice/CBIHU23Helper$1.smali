.class Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper$1;
.super Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;
.source "CBIHU23Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper$1;->this$0:Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarTBoxListenerImp$CarTBoxObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneCallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;)V
    .locals 0

    .line 34
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne p1, p0, :cond_0

    return-void

    .line 36
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->INCOMING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ANSWER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne p1, p0, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->HANG_UP:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CALL_OVER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne p1, p0, :cond_4

    .line 48
    :cond_2
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->resume()V

    .line 50
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mute(Z)V

    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->pauseForResume()V

    .line 44
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mute(Z)V

    :cond_4
    :goto_1
    return-void
.end method
