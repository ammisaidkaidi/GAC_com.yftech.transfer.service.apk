.class public Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;
.super Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.source "CBIHU23C1Helper.java"


# instance fields
.field private mCarTBoxListener:Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;-><init>()V

    .line 11
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper$1;

    invoke-direct {v0, p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper$1;-><init>(Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mCarTBoxListener:Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->update()V

    return-void
.end method

.method private mutePhoneLink(Z)V
    .locals 2

    .line 41
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBIHU23C1Helper#mutePhoneLink connectedLinkStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "none"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0, p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->mute(Z)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 49
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->getPhoneCallState()Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBIHU23C1Helper#update phoneCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ANSWER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v0, v1, :cond_1

    .line 56
    invoke-direct {p0, v2}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mutePhoneLink(Z)V

    goto :goto_2

    .line 58
    :cond_1
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 59
    invoke-direct {p0, v3}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mutePhoneLink(Z)V

    goto :goto_2

    .line 61
    :cond_2
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->INCOMING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v0, v1, :cond_3

    .line 62
    invoke-direct {p0, v2}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mutePhoneLink(Z)V

    goto :goto_2

    .line 64
    :cond_3
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CALL_OVER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->HANG_UP:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 67
    :cond_4
    invoke-direct {p0, v3}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mutePhoneLink(Z)V

    goto :goto_2

    .line 65
    :cond_5
    :goto_0
    invoke-direct {p0, v3}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mutePhoneLink(Z)V

    goto :goto_2

    .line 53
    :cond_6
    :goto_1
    invoke-direct {p0, v2}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mutePhoneLink(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->init()V

    const-string v0, "CBIHU23C1Helper#Init"

    .line 29
    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mCarTBoxListener:Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->registerListener(Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;)V

    return-void
.end method

.method public uninit()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->uninit()V

    .line 36
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->get()Lcom/yftech/vehicle/sdk/CarTBoxManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;->mCarTBoxListener:Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarTBoxManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarTBoxManager$CarTBoxListener;)V

    return-void
.end method
