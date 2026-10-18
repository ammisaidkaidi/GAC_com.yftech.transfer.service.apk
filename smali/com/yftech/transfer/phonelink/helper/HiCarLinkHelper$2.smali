.class Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$2;
.super Ljava/lang/Object;
.source "HiCarLinkHelper.java"

# interfaces
.implements Lcom/yftech/hicar/sdk/IStateChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$2;->this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callStateChange(I)V
    .locals 1

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callBack callStateChange:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    .line 99
    :goto_0
    :pswitch_2
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1, p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onCallStatusChanged(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public connectStateChange(Z)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callBack connectStateChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V

    .line 70
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    .line 71
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onCallStatusChanged(I)V

    .line 73
    :cond_0
    invoke-static {}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->getInstance()Lcom/yftech/hicar/sdk/YFHiCarInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/hicar/sdk/YFHiCarInterface;->connectState()Lcom/yftech/hicar/sdk/ConnectStateEntity;

    move-result-object p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectStateChange connectStateEntity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 76
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$2;->this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;

    invoke-virtual {p1}, Lcom/yftech/hicar/sdk/ConnectStateEntity;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->access$202(Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    :cond_1
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->phoneLinkChanged()V

    return-void
.end method

.method public deviceListChange()V
    .locals 2

    .line 112
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$2;->this$0:Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceListChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "hicar"

    .line 114
    invoke-static {v0, p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public initSuccess()V
    .locals 1

    const-string p0, "initSuccess()"

    .line 57
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;->access$100()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 59
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;

    .line 61
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper$HiCarObservor;->onServiceConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reConnectStateChange(ZLjava/lang/String;)V
    .locals 1

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reConnectStateChange isReconnect:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",deviceName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 120
    invoke-static {p1, p2}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendHicarReConnectStateChange(ZLjava/lang/String;)V

    return-void
.end method

.method public voiceStateChange(Z)V
    .locals 1

    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callBack voiceStateChange b:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 106
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    return-void
.end method
