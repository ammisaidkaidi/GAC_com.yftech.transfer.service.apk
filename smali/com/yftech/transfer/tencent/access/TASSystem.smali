.class public Lcom/yftech/transfer/tencent/access/TASSystem;
.super Ljava/lang/Object;
.source "TASSystem.java"

# interfaces
.implements Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;


# static fields
.field public static final APP_ID:Ljava/lang/String; = "26f1cbd9ce4d285cc7855d615d436523065b2cd7"

.field public static final APP_TOKEN:Ljava/lang/String; = "574aa5ffc6334503be923d6e3e4f9ac5"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "TASSystem"

.field private static WAKEUPWORDS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field private static mThis:Lcom/yftech/transfer/tencent/access/TASSystem;

.field private static mediaCtlAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecarspeech/sdk/model/ThirdApp;",
            ">;"
        }
    .end annotation
.end field

.field private static openAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wecarspeech/sdk/model/ThirdApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/yftech/transfer/tencent/access/TASSystem$1;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/TASSystem$1;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->WAKEUPWORDS:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    .line 43
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "com.yftech.settings0"

    const-string v3, "\u8bbe\u7f6e"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "com.yftech.settings1"

    const-string v3, "\u8f66\u8f86\u8bbe\u7f6e"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "com.beantechs.personalcenter"

    const-string v3, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "com.yftech.btphone"

    const-string v3, "\u84dd\u7259\u7535\u8bdd"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "yf.car.music.action.start&1"

    const-string v3, "\u84dd\u7259\u97f3\u4e50"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "yf.car.music.action.start&3"

    const-string v3, "USB\u89c6\u9891"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "yf.car.music.action.start&2"

    const-string v3, "USB\u97f3\u4e50"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "com.yftech.dvr"

    const-string v3, "\u884c\u8f66\u8bb0\u5f55"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "com.tencent.wecarflow"

    const-string v3, "\u4e3b\u754c\u9762"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "com.yftech.avmservice"

    const-string v3, "\u73af\u89c6"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "yf.car.music.action.start&0"

    const-string v3, "\u6536\u97f3\u673a"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "yf.car.music.action.start&3"

    const-string v3, "\u89c6\u9891"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->mediaCtlAppList:Ljava/util/ArrayList;

    .line 61
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->mediaCtlAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "yf.car.music.action.start&1"

    const-string v3, "\u84dd\u7259\u97f3\u4e50"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->mediaCtlAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "yf.car.music.action.start&3"

    const-string v3, "USB\u89c6\u9891"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->mediaCtlAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "yf.car.music.action.start&0"

    const-string v3, "\u6536\u97f3\u673a"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->mediaCtlAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;

    const-string v2, "com.beantechs.personalcenter"

    const-string v3, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-direct {v1, v2, v3}, Lcom/tencent/wecarspeech/sdk/model/ThirdApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/yftech/transfer/tencent/access/TASSystem;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/TASSystem;-><init>()V

    sput-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->mThis:Lcom/yftech/transfer/tencent/access/TASSystem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LOGI(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TASSystem"

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "TASSystem init..."

    .line 76
    invoke-static {v0}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    .line 77
    sput-object p0, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    .line 78
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASSystem;->initTASConfigManager(Landroid/content/Context;)V

    return-void
.end method

.method private static initTASConfigManager(Landroid/content/Context;)V
    .locals 3

    .line 82
    new-instance v0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;

    invoke-direct {v0}, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;-><init>()V

    const-string v1, "26f1cbd9ce4d285cc7855d615d436523065b2cd7"

    .line 83
    iput-object v1, v0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appId:Ljava/lang/String;

    const-string v1, "574aa5ffc6334503be923d6e3e4f9ac5"

    .line 84
    iput-object v1, v0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->appToken:Ljava/lang/String;

    .line 85
    sget-object v1, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    const-string v2, "ro.serialno"

    invoke-static {v1, v2}, Lcom/yftech/transfer/service/utils/SystemProperty;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->deviceUniqueId:Ljava/lang/String;

    .line 86
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->storageRootPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, v0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->floatBtnEnabled:Z

    .line 88
    sget-object v1, Lcom/yftech/transfer/tencent/access/TASSystem;->WAKEUPWORDS:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;->wakeupKeywords:Ljava/util/ArrayList;

    .line 89
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;

    move-result-object v1

    sget-object v2, Lcom/yftech/transfer/tencent/access/TASSystem;->mThis:Lcom/yftech/transfer/tencent/access/TASSystem;

    invoke-virtual {v1, p0, v0, v2}, Lcom/tencent/wecarspeech/sdk/manager/SSAConfigManager;->init(Landroid/content/Context;Lcom/tencent/wecarspeech/sdk/model/SSAInitParam;Lcom/tencent/wecarspeech/sdk/listener/SSAInitListener;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    const-string p0, "TASSystem start..."

    .line 97
    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASSystem;->LOGI(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/transfer/tencent/access/TASSystem;->openAppList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;->uploadThirdAppList(Ljava/util/ArrayList;)V

    .line 100
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;

    move-result-object p0

    new-instance v0, Lcom/yftech/transfer/tencent/access/ThirdAppClientImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/ThirdAppClientImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;->setThirdAppClient(Lcom/tencent/wecarspeech/sdk/api/ThirdAppClient;)V

    .line 102
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;

    move-result-object p0

    new-instance v0, Lcom/yftech/transfer/tencent/access/RadioClientImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/RadioClientImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSARadioManager;->setRadioClient(Lcom/tencent/wecarspeech/sdk/api/IRadioClient;)V

    .line 104
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;

    move-result-object p0

    new-instance v0, Lcom/yftech/transfer/tencent/access/MusicClientImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/MusicClientImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMusicManager;->setMusicClient(Lcom/tencent/wecarspeech/sdk/api/IMusicClient;)V

    .line 106
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    move-result-object p0

    new-instance v0, Lcom/yftech/transfer/tencent/access/VideoClientImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/VideoClientImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->setVideoClient(Lcom/tencent/wecarspeech/sdk/api/IVideoClient;)V

    .line 108
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;

    move-result-object p0

    new-instance v0, Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/MediaControlClientImpl;-><init>()V

    sget-object v1, Lcom/yftech/transfer/tencent/access/TASSystem;->mediaCtlAppList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/wecarspeech/sdk/manager/SSAMediaManager;->setMediaControlClient(Lcom/tencent/wecarspeech/sdk/api/IMediaControlClient;Ljava/util/ArrayList;)V

    .line 110
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;

    move-result-object p0

    new-instance v0, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/VehicleControlImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSASystemManager;->addIAsrJsonResultListener(Lcom/tencent/wecarspeech/sdk/api/IAsrJsonResultListener;)V

    .line 111
    invoke-static {}, Lcom/tencent/wecarspeech/sdk/manager/SSAAsrManager;->getInstance()Lcom/tencent/wecarspeech/sdk/manager/SSAAsrManager;

    move-result-object p0

    new-instance v0, Lcom/yftech/transfer/tencent/access/AsrCommand;

    invoke-direct {v0}, Lcom/yftech/transfer/tencent/access/AsrCommand;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/wecarspeech/sdk/manager/SSAAsrManager;->addIAsrCommandListener(Lcom/tencent/wecarspeech/sdk/listener/IAsrCommandListener;)V

    return-void
.end method


# virtual methods
.method public onInit(ILjava/lang/String;)V
    .locals 1

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "on TAS init ,errId:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",resultDesc:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/transfer/service/utils/TLog;->i(Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 125
    sget-object p0, Lcom/yftech/transfer/tencent/access/TASSystem;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/yftech/transfer/tencent/access/TASSystem;->initTASConfigManager(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
