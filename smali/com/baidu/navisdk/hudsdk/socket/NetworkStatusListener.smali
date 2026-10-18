.class public Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusListener.java"


# static fields
.field public static final MSG_TYPE_NET_WORK_CHANGE:I = 0x15b3

.field private static final outboxHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->outboxHandlers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static dispatchMessage(III)V
    .locals 3

    .line 37
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->outboxHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 38
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->outboxHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 42
    invoke-static {v1, p0, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static registerMessageHandler(Landroid/os/Handler;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 25
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->outboxHandlers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->outboxHandlers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static unRegisterMessageHandler(Landroid/os/Handler;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 31
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->outboxHandlers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->outboxHandlers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    const-string p0, "connectivity"

    .line 55
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 54
    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    .line 69
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move p1, p0

    goto :goto_1

    :cond_1
    move p0, p1

    .line 86
    :goto_1
    :pswitch_1
    sget p2, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mWifiState:I

    if-ne p1, p2, :cond_2

    .line 87
    sput p0, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mConnectState:I

    return-void

    .line 89
    :cond_2
    sget p2, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mWifiState:I

    if-ne p1, p2, :cond_3

    sget p2, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mConnectState:I

    if-eq p0, p2, :cond_4

    .line 90
    :cond_3
    sput p1, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mWifiState:I

    .line 91
    sput p0, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mConnectState:I

    const/16 p2, 0x15b3

    .line 93
    sget v0, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mConnectState:I

    invoke-static {p2, p1, v0}, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->dispatchMessage(III)V

    .line 95
    :cond_4
    sput p1, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mWifiState:I

    .line 96
    sput p0, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->mConnectState:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
