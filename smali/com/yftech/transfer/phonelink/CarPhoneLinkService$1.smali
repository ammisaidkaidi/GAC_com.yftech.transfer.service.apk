.class Lcom/yftech/transfer/phonelink/CarPhoneLinkService$1;
.super Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;
.source "CarPhoneLinkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/CarPhoneLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/CarPhoneLinkService;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/CarPhoneLinkService;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/CarPhoneLinkService$1;->this$0:Lcom/yftech/transfer/phonelink/CarPhoneLinkService;

    invoke-direct {p0}, Lcom/yftech/transfer/callback/CarPowerListenerImp$CarPowerObservor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 1

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPowerModeChanged mode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 72
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-ne p0, p1, :cond_0

    .line 73
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mute(Z)V

    goto :goto_0

    .line 75
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->ON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    if-ne p0, p1, :cond_1

    .line 76
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mute(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 1

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPowerStateChanged state:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 46
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq p0, p1, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SLEEP:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq p0, p1, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p0, p1, :cond_2

    .line 54
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mute(Z)V

    .line 55
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->resume()V

    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->closeVR()V

    .line 51
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mute(Z)V

    .line 52
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->pauseForResume()V

    .line 58
    :cond_2
    :goto_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->VOLFAULTSTBY:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-ne p1, p0, :cond_4

    .line 60
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p1, "carlife"

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    .line 61
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    if-eqz p0, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    :cond_3
    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    :cond_4
    return-void
.end method
