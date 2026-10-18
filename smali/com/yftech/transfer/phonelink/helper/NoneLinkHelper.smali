.class public Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;
.super Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;
.source "NoneLinkHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptPhone()V
    .locals 0

    return-void
.end method

.method public closeVR()V
    .locals 0

    return-void
.end method

.method public connectByUsb()V
    .locals 0

    return-void
.end method

.method public connectByWireless()V
    .locals 0

    return-void
.end method

.method public connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    return-void
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public enable(Z)V
    .locals 0

    return-void
.end method

.method public forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 0

    return-void
.end method

.method public getAvailableCarLinkDeviceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCallStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCarLinkDeviceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectedCarLinkDeviceList()Lcom/yftech/car/phonelink/CarLinkDevice;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVRStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isConnected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public linkName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public mute(Z)V
    .locals 0

    return-void
.end method

.method public next()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public previous()V
    .locals 0

    return-void
.end method

.method public rejectPhone()V
    .locals 0

    return-void
.end method

.method public starCallPage()V
    .locals 0

    return-void
.end method

.method public startPage(I)V
    .locals 0

    return-void
.end method

.method public startVR()V
    .locals 0

    return-void
.end method

.method public uninit()V
    .locals 0

    return-void
.end method
