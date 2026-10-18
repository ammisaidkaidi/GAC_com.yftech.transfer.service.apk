.class public Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;
.super Ljava/lang/Object;
.source "WeCarInfoSimulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "WeCarInfoSimulator"

.field public static final WECAR_SIMULATOR_ACTION:Ljava/lang/String; = "com.tencent.wecarsimlator.action"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyInputListener:Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenr:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

.field private mSimulatorReceiver:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListenr:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 43
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mKeyInputListener:Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;

    .line 48
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mSimulatorReceiver:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListenr:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 43
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mKeyInputListener:Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;

    .line 48
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mSimulatorReceiver:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->getStringObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListenr:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;)Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mKeyInputListener:Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;

    return-object p0
.end method

.method private getStringObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "UTF-8"

    .line 304
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 309
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 311
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p1, p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p0

    .line 316
    :goto_0
    sget-object p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1
.end method

.method private registerBroadcastReceiver()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.tencent.wecarsimlator.action"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mSimulatorReceiver:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;-><init>(Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$1;)V

    iput-object v1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mSimulatorReceiver:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;

    .line 122
    :cond_1
    sget-object v1, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimulatorReceiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mSimulatorReceiver:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mSimulatorReceiver:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mSimulatorReceiver:Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator$SimulatorBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListenr:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 67
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->registerBroadcastReceiver()V

    return-void
.end method

.method public attach(Landroid/content/Context;Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mKeyInputListener:Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;

    .line 80
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->registerBroadcastReceiver()V

    return-void
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListenr:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    .line 135
    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mKeyInputListener:Lcom/tencent/wecarbase/carinfo/keyinput/IWeCarKeyInputListener;

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->unregisterBroadcastReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public registerListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListenr:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    if-eqz p1, :cond_4

    .line 94
    :cond_3
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->registerBroadcastReceiver()V

    :cond_4
    return-void
.end method

.method public unregisterListener(Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->mListenr:Lcom/tencent/wecarbase/carinfo/IWeCarInfoListener;

    if-nez p1, :cond_4

    .line 109
    invoke-direct {p0}, Lcom/tencent/wecarbase/carinfo/WeCarInfoSimulator;->unregisterBroadcastReceiver()V

    :cond_4
    return-void
.end method
