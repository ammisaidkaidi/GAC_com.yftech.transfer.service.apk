.class public Lcom/tencent/wecarbase/messagecenter/EventReceiver;
.super Ljava/lang/Object;
.source "EventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/tencent/wecarbase/messagecenter/EventReceiver;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDynamicReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;

.field private mSimpleEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarbase/client/SimpleEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    invoke-direct {v0}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;-><init>()V

    sput-object v0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->INSTANCE:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->TAG:Ljava/lang/String;

    .line 570
    new-instance v0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;

    invoke-direct {v0}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mDynamicReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mSimpleEventListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wecarbase/messagecenter/EventReceiver;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mSimpleEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handlePushEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleQQBind(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleQQUnbind(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleQQUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleRomBroadCastRecv(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleAppBroadCastRecv(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleAuthResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleWeCarIdRegistered(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleWeCarIdChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleWXBind(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleWXUnbind(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleWXUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleFeedBackCenterOpenOrClose(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->handleWXBindActivityOpenOrClose(Landroid/content/Intent;)V

    return-void
.end method

.method private callAppDoAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p0, "UI_OP_ACTION"

    .line 404
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 405
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "actionId"

    .line 406
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "actionPackageName"

    .line 407
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "actionArgs"

    .line 409
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 410
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.tencent.taiservice.ACTION_APP_STANDARD_BROADCAST_SEND"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 412
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "actionArgs"

    .line 413
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tencent/wecarbase/messagecenter/EventReceiver;
    .locals 1

    .line 52
    sget-object v0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->INSTANCE:Lcom/tencent/wecarbase/messagecenter/EventReceiver;

    return-object v0
.end method

.method private handleAppBroadCastRecv(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method private handleAuthResult(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_has_auth"

    const/4 v1, 0x1

    .line 423
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 424
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/messagecenter/EventReceiver$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$3;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleFeedBackCenterOpenOrClose(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_open_or_close"

    const/4 v1, 0x0

    .line 518
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 519
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/messagecenter/EventReceiver$10;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$10;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handlePushEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "push_content"

    .line 102
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 103
    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 107
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    invoke-direct {p0, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->pushToOther(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, -0x1

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "highway"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "popwindow_push"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v3, "park"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "mini_program_push"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "toast_push"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_5
    const-string v3, "h5_push"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_6
    const-string v3, "tts_push"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_7
    const-string v3, "weixin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_8
    const-string v3, "onlife"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_9
    const-string v3, "account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_a
    const-string v3, "config"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 315
    invoke-direct {p0, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->pushToOther(Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :pswitch_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 188
    iget-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->TAG:Ljava/lang/String;

    const-string p2, "--receive webapp push msg--"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->getInstance()Lcom/tencent/wecarbase/client/applet/AppletNotify;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/wecarbase/client/applet/AppletNotify;->handleMessage(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 181
    :pswitch_1
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 182
    iget-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->TAG:Ljava/lang/String;

    const-string p2, "--receive onlife push msg--"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;->getInstance()Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/wecarbase/client/onlife/OnlifeNotify;->handleMessage(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 175
    :pswitch_2
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 176
    iget-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->TAG:Ljava/lang/String;

    const-string p2, "--receive highway push msg--"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/tencent/wecarbase/client/highway/HighwayNotify;->getInstance()Lcom/tencent/wecarbase/client/highway/HighwayNotify;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/wecarbase/client/highway/HighwayNotify;->handleMessage(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 168
    :pswitch_3
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->isMainAppProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 170
    iget-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->TAG:Ljava/lang/String;

    const-string p2, "--receive park push msg--"

    invoke-static {p1, p2}, Lcom/tencent/wecarbase/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/tencent/wecarbase/client/park/ParkNotify;->getInstance()Lcom/tencent/wecarbase/client/park/ParkNotify;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/wecarbase/client/park/ParkNotify;->handleMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 319
    iget-object p0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    :pswitch_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_a
        -0x462c75d3 -> :sswitch_9
        -0x3c554aa5 -> :sswitch_8
        -0x2f2e7d9e -> :sswitch_7
        -0x2bf81a1a -> :sswitch_6
        -0x2297acb4 -> :sswitch_5
        -0x19ec6dce -> :sswitch_4
        -0x1416f923 -> :sswitch_3
        0x3463ea -> :sswitch_2
        0xbafe318 -> :sswitch_1
        0x3691720d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private handleQQBind(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_tx_account"

    .line 531
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/TxAccount;

    .line 532
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/messagecenter/EventReceiver$11;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$11;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/TxAccount;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleQQUnbind(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_tx_account"

    .line 544
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/TxAccount;

    .line 545
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/messagecenter/EventReceiver$12;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$12;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/TxAccount;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleQQUpdate(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "extra_old_qq_account"

    .line 557
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarbase/model/TxAccount;

    const-string v1, "extra_new_qq_account"

    .line 558
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/TxAccount;

    .line 559
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarbase/messagecenter/EventReceiver$13;

    invoke-direct {v2, p0, v0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$13;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/TxAccount;Lcom/tencent/wecarbase/model/TxAccount;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleRomBroadCastRecv(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 368
    :try_start_0
    invoke-static {p1}, Lcom/tencent/wecarbase/utils/PackageUtils;->isWeCarBaseProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "KEY_TYPE"

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "UI_TYPE"

    .line 372
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "popwindow_push"

    .line 373
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "UI_DATA"

    .line 374
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "UI_OP_TYPE"

    .line 376
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 377
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7a25d5f

    if-eq v3, v4, :cond_3

    const v4, 0x35dafd

    if-eq v3, v4, :cond_2

    const v1, 0x63a3b28a

    if-eq v3, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "show"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_3
    const-string v1, "doAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 381
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->callAppDoAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 398
    iget-object p0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/wecarbase/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWXBind(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_tx_account"

    .line 463
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/TxAccount;

    .line 464
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/messagecenter/EventReceiver$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$6;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/TxAccount;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleWXBindActivityOpenOrClose(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_open_or_close"

    const/4 v1, 0x0

    .line 505
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 506
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/messagecenter/EventReceiver$9;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$9;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleWXUnbind(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_tx_account"

    .line 476
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/TxAccount;

    .line 477
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/messagecenter/EventReceiver$7;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$7;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/TxAccount;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleWXUpdate(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "extra_old_wx_account"

    .line 490
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarbase/model/TxAccount;

    const-string v1, "extra_new_wx_account"

    .line 491
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/TxAccount;

    .line 492
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$8;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/TxAccount;Lcom/tencent/wecarbase/model/TxAccount;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleWeCarIdChanged(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "extra_old_wecar_account"

    .line 449
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/wecarbase/model/WeCarAccount;

    const-string v1, "extra_new_wecar_account"

    .line 450
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/WeCarAccount;

    .line 451
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarbase/messagecenter/EventReceiver$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$5;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/WeCarAccount;Lcom/tencent/wecarbase/model/WeCarAccount;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleWeCarIdRegistered(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_wecar_account"

    .line 436
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tencent/wecarbase/model/WeCarAccount;

    .line 437
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/tencent/wecarbase/messagecenter/EventReceiver$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$4;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/model/WeCarAccount;)V

    invoke-virtual {v0, v1}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushToOther(Ljava/lang/String;)V
    .locals 3

    .line 325
    invoke-static {}, Lcom/tencent/wecarbase/client/CloudManager;->getInstance()Lcom/tencent/wecarbase/client/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wecarbase/client/CloudManager;->getPushListener()Lcom/tencent/wecarbase/client/PushListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/tencent/wecarbase/common/thread/TAIThreadPoolProxyFactory;->getFixedThreadPoolProxy()Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;

    move-result-object v1

    new-instance v2, Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$1;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;Lcom/tencent/wecarbase/client/PushListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/wecarbase/common/thread/ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showCommonUI(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, "popwindow_push"

    .line 340
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;

    move-result-object p2

    new-instance v0, Lcom/tencent/wecarbase/messagecenter/EventReceiver$2;

    invoke-direct {v0, p0}, Lcom/tencent/wecarbase/messagecenter/EventReceiver$2;-><init>(Lcom/tencent/wecarbase/messagecenter/EventReceiver;)V

    invoke-virtual {p2, p3, p1, v0}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->showPopupWindow(Landroid/content/Context;Lorg/json/JSONObject;Lcom/tencent/wecarbase/taibaseui/commonui/ICommonUIViewListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "toast_push"

    .line 360
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 361
    invoke-static {}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->getInstance()Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lcom/tencent/wecarbase/taibaseui/commonui/CommonUIManager;->showToast(Landroid/content/Context;Lorg/json/JSONObject;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.tencent.wecarcloud.PUSH"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_AUTH_RESULT"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_WECAR_ID_REGISTERED"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_WECAR_ID_CHANGED"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_WX_BIND"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_WX_UNBIND"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_WX_UPDATE"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_WX_PAGE_OPEN_OR_CLOSE"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_FEED_BACK_CENT_OPEN_OR_CLOSE"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_QQ_BIND"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_QQ_UNBIND"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.wecarbase.ACTION_QQ_UPDATE"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.taiservice.ACTION_ROM_STANDARD_BROADCAST_RECV"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.taiservice.ACTION_APP_STANDARD_BROADCAST_RECV"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mDynamicReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    iput-object p1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized registerSimpleEventListener(Lcom/tencent/wecarbase/client/SimpleEventListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mSimpleEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mSimpleEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0

    throw p1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mDynamicReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mDynamicReceiver:Lcom/tencent/wecarbase/messagecenter/EventReceiver$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object p0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mSimpleEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public declared-synchronized unregisterSimpleEventListener(Lcom/tencent/wecarbase/client/SimpleEventListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mSimpleEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tencent/wecarbase/messagecenter/EventReceiver;->mSimpleEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit p0

    throw p1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
