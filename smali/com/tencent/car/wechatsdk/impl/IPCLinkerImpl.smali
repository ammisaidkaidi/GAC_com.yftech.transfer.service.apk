.class public Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;
.super Ljava/lang/Object;
.source "IPCLinkerImpl.java"

# interfaces
.implements Lcom/tencent/car/wechatsdk/ipcservice/IPCLinker;


# static fields
.field public static final ACTION_WECHAT_SERVICE:Ljava/lang/String; = "com.tencent.car.sdk.service.WeChatService"

.field private static final TAG:Ljava/lang/String; = "IPCLinkerImpl"


# instance fields
.field private volatile isConnected:Z

.field private mBinder:Landroid/os/IBinder;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->isConnected:Z

    return p0
.end method

.method static synthetic access$102(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->isConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;)Landroid/os/IBinder;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method


# virtual methods
.method public getConnectedState()Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->isConnected:Z

    return p0
.end method

.method public linkRemoteService(Landroid/content/Context;Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$1;-><init>(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;)V

    iput-object v0, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->mConnection:Landroid/content/ServiceConnection;

    .line 79
    :cond_0
    sget-object v0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->TAG:Ljava/lang/String;

    const-string v1, "start bind service"

    invoke-static {v0, v1}, Lcom/tencent/car/wechatsdk/utils/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.car.sdk.service.WeChatService"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.tencent.mm"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 85
    iget-object p1, p0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl$2;-><init>(Lcom/tencent/car/wechatsdk/impl/IPCLinkerImpl;Lcom/tencent/car/wechatsdk/ipcservice/IPCLinkCallback;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
