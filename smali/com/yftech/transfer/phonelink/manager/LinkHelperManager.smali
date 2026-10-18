.class public Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;
.super Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;
.source "LinkHelperManager.java"


# static fields
.field public static final ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;


# instance fields
.field private mNoneLinkHelper:Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 30
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mNoneLinkHelper:Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;

    .line 31
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->isA58G()Z

    move-result v0

    .line 32
    sget-object v2, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->isA79G()Z

    move-result v2

    if-nez v0, :cond_5

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    const-string v2, "carlife"

    new-instance v3, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;

    invoke-direct {v3}, Lcom/yftech/transfer/phonelink/helper/CarLifeLinkHelper;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->getCurProductDevice()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xc0ab996

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v2, v3, :cond_2

    const v3, 0x798d1bf7

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "CB_IHU23"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_2
    const-string v2, "CB_IHU23_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v6

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 48
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    const-string v3, "hicar"

    new-instance v7, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;

    invoke-direct {v7}, Lcom/yftech/transfer/phonelink/helper/HiCarLinkHelper;-><init>()V

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 45
    :pswitch_0
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    const-string v3, "hicar"

    new-instance v7, Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;

    invoke-direct {v7}, Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;-><init>()V

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v1, "CB_IHU23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_1
    const-string v1, "CA1105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v4

    goto :goto_4

    :sswitch_2
    const-string v1, "CBIHU12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_4

    :sswitch_3
    const-string v2, "CB_IHU23_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :sswitch_4
    const-string v1, "CB_IHU12_C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v5

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v6

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 63
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    const-string v0, "carplay"

    new-instance v1, Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;

    invoke-direct {v1}, Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 60
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    const-string v0, "carplay"

    new-instance v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 56
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    const-string v0, "carplay"

    new-instance v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void

    .line 34
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    const-string v1, "easyconn"

    new-instance v2, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;

    invoke-direct {v2}, Lcom/yftech/transfer/phonelink/helper/EaseConnLinkHelper;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    const-string v0, "carplay"

    new-instance v1, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;

    invoke-direct {v1}, Lcom/yftech/transfer/phonelink/helper/CarPlayLinkHelper;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xbfc2db6 -> :sswitch_4
        0xc0ab996 -> :sswitch_3
        0x4d080eb8 -> :sswitch_2
        0x75ffad83 -> :sswitch_1
        0x798d1bf7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public closeVR()V
    .locals 7

    .line 263
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v1, "closeVR()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 265
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 267
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 269
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v3

    .line 270
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeVR kezy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",connected:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->getVRStatus()I

    move-result v2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeVR vrStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 275
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->closeVR()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public connectByUsb(Ljava/lang/String;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->connectByUsb()V

    return-void
.end method

.method public connectByWireless(Ljava/lang/String;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->connectByWireless()V

    return-void
.end method

.method public connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectCarLinkDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getPhoneType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p0, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->connectCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method public disConnect()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v1, "disConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 299
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 302
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public disConnect(Ljava/lang/String;)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    return-void
.end method

.method public disable()V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v1, "phonelinkprog disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 187
    iget-object v3, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phonelinkprog key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",disable"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v1, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v0, "-------------------------"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableOtherPhoneLink()V
    .locals 8

    .line 134
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v1, "phonelinkprog disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v4

    .line 144
    iget-object v5, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phonelinkprog disable key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",is phonelinkOn:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v2, v3}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->disconnect()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public enable()V
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v1, "phonelinkprog enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 161
    iget-object v3, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phonelinkprog key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v3, "phonelinkprog enable:true\n"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 163
    invoke-virtual {v1, v2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->enable(Z)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v0, "-------------------------"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forgetCarLinkDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/CarLinkDevice;->getPhoneType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->forgetCarLinkDevice(Lcom/yftech/car/phonelink/CarLinkDevice;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p1, :cond_0

    .line 80
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->mNoneLinkHelper:Lcom/yftech/transfer/phonelink/helper/NoneLinkHelper;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getAvailableCarLinkDeviceList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableCarLinkDeviceList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p0, :cond_0

    .line 362
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->getAvailableCarLinkDeviceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCarLinkDeviceList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/car/phonelink/CarLinkDevice;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarLinkDeviceList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p0, :cond_0

    .line 346
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->getCarLinkDeviceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedLinkStatus()Ljava/lang/String;
    .locals 2

    .line 324
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 325
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 328
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->linkName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "none"

    return-object p0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 2

    .line 169
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 170
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 173
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->getPhoneName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 91
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 94
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mute(Z)V
    .locals 7

    .line 197
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 203
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v3

    .line 204
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mute key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",connected:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v1, p1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->mute(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 7

    .line 215
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 221
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v3

    .line 222
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pause key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",connected:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->pause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pauseForResume()V
    .locals 7

    .line 232
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v1, "pauseForResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 234
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 238
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v3

    .line 239
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseForResume key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",connected:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->pauseForResume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 7

    .line 249
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    const-string v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 251
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 255
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->isConnected()Z

    move-result v3

    .line 256
    iget-object v4, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resume key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",connected:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v1}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->resume()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startPage(Ljava/lang/String;I)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    if-nez p0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->startPage(I)V

    return-void
.end method

.method public uninit()V
    .locals 1

    .line 393
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 394
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;

    .line 397
    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/helper/BasicLinkHelper;->uninit()V

    goto :goto_0

    :cond_0
    return-void
.end method
