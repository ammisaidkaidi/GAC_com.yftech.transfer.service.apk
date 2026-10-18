.class public Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;
.super Ljava/lang/Object;
.source "BNRemoteVistor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor$LayzerHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;
    .locals 1

    .line 23
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor$LayzerHolder;->access$0()Lcom/baidu/navisdk/hudsdk/client/BNRemoteVistor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 0

    .line 93
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;)V
    .locals 7

    .line 50
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;)V

    return-void
.end method

.method public isConnect()Z
    .locals 0

    .line 85
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->isConnect()Z

    move-result p0

    return p0
.end method

.method public open()V
    .locals 0

    .line 76
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->open()V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->open(Ljava/lang/String;)V

    return-void
.end method

.method public setServerIPAddr(Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->setServerIPAddr(Ljava/lang/String;)V

    return-void
.end method

.method public setShowLog(Z)V
    .locals 0

    .line 100
    sput-boolean p1, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->LOGGABLE:Z

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 58
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->unInit()V

    return-void
.end method
