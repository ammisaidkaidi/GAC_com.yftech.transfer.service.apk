.class public Lcom/yftech/transfer/phonelink/productdevice/BaiduCBIHU12Helper;
.super Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;
.source "BaiduCBIHU12Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;-><init>()V

    return-void
.end method


# virtual methods
.method public usbAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;->usbAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbAttached  pre curPhoneType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/transfer/phonelink/productdevice/BaiduCBIHU12Helper;->curPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->ins:Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/yftech/transfer/phonelink/manager/UsbLinkManager;->getBaiduPhoneType(Landroid/hardware/usb/UsbDevice;Z)I

    move-result p1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached  newType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne v0, p1, :cond_1

    return-void

    .line 31
    :cond_1
    iput p1, p0, Lcom/yftech/transfer/phonelink/productdevice/BaiduCBIHU12Helper;->curPhoneType:I

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached  now curPhoneType:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/transfer/phonelink/productdevice/BaiduCBIHU12Helper;->curPhoneType:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BaiduCBIHU12Helper;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object p0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached phoneLink:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/yftech/transfer/service/utils/SettingsUtil;->getHuaWeiPhoneLinkPicked()Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usbAttached hwpicked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/yftech/car/phonelink/PhoneLink;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eqz p1, :cond_7

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x5eac733

    if-eq v2, v4, :cond_5

    const v4, 0x210824d0

    if-eq v2, v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "carlife"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v2, "hicar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v3

    :cond_6
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 52
    :pswitch_0
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 53
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 48
    :pswitch_1
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 49
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_2

    .line 42
    :cond_7
    :goto_1
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 43
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "hicar"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 44
    invoke-static {}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendShowHuaWeiConnectedDialog()V

    goto :goto_2

    .line 59
    :cond_8
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    const-string v0, "carlife"

    invoke-virtual {p1, v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    .line 62
    :goto_2
    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendDeviceChangedCallBack(Lcom/yftech/car/phonelink/PhoneLink;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
