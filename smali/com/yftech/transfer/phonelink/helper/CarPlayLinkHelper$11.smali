.class Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;
.super Ljava/lang/Object;
.source "CarPlayLinkHelper.java"

# interfaces
.implements Lcom/autochips/carplay/CarplayManager$CarplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ACCESSORY_UI_HIDE:I

.field final synthetic this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

.field private vrAuxTimerD:Lio/reactivex/disposables/Disposable;

.field private vrTimerD:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    .line 509
    iput p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->ACCESSORY_UI_HIDE:I

    return-void
.end method


# virtual methods
.method public onCallStateChanged(Lcom/autochips/carplay/CarplayCall;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isConnected()Z

    move-result v0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged isConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    .line 644
    :cond_1
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayCall;->getState()I

    move-result p1

    .line 645
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 671
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 672
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 673
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->closeVR()V

    :cond_2
    const-string p1, "CA1105"

    .line 674
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 675
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->openScreenBrightnessTransient()V

    goto/16 :goto_0

    .line 660
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 661
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 662
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->closeVR()V

    :cond_3
    const-string p1, "CA1105"

    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 664
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->openScreenBrightnessTransient()V

    goto :goto_0

    .line 651
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 652
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2200(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 653
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->closeVR()V

    :cond_4
    const-string p1, "CA1105"

    .line 655
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 656
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->openScreenBrightnessTransient()V

    goto :goto_0

    .line 678
    :pswitch_3
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 679
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 680
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/autochips/carplay/CarplayManager;->getCurrentCalls(Lcom/autochips/carplay/CarplayDevice;)Ljava/util/List;

    move-result-object p1

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged currentCalls:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 682
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 683
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    goto :goto_0

    .line 687
    :cond_5
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    const-string p1, "CA1105"

    .line 688
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 689
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->closeScreenBrightnessTransient()V

    .line 693
    :cond_6
    :goto_0
    :pswitch_4
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onCallStatusChanged(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onCarPlayAvailabilityChanged(Lcom/autochips/carplay/CarplayDevice;I)V
    .locals 2

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onCarPlayAvailabilityChanged carplayDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",i:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1105
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p0

    const-string p1, "carplay"

    .line 1106
    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/autochips/carplay/CarplayDevice;I)V
    .locals 5

    .line 738
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carplay_onConnectionStateChanged carplayDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_1

    goto/16 :goto_3

    .line 743
    :cond_1
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2002(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    sget-object p2, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/utils/CarPlayUtils;->bindCarPlayApp(Landroid/content/Context;)V

    .line 746
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "carplay_onConnectionStateChanged connected,mPreConnectedDevice:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",mPreConnectedDeviceTransport:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 747
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p2

    if-eqz p2, :cond_2

    return-void

    .line 750
    :cond_2
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;

    .line 751
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/carplay/CarplayDevice;->getTransport()I

    move-result v0

    invoke-static {p2, v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2502(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 752
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2, v1, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;ZLcom/autochips/carplay/CarplayDevice;)V

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "carplay_onConnectionStateChanged connected,after mPreConnectedDevice:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mPreConnectedDeviceTransport:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 758
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storeCarPlayDeviceId(Ljava/lang/String;)V

    .line 759
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result p1

    invoke-static {p1}, Lcom/yftech/transfer/service/utils/SettingsUtil;->storeCarPlayDeviceTransport(I)V

    .line 760
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p1

    const-string p2, "carplay"

    .line 761
    invoke-static {p2, p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 762
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->isA58G()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 763
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string p2, "easyconn"

    invoke-virtual {p1, p2}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 765
    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 766
    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    .line 770
    :cond_3
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->phoneLinkChanged()V

    .line 771
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarLocationManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarLocationManager;->refreshGpsInfo()V

    .line 772
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    new-instance p2, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$1;

    invoke-direct {p2, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$1;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;)V

    const-wide/16 v0, 0x320

    invoke-static {p2, v0, v1}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_3

    .line 790
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carplay_onConnectionStateChanged disconnected,mPreConnectedDevice:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreConnectedDeviceTransport:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 791
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    goto/16 :goto_4

    .line 793
    :cond_5
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    .line 794
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carplay_onConnectionStateChanged disconnected preDeviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",carpDeviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 797
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 798
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 v2, 0x0

    invoke-static {p2, v2, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;ZLcom/autochips/carplay/CarplayDevice;)V

    .line 799
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 800
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_6
    const-string p1, "music_disconnect_status"

    .line 801
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isMusicOn()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putInt(Ljava/lang/String;I)V

    .line 802
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1, v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2802(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 805
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result p1

    if-ne v1, p1, :cond_c

    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 807
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    .line 808
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0xbfc2db6

    if-eq v3, v4, :cond_a

    const v1, 0xc0ab996

    if-eq v3, v1, :cond_9

    const v1, 0x4d080eb8    # 1.42666624E8f

    if-eq v3, v1, :cond_8

    const v1, 0x798d1bf7

    if-eq v3, v1, :cond_7

    goto :goto_0

    :cond_7
    const-string v1, "CB_IHU23"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1

    :cond_8
    const-string v0, "CBIHU12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_1

    :cond_9
    const-string v0, "CB_IHU23_C1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 v0, 0x3

    goto :goto_1

    :cond_a
    const-string v0, "CB_IHU12_C1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    :goto_0
    move v0, p2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 813
    :pswitch_0
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->isCarplayCertificateStatus()Z

    move-result p1

    if-nez p1, :cond_c

    .line 816
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autochips/carplay/CarplayManager;->forget(Lcom/autochips/carplay/CarplayDevice;)I

    const-string p1, "onConnectionStateChanged disconnected forget"

    .line 817
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 823
    :cond_c
    :goto_2
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->ins:Lcom/yftech/transfer/phonelink/manager/BlueToothManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/BlueToothManager;->setBluetoothEnable()Z

    .line 826
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->closeScreenBrightnessTransient()V

    .line 827
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;

    .line 828
    invoke-static {p2}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V

    .line 829
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1, v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2102(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 830
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onCallStatusChanged(I)V

    .line 831
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1, v2}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    .line 832
    sget-object p1, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/utils/CarPlayUtils;->unbindCarPlayApp(Landroid/content/Context;)V

    .line 833
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 834
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1, v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$002(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    .line 835
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1, v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2902(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Z)Z

    .line 836
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p0

    const-string p1, "carplay"

    .line 837
    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 838
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->phoneLinkChanged()V

    :cond_d
    :goto_3
    return-void

    :cond_e
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceAdded(Lcom/autochips/carplay/CarplayDevice;)V
    .locals 2

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDeviceAdded() device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 997
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p0

    const-string p1, "carplay"

    .line 998
    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/autochips/carplay/CarplayDevice;I)V
    .locals 2

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDeviceBondStateChanged() device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1012
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p0

    const-string p1, "carplay"

    .line 1013
    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDeviceCarplaySettingEnabled(Z)V
    .locals 3

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onDeviceCarplaySettingEnabled:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1081
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object p0

    .line 1082
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xbfc2db6

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const v1, 0x4d080eb8    # 1.42666624E8f

    if-eq v0, v1, :cond_1

    const v1, 0x75ffad83

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CA1105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v0, "CBIHU12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "CB_IHU12_C1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v2, :cond_4

    if-nez p1, :cond_5

    const-string p0, "carplay"

    const/16 p1, 0x2710

    .line 1089
    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedFail(Ljava/lang/String;I)V

    const-string p0, "carplay"

    .line 1090
    new-instance v0, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {v0}, Lcom/yftech/car/phonelink/CarLinkDevice;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedFailWithDevice(Ljava/lang/String;ILcom/yftech/car/phonelink/CarLinkDevice;)V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    const-string p0, "carplay"

    const/4 p1, 0x1

    .line 1096
    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedFail(Ljava/lang/String;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onDeviceConnectFail(Lcom/autochips/carplay/CarplayDevice;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2002(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDeviceConnectFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1049
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_8

    const/4 v1, -0x1

    .line 1053
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0xbfc2db6

    if-eq v4, v5, :cond_6

    const v3, 0xc0ab996

    if-eq v4, v3, :cond_5

    const v3, 0x4d080eb8    # 1.42666624E8f

    if-eq v4, v3, :cond_4

    const v2, 0x798d1bf7

    if-eq v4, v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "CB_IHU23"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    goto :goto_3

    :cond_4
    const-string v3, "CBIHU12"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_5
    const-string v2, "CB_IHU23_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    goto :goto_3

    :cond_6
    const-string v2, "CB_IHU12_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v2, v1

    :goto_3
    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 1058
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$702(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;

    .line 1059
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.yftech.intent.action.ap.dialog.show"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.yftech.settings"

    .line 1060
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    sget-object p1, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_8
    :goto_4
    const-string v1, "carplay"

    .line 1065
    invoke-static {v1, p2}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedFail(Ljava/lang/String;I)V

    .line 1066
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 1067
    new-instance v1, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {v1}, Lcom/yftech/car/phonelink/CarLinkDevice;-><init>()V

    .line 1068
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$3100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1069
    invoke-virtual {v1, p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceId(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v1, p0}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceName(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v1, p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setMacAddress(Ljava/lang/String;)V

    const-string p0, "carplay"

    .line 1072
    invoke-static {p0, p2, v1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedFailWithDevice(Ljava/lang/String;ILcom/yftech/car/phonelink/CarLinkDevice;)V

    const-string p0, "CA1105"

    .line 1073
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1074
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->resetUsb()V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceDeleted(Lcom/autochips/carplay/CarplayDevice;)V
    .locals 2

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v1, v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onDeviceDeleted() device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1005
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p0

    const-string p1, "carplay"

    .line 1006
    invoke-static {p1, p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDeviceListUpdate()V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object v0

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onDeviceListUpdate:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p0, "carplay"

    .line 1028
    invoke-static {p0, v0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDeviceUpdate(Lcom/autochips/carplay/CarplayDevice;)V
    .locals 1

    .line 1018
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p1

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onDeviceUpdate:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string p0, "carplay"

    .line 1020
    invoke-static {p0, p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCarLinkDeviceListChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onEnableStateChanged(II)V
    .locals 8

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnableStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 p1, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_4

    const-string v4, "isCancelAutoShow"

    .line 523
    invoke-static {v4}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEnableStateChanged STATE_ON setResult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-ne v2, v4, :cond_0

    .line 526
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {v4}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->cancelAutoShow()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "isCancelAutoShow"

    .line 528
    invoke-static {v4, v3}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putInt(Ljava/lang/String;I)V

    .line 530
    :cond_0
    sget-object v4, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v4}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v4

    .line 531
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x75ffad83

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "CA1105"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 533
    :cond_3
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object v0

    .line 534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v5, v5, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onEnableStateChanged STATE_ON phoneLinkByType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0}, Lcom/yftech/car/phonelink/PhoneLink;->getType()I

    move-result v0

    if-ne v2, v0, :cond_a

    .line 536
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->resetUsb()V

    goto/16 :goto_2

    :cond_4
    if-nez p2, :cond_a

    .line 541
    sget-object v4, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {v4}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getPowerState()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    move-result-object v4

    .line 542
    sget-object v5, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v5}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v5

    .line 544
    iget-object v6, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v6}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1800(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayManager$CarplayCallback;

    move-result-object v6

    iget-object v7, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v7}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1700(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lcom/autochips/carplay/CarplayManager$CarplayCallback;->onConnectionStateChanged(Lcom/autochips/carplay/CarplayDevice;I)V

    .line 545
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0xbfc2db6

    if-eq v6, v7, :cond_8

    const v7, 0xc0ab996

    if-eq v6, v7, :cond_7

    const v7, 0x4d080eb8    # 1.42666624E8f

    if-eq v6, v7, :cond_6

    const v7, 0x798d1bf7

    if-eq v6, v7, :cond_5

    goto :goto_1

    :cond_5
    const-string v6, "CB_IHU23"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v3

    goto :goto_1

    :cond_6
    const-string v6, "CBIHU12"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v2

    goto :goto_1

    :cond_7
    const-string v6, "CB_IHU23_C1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, p1

    goto :goto_1

    :cond_8
    const-string v6, "CB_IHU12_C1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v1

    :cond_9
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 550
    :pswitch_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;->SYSTEMON:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;

    if-eq v4, v0, :cond_a

    const/4 v0, 0x0

    .line 551
    invoke-static {v3, v0}, Lcom/utils/WIfiUtils;->setApEnable(ZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 556
    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnableStateChanged mLastEnableStatus:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v4}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eq p2, p1, :cond_e

    if-eq p2, v2, :cond_e

    if-ne p2, v1, :cond_b

    goto :goto_3

    :cond_b
    move v2, v3

    .line 560
    :goto_3
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-ne p1, v2, :cond_c

    return-void

    .line 562
    :cond_c
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1900(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 563
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->enable()I

    goto :goto_4

    .line 565
    :cond_d
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/carplay/CarplayManager;->disable()I

    :cond_e
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onFirstConnectRequest(Lcom/autochips/carplay/CarplayDevice;)V
    .locals 4

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFirstConnectRequest device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 585
    :cond_0
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 586
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "CB_IHU23"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "CA1105"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "CBIHU12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "CB_IHU23_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "CB_IHU12_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 598
    :pswitch_0
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getTransport()I

    move-result v0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstConnectRequest transport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-ne v0, v3, :cond_2

    .line 602
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->confirmFirstConnect(Lcom/autochips/carplay/CarplayDevice;)I

    return-void

    .line 605
    :cond_2
    invoke-static {}, Lcom/utils/CarPlayUtils;->isCarplayCertificateOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 608
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 609
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->confirmFirstConnect(Lcom/autochips/carplay/CarplayDevice;)I

    return-void

    .line 614
    :cond_3
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 615
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFirstConnectRequest deviceName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 619
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 621
    :cond_4
    new-instance v0, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {v0}, Lcom/yftech/car/phonelink/CarLinkDevice;-><init>()V

    const-string v1, "carplay"

    .line 622
    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setPhoneType(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0, p0}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceName(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceId(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setMacAddress(Ljava/lang/String;)V

    .line 626
    invoke-static {v0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendShowCarplayConfirmFirstConnectDialog(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    goto :goto_1

    .line 589
    :pswitch_1
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getIOSPriorityLink()Ljava/lang/String;

    move-result-object p0

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFirstConnectRequest iosLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "carplay"

    .line 591
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 592
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/autochips/carplay/CarplayManager;->confirmFirstConnect(Lcom/autochips/carplay/CarplayDevice;)I

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xbfc2db6 -> :sswitch_4
        0xc0ab996 -> :sswitch_3
        0x4d080eb8 -> :sswitch_2
        0x75ffad83 -> :sswitch_1
        0x798d1bf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPlaybackStatusChanged(Lcom/autochips/carplay/CarplayDevice;Lcom/autochips/carplay/PlaybackStatusInfo;)V
    .locals 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 705
    :cond_0
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 709
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->isPlaybackStatusValid()Z

    move-result v1

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v3, v3, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "isPlaybackStatusValid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->getPlaybackStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2302(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 714
    :cond_2
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isMusicOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setIsPlaying(I)V

    const/4 v1, 0x1

    .line 715
    invoke-virtual {v0, p1, v1}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 716
    invoke-virtual {v0, p1, v2}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->isTrackMsOffsetValid()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 718
    invoke-virtual {v0, p1}, Lcom/autochips/carplay/CarplayManager;->getPlayingStatus(Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayPlaybackStatus;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 720
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackLen()I

    move-result p2

    .line 721
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackPos()I

    move-result p1

    .line 722
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setProgress(J)V

    .line 723
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object p1

    int-to-long v3, p2

    invoke-virtual {p1, v3, v4}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setDuration(J)V

    .line 726
    :cond_3
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setSong(Ljava/lang/String;)V

    .line 727
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setArtist(Ljava/lang/String;)V

    .line 728
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 730
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPlaybackStatusChanged,error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onRequestAccessoryUI(I)V
    .locals 2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestAccessoryUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 516
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->cancelAutoShow()I

    :cond_0
    return-void
.end method

.method public onSecondDeviceAvailable(Lcom/autochips/carplay/CarplayDevice;)V
    .locals 1

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onSecondDeviceAvailable carplayDevice:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1036
    :cond_0
    new-instance p0, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarLinkDevice;-><init>()V

    .line 1037
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceId(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/phonelink/CarLinkDevice;->setDeviceName(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->setMacAddress(Ljava/lang/String;)V

    .line 1040
    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendSecondDeviceAvailable(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method public onStreamStateChanged(III)V
    .locals 7

    .line 847
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object v0, v0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    const/16 v1, 0x29

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0x66

    if-eq p1, v0, :cond_9

    const/16 v0, 0x6a

    if-eq p1, v0, :cond_3

    const/16 p2, 0x6e

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    .line 850
    :cond_0
    invoke-static {}, Lcom/yftech/transfer/service/CarTransferApplication;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$100(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 851
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->ins:Lcom/yftech/transfer/phonelink/manager/CarControlManager;

    invoke-virtual {p1}, Lcom/yftech/transfer/phonelink/manager/CarControlManager;->getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p1

    .line 852
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p2, p2, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreamStateChanged gearPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p2, p1, :cond_1

    return-void

    .line 856
    :cond_1
    invoke-static {}, Lcom/autochips/carplay/CarplayManager;->getDefaultManager()Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayManager;->getResourceState()Lcom/autochips/carplay/CarplayResourceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result p1

    .line 857
    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p2, p2, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreamStateChanged mainScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p3, v5, :cond_2

    if-ne p1, v5, :cond_2

    .line 859
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$1600(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)V

    .line 862
    :cond_2
    new-instance p0, Lcom/yftech/car/phonelink/CarLinkDevice;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarLinkDevice;-><init>()V

    const-string p1, "carplay"

    const/16 p2, 0x2711

    .line 863
    invoke-static {p1, p2, p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendConnectedFailWithDevice(Ljava/lang/String;ILcom/yftech/car/phonelink/CarLinkDevice;)V

    goto/16 :goto_2

    :cond_3
    if-eq p2, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    if-nez p3, :cond_8

    .line 938
    invoke-static {}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->isAvmShow()Z

    move-result p1

    .line 939
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStreamStateChanged vrauxon isAvm:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 941
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->closeVR()V

    return-void

    .line 944
    :cond_5
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->vrAuxTimerD:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_6

    .line 945
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->vrAuxTimerD:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 948
    :cond_6
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->isCarplayCertificateStatus()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 950
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$3000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p2

    const/16 p3, 0x1a

    invoke-virtual {p1, p2, p3, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    const-string p2, "onStreamStateChanged vrauxon request STREAM_VOICE"

    .line 952
    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string p1, "onStreamStateChanged vrauxon request STREAM_VOICE_CARPLAY"

    .line 954
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 955
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$3000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    .line 958
    sget-object p2, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/utils/CarPlayUtils;->launchApp(Landroid/content/Context;)V

    .line 960
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStreamStateChanged vrauxon requestVrFocus:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 961
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1, v5}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    .line 964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStreamStateChanged vrauxon isCarplayDisplay:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 965
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 966
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->pauseForResume()V

    goto/16 :goto_2

    :cond_8
    if-ne p3, v5, :cond_13

    const-string p1, "onStreamStateChanged vrauxoff"

    .line 969
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 972
    new-instance p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$3;

    invoke-direct {p1, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$3;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;)V

    invoke-static {p1, v2, v3}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->vrAuxTimerD:Lio/reactivex/disposables/Disposable;

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStreamStateChanged vrauxoff isCarplayDisplay:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 982
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 983
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->resume()V

    goto/16 :goto_2

    .line 866
    :cond_9
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2502(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 867
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStreamStateChanged setTransport mPreConnectedDeviceTransport:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 870
    :cond_a
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1, v5}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2502(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;I)I

    .line 871
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    iget-object p1, p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStreamStateChanged setTransport mPreConnectedDeviceTransport:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {v6}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-eq p2, p1, :cond_10

    if-eq p2, v4, :cond_b

    goto/16 :goto_2

    :cond_b
    if-nez p3, :cond_f

    .line 889
    invoke-static {}, Lcom/yftech/transfer/phonelink/receiver/AvmserviceReceiver;->isAvmShow()Z

    move-result p1

    .line 890
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStreamStateChanged vron isAvm:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 892
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->closeVR()V

    return-void

    .line 895
    :cond_c
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->vrTimerD:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_d

    .line 896
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->vrTimerD:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 897
    :cond_d
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$500(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    .line 898
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStreamStateChanged vron requestVrFocus:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 899
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1, v5}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    .line 902
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStreamStateChanged vron isCarplayDisplay:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 903
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 904
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->pauseForResume()V

    .line 906
    :cond_e
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->isCarplayCertificateStatus()Z

    move-result p0

    if-nez p0, :cond_13

    .line 909
    sget-object p0, Lcom/yftech/transfer/service/CarTransferApplication;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/utils/CarPlayUtils;->launchApp(Landroid/content/Context;)V

    goto :goto_2

    :cond_f
    if-ne p3, v5, :cond_13

    const-string p1, "onStreamStateChanged vroff"

    .line 911
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 914
    new-instance p1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$2;

    invoke-direct {p1, p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11$2;-><init>(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;)V

    invoke-static {p1, v2, v3}, Lcom/yftech/transfer/service/utils/AppUtil;->atTime(Lio/reactivex/functions/Consumer;J)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->vrTimerD:Lio/reactivex/disposables/Disposable;

    .line 923
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStreamStateChanged vroff ui_show:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 924
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$000(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 925
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->resume()V

    goto :goto_2

    :cond_10
    if-nez p3, :cond_11

    const-string p1, "onStreamStateChanged music on"

    .line 876
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    if-ne p3, v5, :cond_12

    const-string p1, "onStreamStateChanged music stop"

    .line 878
    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 880
    :cond_12
    :goto_1
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p2}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isMusicOn()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setIsPlaying(I)V

    .line 881
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->access$2400(Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;)Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V

    const-string p1, "music_disconnect_status"

    .line 882
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper$11;->this$0:Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;->isMusicOn()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/transfer/service/utils/SettingsUtil;->putInt(Ljava/lang/String;I)V

    :cond_13
    :goto_2
    return-void
.end method
