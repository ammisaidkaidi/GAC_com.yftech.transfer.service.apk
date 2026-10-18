.class public Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;
.super Lcom/carlife/client/ICarLifeClientCallbackInterface$Stub;
.source "CarLifeClientCallbackInterfaceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;
    }
.end annotation


# static fields
.field public static final CONNECT_STATUS_CONNECTED:I = 0x2

.field public static final CONNECT_STATUS_CONNECTING:I = 0x1

.field public static final CONNECT_STATUS_DISCONNECT:I

.field private static callStatus:I

.field private static connectStatus:I

.field private static curBrand:Ljava/lang/String;

.field private static listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static vrStatus:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->listeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/carlife/client/ICarLifeClientCallbackInterface$Stub;-><init>()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getCallStatus()I
    .locals 1

    .line 159
    sget v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->callStatus:I

    return v0
.end method

.method public static getConnectStatus()I
    .locals 1

    .line 177
    sget v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->connectStatus:I

    return v0
.end method

.method public static getCurBrand()Ljava/lang/String;
    .locals 1

    .line 150
    sget-object v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->curBrand:Ljava/lang/String;

    return-object v0
.end method

.method public static getVRStatus()I
    .locals 1

    .line 168
    sget v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->vrStatus:I

    return v0
.end method

.method public static registerStatusChangedListener(Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;)V
    .locals 1

    .line 185
    sget-object v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterStatusChangedListener(Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;)V
    .locals 1

    .line 189
    sget-object v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public acitvityStatusNofity(Z)V
    .locals 0

    return-void
.end method

.method public connectStatus(II)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->connectStatus:I

    if-ne v0, p1, :cond_0

    const-string p0, "connectStatus same return"

    .line 40
    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    sput p1, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->connectStatus:I

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->callStatus:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-direct {v0}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    .line 50
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    const-string v1, "carlife"

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setPhoneType(Ljava/lang/String;)V

    .line 53
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V

    .line 54
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->phoneLinkChanged()V

    .line 55
    sget-object p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->listeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub$OnStatusChangedListener;->connectStatus(II)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public mdinfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 146
    sput-object p4, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->curBrand:Ljava/lang/String;

    return-void
.end method

.method public moduleStatusNotify(II)V
    .locals 3

    .line 102
    sget-object v0, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->ins:Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;

    invoke-virtual {v0}, Lcom/yftech/transfer/phonelink/manager/LinkHelperManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moduleStatusNotify,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "carlife"

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    sput v0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->vrStatus:I

    .line 128
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p0, v0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    goto :goto_0

    .line 123
    :pswitch_1
    sput p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->vrStatus:I

    .line 124
    sget-object p1, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    invoke-virtual {p1, p0}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    .line 131
    :goto_0
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    sget p1, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->vrStatus:I

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onVRStatusChanged(I)V

    goto :goto_2

    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    const/4 p0, 0x3

    .line 115
    sput p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->callStatus:I

    goto :goto_1

    .line 110
    :pswitch_3
    sput p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->callStatus:I

    .line 118
    :goto_1
    sget-object p0, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->ins:Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;

    sget p1, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->callStatus:I

    invoke-virtual {p0, p1}, Lcom/yftech/transfer/phonelink/manager/ProductDeviceManager;->onCallStatusChanged(I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public musicID3Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 84
    iget-object p5, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    if-nez p5, :cond_0

    .line 85
    new-instance p5, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-direct {p5}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;-><init>()V

    iput-object p5, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    .line 86
    iget-object p5, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    const-string v0, "carlife"

    invoke-virtual {p5, v0}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setPhoneType(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object p5, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-virtual {p5, p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setSong(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-virtual {p1, p2}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setArtist(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-virtual {p1, p3}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setAlbum(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setDuration(J)V

    .line 92
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V

    return-void
.end method

.method public musicProgressBar(I)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-direct {v0}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    .line 76
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    const-string v1, "carlife"

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setPhoneType(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setProgress(J)V

    .line 79
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V

    return-void
.end method

.method public musicStatus(I)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-direct {v0}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    .line 65
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    const-string v1, "carlife"

    invoke-virtual {v0, v1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setPhoneType(Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-virtual {v0, p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->setIsPlaying(I)V

    .line 68
    iget-object p0, p0, Lcom/yftech/transfer/phonelink/stub/CarLifeClientCallbackInterfaceStub;->info:Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;

    invoke-static {p0}, Lcom/yftech/transfer/phonelink/CarPhoneLinkMediaService;->sendMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V

    return-void
.end method

.method public naviTBTInfo(IILjava/lang/String;II)V
    .locals 1

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "naviTBTInfo:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/utils/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
