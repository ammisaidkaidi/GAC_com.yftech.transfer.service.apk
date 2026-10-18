.class public abstract Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;
.super Ljava/lang/Object;
.source "BasicLinkHelper.java"

# interfaces
.implements Lcom/yftech/transfer/phonelink/helper/interf/ILinkHelper;
.implements Lcom/yftech/transfer/phonelink/helper/interf/IMediaInf;


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract acceptPhone()V
.end method

.method public abstract closeVR()V
.end method

.method public abstract connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
.end method

.method public abstract enable(Z)V
.end method

.method public abstract forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
.end method

.method public abstract getAvailableCarLinkDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallStatus()I
.end method

.method public abstract getCarLinkDeviceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectedCarLinkDeviceList()Lcom/yftech/car/phonelink/CarLinkDevice;
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public abstract getVRStatus()I
.end method

.method public abstract init()V
.end method

.method public abstract mute(Z)V
.end method

.method public pauseForResume()V
    .locals 0

    return-void
.end method

.method public abstract rejectPhone()V
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public abstract starCallPage()V
.end method

.method public abstract startPage(I)V
.end method

.method public abstract startVR()V
.end method

.method public abstract uninit()V
.end method
