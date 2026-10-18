.class public Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;
.super Ljava/lang/Object;
.source "BNSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$LayzerHolder;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVer:Ljava/lang/String;

.field private mAuthListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

.field private mCheckAuthRunnable:Ljava/lang/Runnable;

.field private mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

.field private mConnectMgrHandler:Landroid/os/Handler;

.field private mConnectMgrThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mHeartAliveRunnable:Ljava/lang/Runnable;

.field private mIsConnected:Z

.field private mIsLBSAuthSuccess:Z

.field private mIsReConnecting:Z

.field private mIsRetryConnectNum:I

.field private mReader:Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;

.field private mSDKIsInit:Z

.field private mServerType:I

.field private mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

.field private mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsRetryConnectNum:I

    .line 44
    new-instance v1, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$1;

    invoke-direct {v1, p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$1;-><init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    iput-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mCheckAuthRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v1, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;

    invoke-direct {v1, p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$2;-><init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    iput-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mHeartAliveRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    .line 71
    new-instance v1, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-direct {v1}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;-><init>()V

    iput-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    .line 73
    iput v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mServerType:I

    .line 75
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSDKIsInit:Z

    .line 76
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsLBSAuthSuccess:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    return-object p0
.end method

.method static synthetic access$10(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;I)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->onSendData(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;Landroid/os/Message;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->onAuthResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->onPong()V

    return-void
.end method

.method static synthetic access$13(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->onClose()V

    return-void
.end method

.method static synthetic access$14(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAuthListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    return-object p0
.end method

.method static synthetic access$3(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    return-object p0
.end method

.method static synthetic access$4(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsLBSAuthSuccess:Z

    return-void
.end method

.method static synthetic access$5(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->onNetworkChanged()V

    return-void
.end method

.method static synthetic access$6(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->initConnect()V

    return-void
.end method

.method static synthetic access$7(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;I)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->reConnect(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V
    .locals 0

    .line 380
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->connectForAuthFailed()V

    return-void
.end method

.method static synthetic access$9(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;ILjava/lang/Object;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->onReceiveData(ILjava/lang/Object;)V

    return-void
.end method

.method private close()V
    .locals 2

    const-string v0, "BNRemote"

    const-string v1, "close()"

    .line 449
    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mReader:Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mReader:Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->quit()V

    .line 452
    iput-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mReader:Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->quit()V

    .line 457
    iput-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->close()V

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsConnected:Z

    .line 462
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsReConnecting:Z

    .line 464
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mCheckAuthRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mHeartAliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    :cond_2
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->stop()V

    return-void
.end method

.method private connect()I
    .locals 6

    .line 314
    iget-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsConnected:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAppVer:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    .line 323
    :cond_1
    iget v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mServerType:I

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->open(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->open(I)I

    move-result v0

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    iget v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mServerType:I

    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->open(I)I

    move-result v0

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 332
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v2}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 333
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->start()V

    .line 334
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->createReader()V

    .line 335
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->createWriter()V

    .line 337
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAppName:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAppVer:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->sendAuth(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 339
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mCheckAuthRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    :cond_4
    iput-boolean v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsConnected:Z

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method private connectForAuthFailed()V
    .locals 2

    .line 381
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close()V

    .line 383
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->connect()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x192

    const-string v1, "server is not open"

    .line 385
    invoke-virtual {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    invoke-interface {p0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onConnected()V

    :goto_0
    return-void
.end method

.method private createReader()V
    .locals 3

    .line 473
    new-instance v0, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;

    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;-><init>(Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mReader:Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;

    .line 474
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mReader:Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/socket/SocketReadThread;->start()V

    return-void
.end method

.method private createWriter()V
    .locals 4

    .line 478
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "writer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 480
    new-instance v1, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    iget-object v3, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2, v3}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;-><init>(Landroid/os/Looper;Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    return-void
.end method

.method public static getInstance()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;
    .locals 1

    .line 84
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$LayzerHolder;->access$0()Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;

    move-result-object v0

    return-object v0
.end method

.method private initConnect()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->getServerIPAddr()Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 365
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "127.0.0.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x197

    const-string v1, "wifi is not connected"

    .line 366
    invoke-virtual {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    const-string p0, "BNRemote"

    const-string v0, "wifi is not connected"

    .line 367
    invoke-static {p0, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->connect()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x192

    const-string v1, "server is not open"

    .line 374
    invoke-virtual {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    invoke-interface {p0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onConnected()V

    :goto_0
    return-void
.end method

.method private onAuthResponse(Landroid/os/Message;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mCheckAuthRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->resetPortPoolIndex()V

    .line 265
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->sendPing()V

    .line 267
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    if-eqz v0, :cond_1

    .line 268
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;

    invoke-interface {p0, p1}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onAuth(Lcom/baidu/navisdk/hudsdk/BNRemoteMessage$BNRGAuthSuccess;)V

    goto :goto_0

    :cond_0
    const-string p1, "BNRemote"

    const-string v0, "auth FAILED"

    .line 271
    invoke-static {p1, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BNRemote"

    const-string v0, "auth FAILED"

    .line 272
    invoke-static {p1, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x191

    const-string v0, "auth failed"

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onClose()V
    .locals 2

    const-string v0, "server exit"

    const/16 v1, 0x190

    .line 259
    invoke-virtual {p0, v1, v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    return-void
.end method

.method private onNetworkChanged()V
    .locals 2

    const-string v0, ""

    .line 348
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v1}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->getServerIPAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/navisdk/hudsdk/socket/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close()V

    .line 355
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->initConnect()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x197

    const-string v1, "wifi is not connected"

    .line 358
    invoke-virtual {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onPong()V
    .locals 1

    const-string p0, "BNRemote"

    const-string v0, "onPong()"

    .line 254
    invoke-static {p0, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "BNRemote"

    const-string v0, "onPong()"

    .line 255
    invoke-static {p0, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onReceiveData(ILjava/lang/Object;)V
    .locals 2

    const/16 v0, 0x5001

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const-string p0, "BNRemote"

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "read timeout!!! "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x13

    if-ne p1, v1, :cond_3

    .line 231
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const-string p0, "BNRemote"

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "read error!!! "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x400

    const/16 v1, 0x196

    if-ne p1, v0, :cond_4

    const-string p1, "protocol error"

    .line 237
    invoke-virtual {p0, v1, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    const-string p0, "BNRemote"

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "protocol error!!! "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x401

    if-ne p1, v0, :cond_5

    const-string p1, "data is too long!!!"

    .line 241
    invoke-virtual {p0, v1, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    const-string p0, "BNRemote"

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "data is too long!!!  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x12

    if-ne p1, v0, :cond_6

    const/16 p1, 0x192

    const-string p2, "server error"

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    const-string p0, "BNRemote"

    const-string p1, "server error"

    .line 246
    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/16 p0, 0x10

    if-ne p1, p0, :cond_7

    .line 249
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    move-result-object p0

    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->parseBinaryData([B)V

    :cond_7
    :goto_0
    return-void
.end method

.method private onSendData(I)V
    .locals 2

    const/16 v0, 0x5001

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 210
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 214
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x400

    if-ne p1, v0, :cond_2

    const/16 p1, 0x196

    const-string v0, "protocol error"

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string p0, "BNRemote"

    const-string p1, "BNRemoteVistor..........onSend()....SOCKET_SEND_SUCCESS"

    .line 219
    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private reConnect(I)V
    .locals 4

    .line 392
    iget-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsReConnecting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BNRemote"

    const-string v1, "reConnect() START"

    .line 396
    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BNRemote"

    const-string v1, "reConnect() START"

    .line 397
    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsReConnecting:Z

    .line 399
    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v1}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->resetPortPoolIndex()V

    .line 400
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close()V

    const/4 v1, 0x0

    .line 401
    iput v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsRetryConnectNum:I

    .line 402
    :goto_0
    iget v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsRetryConnectNum:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->connect()I

    move-result v2

    if-nez v2, :cond_7

    .line 405
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    invoke-interface {v2}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onReConnected()V

    .line 406
    iput v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsRetryConnectNum:I

    .line 413
    :goto_1
    iget v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsRetryConnectNum:I

    if-lt v2, v3, :cond_6

    const-string v2, "BNRemote"

    const-string v3, "reConnect FAILED!"

    .line 414
    invoke-static {v2, v3}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    if-ne p1, v2, :cond_2

    const/16 p1, 0x193

    const-string v0, "read timeout"

    .line 416
    invoke-virtual {p0, p1, v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne p1, v0, :cond_3

    const/16 p1, 0x194

    const-string v0, "send timeout"

    .line 418
    invoke-virtual {p0, p1, v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    const/16 v2, 0x195

    if-ne p1, v0, :cond_4

    const-string p1, "send error"

    .line 420
    invoke-virtual {p0, v2, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x13

    if-ne p1, v0, :cond_5

    const-string p1, "read error"

    .line 422
    invoke-virtual {p0, v2, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x192

    const-string v0, "server error"

    .line 424
    invoke-virtual {p0, p1, v0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close(ILjava/lang/String;)V

    goto :goto_2

    .line 427
    :cond_6
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    invoke-interface {p1}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onConnected()V

    const-string p1, "BNRemote"

    const-string v0, "reConnect SUCCESS!"

    .line 428
    invoke-static {p1, v0}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_2
    iput-boolean v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsReConnecting:Z

    const-string p0, "BNRemote"

    const-string p1, "reConnect() END"

    .line 432
    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "BNRemote"

    const-string p1, "reConnect() END"

    .line 433
    invoke-static {p0, p1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_7
    iget v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsRetryConnectNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsRetryConnectNum:I

    goto :goto_0
.end method

.method private sendAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appVersion"

    .line 486
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "packageName"

    .line 487
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hudSdkVersion"

    const-string p2, "2.0"

    .line 488
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 491
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mWriter:Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;

    invoke-virtual {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/SocketWriteHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendPing()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mHeartAliveRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mHeartAliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mHeartAliveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 3

    const-string v0, "BNRemote"

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close reasonMsg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BNRemote"

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close reasonMsg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/navisdk/hudsdk/util/LogUtil;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->resetPortPoolIndex()V

    .line 440
    invoke-direct {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->close()V

    .line 441
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    invoke-interface {v0, p1, p2}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onClose(ILjava/lang/String;)V

    .line 445
    :cond_0
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->setServerIPAddr(Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;)V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSDKIsInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSDKIsInit:Z

    .line 96
    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAppName:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAppVer:Ljava/lang/String;

    .line 99
    iput p4, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mServerType:I

    .line 101
    iput-object p6, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    .line 103
    invoke-static {p1}, Lcom/baidu/navisdk/hudsdk/HUDModuleManager;->setContext(Landroid/content/Context;)V

    .line 105
    new-instance p1, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;

    invoke-direct {p1, p0}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$3;-><init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;)V

    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAuthListener:Lcom/baidu/lbsapi/auth/navisdkhud/LBSAuthManagerListener;

    .line 123
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "connect"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrThread:Landroid/os/HandlerThread;

    .line 124
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance p1, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;

    iget-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$4;-><init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    .line 169
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    move-result-object p1

    iget-object p2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    invoke-virtual {p1, p5, p2}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->init(Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnRGInfoEventCallback;Landroid/os/Handler;)V

    .line 170
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/baidu/navisdk/hudsdk/socket/NetworkStatusListener;->registerMessageHandler(Landroid/os/Handler;)V

    .line 172
    new-instance p1, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$5;

    const-string p2, "HUD Auth Thread"

    invoke-direct {p1, p0, p2}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$5;-><init>(Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient$5;->start()V

    return-void
.end method

.method public isConnect()Z
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {p0}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->isConnected()Z

    move-result p0

    return p0
.end method

.method public open()V
    .locals 2

    .line 293
    iget-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsLBSAuthSuccess:Z

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    if-eqz v0, :cond_0

    .line 295
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    const/16 v0, 0x199

    const-string v1, "lbs auth is not finished"

    invoke-interface {p0, v0, v1}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onClose(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    const/16 v1, 0x5000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    iget-boolean v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsLBSAuthSuccess:Z

    if-nez v0, :cond_1

    .line 280
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    if-eqz p1, :cond_0

    .line 281
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    const/16 p1, 0x199

    const-string v0, "lbs auth is not finished"

    invoke-interface {p0, p1, v0}, Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;->onClose(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {v0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->setServerIPAddr(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 288
    iget-object p1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    const/16 v0, 0x5000

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public setServerIPAddr(Ljava/lang/String;)V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    invoke-virtual {p0, p1}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->setServerIPAddr(Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mContext:Landroid/content/Context;

    .line 184
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAppName:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mAppVer:Ljava/lang/String;

    const/4 v1, 0x0

    .line 186
    iput v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mServerType:I

    .line 188
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectCallback:Lcom/baidu/navisdk/hudsdk/client/HUDSDkEventCallback$OnConnectCallback;

    .line 190
    iput-boolean v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsConnected:Z

    .line 191
    iput-boolean v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mIsReConnecting:Z

    .line 193
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 195
    iget-object v2, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 197
    :cond_0
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrThread:Landroid/os/HandlerThread;

    .line 198
    iput-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mConnectMgrHandler:Landroid/os/Handler;

    .line 199
    iget-object v0, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSocket:Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/baidu/navisdk/hudsdk/socket/BNRemoteClientSocket;->setServerIPAddr(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->getInstance()Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/navisdk/hudsdk/socket/SocketDataParser;->unInit()V

    .line 203
    iput-boolean v1, p0, Lcom/baidu/navisdk/hudsdk/socket/BNSocketClient;->mSDKIsInit:Z

    return-void
.end method
