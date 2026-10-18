.class Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$3;
.super Ljava/lang/Object;
.source "CarLifeLinkHelper.java"

# interfaces
.implements Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper$3;->this$0:Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectStatus(II)V
    .locals 1

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnStatusChangedListener connectStatus:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->isBlueToothConnected()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 77
    :cond_1
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->disConnectAudio()V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 80
    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V

    .line 81
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onCallStatusChanged(I)V

    .line 82
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    .line 84
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->connectAudio()V

    :goto_0
    return-void
.end method
