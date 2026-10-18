.class public Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;
.super Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;
.source "ProductDeviceManager.java"


# static fields
.field public static final PRODUCT_CA1105:Ljava/lang/String; = "CA1105"

.field public static final PRODUCT_CBIHU12:Ljava/lang/String; = "CBIHU12"

.field public static final PRODUCT_CB_IHU12_C1:Ljava/lang/String; = "CB_IHU12_C1"

.field public static final PRODUCT_CB_IHU19:Ljava/lang/String; = "CB_IHU19"

.field public static final PRODUCT_CB_IHU23:Ljava/lang/String; = "CB_IHU23"

.field public static final PRODUCT_CB_IHU23_C1:Ljava/lang/String; = "CB_IHU23_C1"

.field public static final ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;


# instance fields
.field private final curProductDevice:Ljava/lang/String;

.field private targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/yftech/transfer/phonelink/manager/interf/BasicManager;-><init>()V

    .line 48
    invoke-static {}, Lcom/yftech/transfer/service/utils/SystemPropertiesUtil;->getProductDevice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProductDeviceManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->isA58G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/productdevice/A58GHelper;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->isA79G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/A79GHelper;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/productdevice/A79GHelper;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "CB_IHU23"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "CA1105"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "CBIHU12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "CB_IHU23_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "CB_IHU12_C1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 70
    :pswitch_0
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12C1Helper;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12C1Helper;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    goto :goto_1

    .line 76
    :pswitch_1
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23C1Helper;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    goto :goto_1

    .line 73
    :pswitch_2
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU23Helper;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    goto :goto_1

    .line 66
    :pswitch_3
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/productdevice/CBIHU12Helper;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    goto :goto_1

    .line 63
    :pswitch_4
    new-instance v0, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;

    invoke-direct {v0}, Lcom/yftech/transfer/phonelink/productdevice/CA1105Helper;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    :goto_1
    return-void

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
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public disablePhoneLink()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablePhoneLink,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->disablePhoneLink()V

    return-void
.end method

.method public enablePhoneLink()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePhoneLink,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->enablePhoneLink()V

    return-void
.end method

.method public getAndroidPriorityLink()Ljava/lang/String;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndroidPriorityLink,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->getAndroidPriorityLink()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurProductDevice()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    return-object p0
.end method

.method public getIOSPriorityLink()Ljava/lang/String;
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIOSPriorityLink,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->getIOSPriorityLink()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneLinkByType,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    .line 140
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "none"

    .line 141
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLink;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/yftech/car/phonelink/PhoneLink;-><init>(ILjava/util/ArrayList;)V

    return-object v0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->getPhoneLinkByType()Lcom/yftech/car/phonelink/PhoneLink;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->init()V

    return-void
.end method

.method public isA58G()Z
    .locals 2

    const-string p0, "ro.build.display.id"

    const-string v0, ""

    .line 311
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA58G displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v0, "A58_G"

    .line 313
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isA79G()Z
    .locals 2

    const-string p0, "ro.build.display.id"

    const-string v0, ""

    .line 317
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA79G displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v0, "A79_G"

    .line 319
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAvm()Z
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvm,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->isAvm()Z

    move-result p0

    return p0
.end method

.method public isCA1105()Z
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isC1105,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CA1105"

    .line 254
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isGACLogoPresent()Z
    .locals 3

    .line 323
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isGACLogoPresent()Z

    move-result v0

    .line 324
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGACLogoPresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isPhoneLinkEnable()Z
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneLinkEnable,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->isPhoneLinkEnable()Z

    move-result p0

    return p0
.end method

.method public isPowerStandBy()Z
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPowerStandBy,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->isPowerStandBy()Z

    move-result p0

    return p0
.end method

.method public onCallStatusChanged(I)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStatusChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 235
    invoke-static {p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendCallStatusChanged(I)V

    return-void
.end method

.method public onVRStatusChanged(I)V
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVRStatusChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 230
    invoke-static {p1}, Lcom/yftech/transfer/phonelink/CarPhoneLinkService;->sendVRStatusChanged(I)V

    return-void
.end method

.method public phoneLinkChanged()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneLinkChanged,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->phoneLinkChanged()V

    return-void
.end method

.method public pickAndroidPriorityLink(Ljava/lang/String;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickAndroidPriorityLink,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->pickAndroidPriorityLink(Ljava/lang/String;)V

    return-void
.end method

.method public pickCarLifeWhenHuaWei()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickCarLifeWhenHuaWei,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->pickCarLifeWhenHuaWei()V

    return-void
.end method

.method public pickHiCarWhenHuaWei()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickHiCarWhenHuaWei,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->pickHiCarWhenHuaWei()V

    return-void
.end method

.method public pickIOSPriorityLink(Ljava/lang/String;)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickIOSPriorityLink,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->pickIOSPriorityLink(Ljava/lang/String;)V

    return-void
.end method

.method public resetUsb()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUsb,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->resetUsb()V

    return-void
.end method

.method public shouldPhoneLinkDisableUsb2()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldDisableUsb2 curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CBIHU12"

    .line 111
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startPriorityLinkAction()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickIOSPriorityLink,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->startPriorityLinkAction()V

    return-void
.end method

.method public storeCarLifeWhenHuaWei()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xbfc2db6

    if-eq v1, v2, :cond_2

    const v2, 0x4d080eb8    # 1.42666624E8f

    if-eq v1, v2, :cond_1

    const v2, 0x75ffad83

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CA1105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "CBIHU12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "CB_IHU12_C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 305
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->pickCarLifeWhenHuaWei()V

    :cond_4
    return-void
.end method

.method public storeHiCarWhenHuaWei()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xbfc2db6

    if-eq v1, v2, :cond_2

    const v2, 0x4d080eb8    # 1.42666624E8f

    if-eq v1, v2, :cond_1

    const v2, 0x75ffad83

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CA1105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "CBIHU12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "CB_IHU12_C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 289
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->pickHiCarWhenHuaWei()V

    :cond_4
    return-void
.end method

.method public uninit()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninit,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->uninit()V

    return-void
.end method

.method public usbAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbAttached,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->usbAttached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public usbDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usbDetached,curProductDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->curProductDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->targetDevice:Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/productdevice/BasicProductDevice;->usbDetached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
